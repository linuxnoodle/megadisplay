//! MegaDisplay driver — Linux/Wayland replacement for SuperDisplay.
//!
//! Creates a virtual Wayland output, encodes the framebuffer as H.264,
//! streams it to the Android tablet via AOAP USB, and receives
//! touch/pen/keyboard input for injection via libei/uinput.

use anyhow::{anyhow, bail, Context, Result};
use clap::Parser;
use megadisplay_protocol::DataType;
use std::sync::mpsc;
use std::time::{Duration, Instant};
use tracing::{debug, error, info, warn};

mod transport;
mod video;
mod input;
mod display;
mod tcp;
#[cfg(feature = "wayland")]
mod wayland;
#[cfg(feature = "input-inject")]
mod inject;

#[derive(Debug, Parser)]
#[command(name = "megadisplay-driver", version, about)]
struct Cli {
    #[arg(short, long, default_value = "info")]
    log: String,

    #[arg(long, default_value = "1920")]
    width: u32,

    #[arg(long, default_value = "1200")]
    height: u32,

    #[arg(long, default_value = "60")]
    fps: u32,

    #[arg(long, default_value = "8000")]
    bitrate: u32,

    /// Use TCP transport on the given port instead of USB (for testing)
    #[arg(long)]
    tcp: Option<u16>,

    /// Create a headless Wayland output via hyprctl before starting
    #[arg(long)]
    create_output: bool,
}

fn main() -> Result<()> {
    let cli = Cli::parse();

    tracing_subscriber::fmt()
        .with_env_filter(&cli.log)
        .init();

    info!("MegaDisplay driver starting");
    info!("Target: {}x{} @ {}fps, {}kbps", cli.width, cli.height, cli.fps, cli.bitrate);

    if cli.create_output {
        match create_headless_output(cli.width, cli.height) {
            Ok(name) => info!("Created headless output: {}", name),
            Err(e) => warn!("Failed to create headless output: {} (continuing anyway)", e),
        }
    }

    let (tx_outgoing, rx_outgoing) = mpsc::channel::<Vec<u8>>();
    let (tx_incoming, rx_incoming) = mpsc::channel::<(DataType, Vec<u8>)>();

    if let Some(port) = cli.tcp {
        info!("Using TCP transport on port {}", port);
        let mut conn = tcp::listen_and_accept(port)
            .context("Failed to establish TCP connection")?;
        let peer_version = tcp::do_handshake(&mut conn)?;
        info!("Connected! Peer protocol version: {}", peer_version);
        let (reader, writer) = conn.split();
        run_session(reader, writer, tx_outgoing, rx_outgoing, tx_incoming, rx_incoming, cli)?;
    } else {
        info!("Connecting to Android device via AOAP...");
        let (conn, peer_version) = transport::connect_and_handshake()
            .context("Failed to establish AOAP connection")?;
        info!("Connected! Peer protocol version: {}", peer_version);
        let (reader, writer) = conn.split();
        run_session(reader, writer, tx_outgoing, rx_outgoing, tx_incoming, rx_incoming, cli)?;
    }

    info!("Driver shutting down");
    Ok(())
}

fn run_session<R: transport::TransportRead + 'static, W: transport::TransportWrite + 'static>(
    reader: R,
    writer: W,
    tx_outgoing: mpsc::Sender<Vec<u8>>,
    rx_outgoing: mpsc::Receiver<Vec<u8>>,
    tx_incoming: mpsc::Sender<(DataType, Vec<u8>)>,
    rx_incoming: mpsc::Receiver<(DataType, Vec<u8>)>,
    cli: Cli,
) -> Result<()> {
    let _display = display::VirtualDisplay::new(cli.width, cli.height, cli.fps)?;
    let mut input_emitter = input::InputEmitter::new(cli.width, cli.height)?;

    let (tx_video_data, rx_video_data) = mpsc::channel::<Vec<u8>>();
    let _video_handle = {
        let width = cli.width;
        let height = cli.height;
        let fps = cli.fps;
        let bitrate = cli.bitrate;
        let tx = tx_video_data.clone();
        std::thread::Builder::new()
            .name("video-capture".into())
            .spawn(move || {
                video_capture_loop(width, height, fps, bitrate, tx);
            })?
    };

    let _read_handle = {
        let tx = tx_incoming.clone();
        std::thread::Builder::new()
            .name("transport-read".into())
            .spawn(move || {
                let mut reader = reader;
                read_loop(&mut reader, tx);
            })?
    };

    let _write_handle = {
        std::thread::Builder::new()
            .name("transport-write".into())
            .spawn(move || {
                let mut writer = writer;
                write_loop(&mut writer, rx_outgoing, rx_video_data);
            })?
    };

    let mut fragment_writer = transport::FragmentWriter::new();
    let mut configured = false;
    let frame_interval = Duration::from_secs_f64(1.0 / cli.fps as f64);

    info!("Entering main event loop...");

    loop {
        let timeout = if configured {
            frame_interval
        } else {
            Duration::from_secs(1)
        };

        match rx_incoming.recv_timeout(timeout) {
            Ok((data_type, payload)) => {
                match data_type {
                    DataType::Configure => {
                        info!("Received Configure from Android ({} bytes)", payload.len());
                        let resp = build_configure_response(cli.width, cli.height);
                        let fragment = fragment_writer.build_fragment(0, &resp);
                        let _ = tx_outgoing.send(fragment.to_vec());

                        if !configured {
                            info!("Session configured: {}x{}", cli.width, cli.height);
                            configured = true;
                        }
                    }
                    DataType::Touch => {
                        if let Err(e) = input_emitter.process_touch(&payload) {
                            warn!("Touch processing error: {}", e);
                        }
                    }
                    DataType::Pen => {
                        if let Err(e) = input_emitter.process_pen(&payload) {
                            warn!("Pen processing error: {}", e);
                        }
                    }
                    DataType::Keyboard => {
                        if let Err(e) = input_emitter.process_keyboard(&payload) {
                            warn!("Keyboard processing error: {}", e);
                        }
                    }
                    DataType::FrameDone => {
                        if let Err(e) = input_emitter.process_frame_done(&payload) {
                            warn!("FrameDone processing error: {}", e);
                        }
                    }
                    DataType::Stop => {
                        info!("Android sent Stop, ending session");
                        break;
                    }
                    DataType::Error => {
                        let code = payload.first().copied().unwrap_or(0);
                        error!("Android error: code={}", code);
                        if code != 4 && code != 7 {
                            break;
                        }
                    }
                    DataType::State => {
                        debug!("Keepalive from Android");
                    }
                    DataType::Scale => {
                        debug!("Scale message from Android ({} bytes)", payload.len());
                    }
                    DataType::InputConfig => {
                        debug!("InputConfig from Android");
                    }
                    DataType::InputKey => {
                        debug!("InputKey from Android");
                    }
                    DataType::Command => {
                        debug!("Command from Android");
                    }
                    DataType::Unlock => {
                        info!("License challenge from Android — skipping (no license check)");
                    }
                    _ => {
                        debug!("Unhandled DataType: {:?} ({} bytes)", data_type, payload.len());
                    }
                }
            }
            Err(mpsc::RecvTimeoutError::Timeout) if configured => {
                continue;
            }
            Err(mpsc::RecvTimeoutError::Timeout) => {
                continue;
            }
            Err(mpsc::RecvTimeoutError::Disconnected) => {
                warn!("Read thread disconnected");
                break;
            }
        }
    }

    info!("Driver shutting down");
    Ok(())
}

fn build_configure_response(width: u32, height: u32) -> Vec<u8> {
    let mut buf = Vec::with_capacity(21);
    buf.push(DataType::Configure as u8);
    buf.extend_from_slice(&(width as i32).to_le_bytes());
    buf.extend_from_slice(&(height as i32).to_le_bytes());
    buf.extend_from_slice(&(width as i32).to_le_bytes());
    buf.extend_from_slice(&(height as i32).to_le_bytes());
    buf.extend_from_slice(&0i32.to_le_bytes());
    buf
}

fn create_headless_output(width: u32, height: u32) -> Result<String> {
    use std::process::Command;

    let mode = format!("{}x{}@60", width, height);

    let output = Command::new("hyprctl")
        .args(["output", "create", "headless", &mode])
        .output()
        .context("Failed to run hyprctl")?;

    if !output.status.success() {
        let stderr = String::from_utf8_lossy(&output.stderr);
        bail!("hyprctl output create failed: {}", stderr);
    }

    let stdout = String::from_utf8_lossy(&output.stdout).trim().to_string();
    info!("hyprctl output create: {}", stdout);

    std::thread::sleep(Duration::from_millis(500));

    Ok(stdout)
}

fn video_capture_loop(
    width: u32,
    height: u32,
    fps: u32,
    bitrate: u32,
    tx: mpsc::Sender<Vec<u8>>,
) {
    info!("Video capture thread started");

    let mut display = match display::VirtualDisplay::new(width, height, fps) {
        Ok(d) => d,
        Err(e) => {
            error!("Failed to create display: {}", e);
            return;
        }
    };

    let mut encoder = match video::VideoEncoder::new(width, height) {
        Ok(e) => e,
        Err(e) => {
            error!("Failed to create encoder: {}", e);
            return;
        }
    };

    if let Err(e) = encoder.start(bitrate, fps) {
        error!("Failed to start encoder: {}", e);
        return;
    }

    let frame_interval = Duration::from_secs_f64(1.0 / fps as f64);
    let mut frame_buf = Vec::new();
    let mut fragment_writer = transport::FragmentWriter::new();
    let mut frame_count = 0u64;

    loop {
        let frame_start = Instant::now();

        let capture_stride = match display.capture_frame_bgra(&mut frame_buf) {
            Ok(s) => s,
            Err(e) => {
                warn!("Frame capture failed: {}", e);
                std::thread::sleep(frame_interval);
                continue;
            }
        };

        let nal_data = match encoder.encode_bgra(&frame_buf, capture_stride) {
            Ok(d) => d,
            Err(e) => {
                warn!("Encode failed: {}", e);
                std::thread::sleep(frame_interval);
                continue;
            }
        };

        if !nal_data.is_empty() {
            let fragment = fragment_writer.build_frame_fragment(1, &nal_data);
            if tx.send(fragment.to_vec()).is_err() {
                break;
            }
            frame_count += 1;
            if frame_count % 60 == 0 {
                debug!("Encoded {} frames", frame_count);
            }
        }

        let elapsed = frame_start.elapsed();
        if elapsed < frame_interval {
            std::thread::sleep(frame_interval - elapsed);
        }
    }
}

fn read_loop<R: transport::TransportRead>(
    reader: &mut R,
    tx: mpsc::Sender<(DataType, Vec<u8>)>,
) {
    let mut reader_buf = transport::MessageReader::new();

    loop {
        match reader.recv(65536) {
            Ok(data) if data.is_empty() => {
                info!("Transport: device disconnected");
                break;
            }
            Ok(data) => {
                for (data_type, payload) in reader_buf.feed(&data) {
                    if tx.send((data_type, payload)).is_err() {
                        return;
                    }
                }
            }
            Err(e) => {
                warn!("Transport read error: {}", e);
                break;
            }
        }
    }
}

fn write_loop<W: transport::TransportWrite>(
    writer: &mut W,
    rx_outgoing: mpsc::Receiver<Vec<u8>>,
    rx_video: mpsc::Receiver<Vec<u8>>,
) {
    use mpsc::TryRecvError;

    loop {
        match rx_outgoing.try_recv() {
            Ok(data) => {
                if let Err(e) = writer.send(&data) {
                    warn!("Transport write error: {}", e);
                    break;
                }
            }
            Err(TryRecvError::Empty) => {}
            Err(TryRecvError::Disconnected) => break,
        }

        match rx_video.try_recv() {
            Ok(data) => {
                if let Err(e) = writer.send(&data) {
                    warn!("Transport write error (video): {}", e);
                    break;
                }
            }
            Err(TryRecvError::Empty) => {}
            Err(TryRecvError::Disconnected) => break,
        }

        std::thread::sleep(Duration::from_micros(500));
    }
}
