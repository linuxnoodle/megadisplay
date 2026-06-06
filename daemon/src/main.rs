use anyhow::{Context, Result, bail};
use clap::Parser;
use megadisplay_protocol::{DataType, ERROR_WARN_BAD_RESOLUTION, ERROR_WARN_SOFTWARE_ENCODER};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::{Arc, Mutex, mpsc};
use std::time::{Duration, Instant};
use tracing::{debug, error, info, warn};

mod config;
mod display;
#[cfg(feature = "input-inject")]
mod inject;
mod input;
mod ipc;
mod tcp;
mod transport;
mod video;
#[cfg(feature = "wayland")]
mod wayland;

use config::Config;

#[derive(Debug, Parser, Clone)]
#[command(name = "megadisplayd", version, about)]
struct Cli {
    #[arg(short, long, default_value = "info")]
    log: String,

    #[arg(long)]
    no_ipc: bool,

    #[arg(long)]
    tcp: Option<u16>,

    #[arg(long)]
    trace: bool,
}

fn main() -> Result<()> {
    let cli = Cli::parse();

    let _trace_guard = if cli.trace {
        use tracing_subscriber::prelude::*;
        let (chrome_layer, guard) = tracing_chrome::ChromeLayerBuilder::new()
            .include_args(true)
            .build();
        tracing_subscriber::registry()
            .with(tracing_subscriber::EnvFilter::new(&cli.log))
            .with(tracing_subscriber::fmt::layer())
            .with(chrome_layer)
            .init();
        Some(guard)
    } else {
        tracing_subscriber::fmt().with_env_filter(&cli.log).init();
        None
    };

    info!("megadisplayd starting");

    let config = Arc::new(Mutex::new(Config::load()?));
    {
        let cfg = config.lock().unwrap();
        info!(
            "Config: {}x{} @ {}fps, {}kbps, scale {:.2} | output: {} | input: touch={} pen={} kb={}",
            cfg.video.width,
            cfg.video.height,
            cfg.video.fps,
            cfg.video.bitrate_kbps,
            cfg.video.encode_scale,
            cfg.output.name,
            cfg.input.touch,
            cfg.input.pen,
            cfg.input.keyboard,
        );
    }

    let ipc_server = ipc::IpcServer::new(Arc::clone(&config));
    let stats_handle = ipc_server.stats_handle();
    let status_handle = ipc_server.status_handle();
    let ipc_shutdown = ipc_server.shutdown_handle();
    let app_shutdown = Arc::new(AtomicBool::new(false));

    let socket_path = config.lock().unwrap().ipc_socket_path();

    let _ipc_thread = if !cli.no_ipc {
        let sp = socket_path.clone();
        Some(
            std::thread::Builder::new()
                .name("ipc".into())
                .spawn(move || {
                    if let Err(e) = ipc_server.run(&sp) {
                        error!("IPC server error: {}", e);
                    }
                })?,
        )
    } else {
        None
    };

    if let Some(port) = cli.tcp {
        info!("Using TCP transport on port {}", port);
        let mut conn =
            tcp::listen_and_accept(port).context("Failed to establish TCP connection")?;
        let peer_version = tcp::do_handshake(&mut conn)?;
        info!("Connected! Peer protocol version: {}", peer_version);
        let (reader, writer) = conn.split();
        let (tx_outgoing, rx_outgoing) = mpsc::channel::<Vec<u8>>();
        let (tx_incoming, rx_incoming) = mpsc::channel::<(DataType, Vec<u8>)>();
        run_session(
            reader,
            writer,
            tx_outgoing,
            rx_outgoing,
            tx_incoming,
            rx_incoming,
            Arc::clone(&config),
            stats_handle,
            Arc::clone(&app_shutdown),
            None,
        )?;
    } else {
        loop {
            if app_shutdown.load(Ordering::SeqCst) || ipc_shutdown.load(Ordering::SeqCst) {
                break;
            }

            info!("Connecting to Android device via AOAP...");
            match transport::connect_and_handshake() {
                Ok((conn, peer_version)) => {
                    info!("Connected! Peer protocol version: {}", peer_version);
                    let mut target_output_name = None;

                    {
                        let cfg = config.lock().unwrap().clone();
                        if cfg.output.create {
                            match create_headless_output(
                                &cfg.output.name,
                                cfg.video.width,
                                cfg.video.height,
                                cfg.output.scale,
                                cfg.video.refresh_hz,
                            ) {
                                Ok(name) => {
                                    info!("Created/updated headless output: {}", name);
                                    target_output_name = Some(name);
                                }
                                Err(e) => {
                                    warn!("Failed to create headless output: {} (continuing)", e);
                                }
                            }
                        }
                    }

                    {
                        let mut st = status_handle.lock().unwrap();
                        st.connected = true;
                        st.peer_version = peer_version;
                    }
                    {
                        let mut s = stats_handle.lock().unwrap();
                        *s = ipc::StatsSnapshot::default();
                    }
                    let (reader, writer) = conn.split();
                    let (tx_outgoing, rx_outgoing) = mpsc::channel::<Vec<u8>>();
                    let (tx_incoming, rx_incoming) = mpsc::channel::<(DataType, Vec<u8>)>();

                    let result = run_session(
                        reader,
                        writer,
                        tx_outgoing,
                        rx_outgoing,
                        tx_incoming,
                        rx_incoming,
                        Arc::clone(&config),
                        Arc::clone(&stats_handle),
                        Arc::clone(&app_shutdown),
                        target_output_name.clone(),
                    );
                    {
                        let mut st = status_handle.lock().unwrap();
                        st.connected = false;
                    }

                    if let Some(name) = target_output_name {
                        info!("Destroying headless output: {}", name);
                        let _ = std::process::Command::new("hyprctl")
                            .args(["output", "remove", &name])
                            .output();
                    }

                    if let Err(e) = result {
                        warn!("Session error: {}", e);
                    } else {
                        info!("Session ended normally");
                    }
                }
                Err(e) => {
                    debug!("Connection failed: {}", e);
                }
            }
            std::thread::sleep(Duration::from_secs(1));
        }
    }

    info!("megadisplayd shutting down");
    Ok(())
}

#[allow(clippy::too_many_arguments)]
fn run_session<R: transport::TransportRead + 'static, W: transport::TransportWrite + 'static>(
    reader: R,
    writer: W,
    tx_outgoing: mpsc::Sender<Vec<u8>>,
    rx_outgoing: mpsc::Receiver<Vec<u8>>,
    tx_incoming: mpsc::Sender<(DataType, Vec<u8>)>,
    rx_incoming: mpsc::Receiver<(DataType, Vec<u8>)>,
    config: Arc<Mutex<Config>>,
    stats: Arc<Mutex<ipc::StatsSnapshot>>,
    shutdown: Arc<AtomicBool>,
    output_name: Option<String>,
) -> Result<()> {
    let cfg = config.lock().unwrap().clone();
    let mut input_emitter = None;
    if cfg.input.pen || cfg.input.touch || cfg.input.keyboard {
        input_emitter = Some(input::InputEmitter::new(cfg.video.width, cfg.video.height)?);
        if let Some(ref name) = output_name {
            std::thread::sleep(Duration::from_millis(200));
            for device_name in &["megadisplay-touch", "megadisplay-pen"] {
                let key = format!("device[{}]:output", device_name);
                let _ = std::process::Command::new("hyprctl")
                    .args(["keyword", &key, name])
                    .output();
            }
        }
    }

    let (tx_video_data, rx_video_data) = mpsc::sync_channel::<Vec<u8>>(2);
    let video_kill_switch = Arc::new(AtomicBool::new(false));
    let video_idr_switch = Arc::new(AtomicBool::new(false));
    let mut _video_handle = None;

    let video_enabled = cfg.video.bitrate_kbps > 0;
    if video_enabled {
        let video_config = Arc::clone(&config);
        let tx = tx_video_data.clone();
        let kill_switch = video_kill_switch.clone();
        let idr_switch = video_idr_switch.clone();
        let video_output_name = output_name.clone();
        let stats_clone = Arc::clone(&stats);

        _video_handle = Some(
            std::thread::Builder::new()
                .name("video-capture".into())
                .spawn(move || {
                    video_capture_loop(
                        video_config,
                        video_output_name,
                        tx,
                        kill_switch,
                        idr_switch,
                        stats_clone,
                    );
                })?,
        );
    }

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

    drop(tx_incoming);

    let mut fragment_writer = transport::FragmentWriter::new();
    let mut configured = false;
    let initial_cfg = config.lock().unwrap().clone();
    let poll_interval = Duration::from_millis(50);
    #[allow(unused_assignments)]
    let mut cached_pen_cursor = false;
    let mut last_keepalive = Instant::now();
    let keepalive_interval = Duration::from_secs(1);

    loop {
        if shutdown.load(Ordering::SeqCst) {
            break;
        }

        {
            let current_cfg = config.lock().unwrap();
            cached_pen_cursor = current_cfg.input.pen_cursor;
            if current_cfg.video.width != initial_cfg.video.width
                || current_cfg.video.height != initial_cfg.video.height
                || current_cfg.video.refresh_hz != initial_cfg.video.refresh_hz
            {
                info!("Video dimensions or refresh rate changed, dropping session to reconfigure");
                break;
            }
        }

        if last_keepalive.elapsed() >= keepalive_interval {
            let fragment = fragment_writer.build_fragment(0, &[DataType::State as u8, 0]);
            let _ = tx_outgoing.send(fragment.to_vec());
            last_keepalive = Instant::now();
        }

        match rx_incoming.recv_timeout(poll_interval) {
            Ok((data_type, payload)) => match data_type {
                DataType::Configure => {
                    info!("Received Configure ({} bytes)", payload.len());
                    let cfg = config.lock().unwrap();
                    let resp = build_configure_response(cfg.video.width, cfg.video.height);
                    let fragment = fragment_writer.build_fragment(0, &resp);
                    let _ = tx_outgoing.send(fragment.to_vec());
                    if !configured {
                        info!(
                            "Session configured: {}x{}",
                            cfg.video.width, cfg.video.height
                        );
                        configured = true;
                    }
                    video_idr_switch.store(true, Ordering::SeqCst);
                }
                DataType::Touch => {
                    if let Some(ref mut emitter) = input_emitter
                        && let Err(e) = emitter.process_touch(&payload)
                    {
                        warn!("Touch: {}", e);
                    }
                }
                DataType::Pen => {
                    if let Some(ref mut emitter) = input_emitter
                        && let Err(e) = emitter.process_pen(&payload, cached_pen_cursor)
                    {
                        warn!("Pen: {}", e);
                    }
                }
                DataType::Keyboard => {
                    if let Some(ref mut emitter) = input_emitter
                        && let Err(e) = emitter.process_keyboard(&payload)
                    {
                        warn!("Keyboard: {}", e);
                    }
                }
                DataType::FrameDone => {
                    if let Some(ref mut emitter) = input_emitter {
                        let _ = emitter.process_frame_done(&payload);
                    }
                }
                DataType::Stop => {
                    info!("Android sent Stop");
                    break;
                }
                DataType::Error => {
                    let code = payload.first().copied().unwrap_or(0);
                    error!("Android error: code={}", code);
                    if code != ERROR_WARN_BAD_RESOLUTION && code != ERROR_WARN_SOFTWARE_ENCODER {
                        break;
                    }
                }
                DataType::State => {}
                DataType::LatencyReport => {
                    if payload.len() >= 4 {
                        let ms =
                            f32::from_le_bytes([payload[0], payload[1], payload[2], payload[3]]);
                        let mut s = stats.lock().unwrap();
                        s.input_latency_ms = ms;
                    }
                }
                DataType::Command => {
                    if let Ok(json) = serde_json::from_str::<serde_json::Value>(
                        &String::from_utf8_lossy(&payload),
                    ) {
                        let mut cfg = config.lock().unwrap();
                        if let Some(f) = json.get("fps").and_then(|v| v.as_u64()) {
                            cfg.video.fps = f as u32;
                        }
                        if let Some(b) = json.get("bitrate").and_then(|v| v.as_u64()) {
                            cfg.video.bitrate_kbps = b as u32;
                        }
                        let _ = cfg.save();
                    }
                }
                _ => {
                    debug!("Unhandled: {:?} ({} bytes)", data_type, payload.len());
                }
            },
            Err(mpsc::RecvTimeoutError::Timeout) => continue,
            Err(mpsc::RecvTimeoutError::Disconnected) => {
                warn!("Read thread disconnected");
                break;
            }
        }
    }

    video_kill_switch.store(true, Ordering::SeqCst);
    info!("Session ended");
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

fn create_headless_output(
    name: &str,
    width: u32,
    height: u32,
    scale: f32,
    refresh_hz: u32,
) -> Result<String> {
    use std::process::Command;
    let mode = format!("{}x{}@{}", width, height, refresh_hz);

    let monitors_out = Command::new("hyprctl")
        .args(["-j", "monitors"])
        .output()
        .unwrap();
    let monitors: serde_json::Value =
        serde_json::from_str(&String::from_utf8_lossy(&monitors_out.stdout)).unwrap_or_default();

    let pos = compute_position_below(&monitors, "DP-3", width);

    for monitor in monitors.as_array().unwrap_or(&vec![]) {
        if let Some(n) = monitor.get("name").and_then(|n| n.as_str())
            && n == name
        {
            info!("Re-using existing monitor: {}", n);
            let _ = Command::new("hyprctl")
                .args([
                    "keyword",
                    "monitor",
                    &format!("{},{},{}x{},{}", n, mode, pos.0, pos.1, scale),
                ])
                .output();
            return Ok(n.to_string());
        }
    }

    info!("Creating headless output {}...", name);
    let output = Command::new("hyprctl")
        .args(["output", "create", "headless", name])
        .output()?;
    if !output.status.success() {
        bail!("hyprctl output create failed");
    }
    std::thread::sleep(Duration::from_millis(500));
    let _ = Command::new("hyprctl")
        .args([
            "keyword",
            "monitor",
            &format!("{},{},{}x{},{}", name, mode, pos.0, pos.1, scale),
        ])
        .output();
    Ok(name.to_string())
}

fn compute_position_below(
    monitors: &serde_json::Value,
    _anchor: &str,
    our_width: u32,
) -> (i32, i32) {
    let monitors_array = monitors.as_array().unwrap_or(&vec![]).clone();
    
    for m in monitors_array {
        let name = m.get("name").and_then(|v| v.as_str()).unwrap_or("");
        if name == "MEGADISPLAY" { continue; } // Don't base position on ourselves
        
        let x = m.get("x").and_then(|v| v.as_i64()).unwrap_or(0) as i32;
        let y = m.get("y").and_then(|v| v.as_i64()).unwrap_or(0) as i32;
        let w = m.get("width").and_then(|v| v.as_i64()).unwrap_or(0) as i32;
        let h = m.get("height").and_then(|v| v.as_i64()).unwrap_or(0) as i32;
        let scale = m.get("scale").and_then(|v| v.as_f64()).unwrap_or(1.0) as f32;
        
        let scaled_w = (w as f32 / scale) as i32;
        let scaled_h = (h as f32 / scale) as i32;

        let cx = x + (scaled_w - our_width as i32) / 2;
        // Align to avoid fractional rounding issues in hyprland
        let cx = (cx as f32 / 100.0).round() as i32 * 100;
        let cy = (y + scaled_h as i32) as f32;
        let cy = (cy / 100.0).ceil() as i32 * 100;

        info!("Positioning headless monitor below {}: {}x{}", name, cx, cy);
        return (cx, cy);
    }

    (0, 0)
}

fn video_capture_loop(
    config: Arc<Mutex<Config>>,
    output_name: Option<String>,
    tx: mpsc::SyncSender<Vec<u8>>,
    kill_switch: Arc<AtomicBool>,
    idr_switch: Arc<AtomicBool>,
    stats: Arc<Mutex<ipc::StatsSnapshot>>,
) {
    info!("Video pipeline started");

    let (width, height) = {
        let cfg = config.lock().unwrap();
        (cfg.video.width, cfg.video.height)
    };
    let initial_fps = config.lock().unwrap().video.fps;

    let mut display = match display::VirtualDisplay::new(width, height, initial_fps, output_name) {
        Ok(d) => d,
        Err(e) => {
            error!("Display creation failed: {}", e);
            return;
        }
    };

    // Pipeline: capture thread → bounded channel → encode thread
    // Double-buffered: pool channel recycles Vec buffers back to capture thread
    let (tx_frame, rx_frame) = mpsc::sync_channel::<(Vec<u8>, u32, f32, f32)>(1);
    let (tx_pool, rx_pool) = mpsc::sync_channel::<Vec<u8>>(1);

    let enc_config = Arc::clone(&config);
    let enc_kill = Arc::clone(&kill_switch);
    let enc_idr = Arc::clone(&idr_switch);
    let enc_stats = Arc::clone(&stats);
    let enc_tx = tx.clone();

    let _encode_handle = std::thread::Builder::new()
        .name("video-encode".into())
        .spawn(move || {
            encode_loop(
                rx_frame, tx_pool, enc_config, enc_tx, enc_kill, enc_idr, enc_stats, width, height,
            );
        });

    let mut frame_buf = Vec::new();
    let mut last_capture_time = Instant::now();

    loop {
        if kill_switch.load(Ordering::SeqCst) {
            break;
        }

        let stride = match display.capture_frame_bgra(&mut frame_buf) {
            Ok(s) => s,
            Err(e) => {
                warn!("Capture failed: {}", e);
                std::thread::sleep(Duration::from_millis(16));
                continue;
            }
        };

        let (wait_ms, copy_ms) = display.last_capture_timing();

        // Move buffer to encode thread, get a recycled one back
        let frame_data = std::mem::take(&mut frame_buf);
        match tx_frame.try_send((frame_data, stride, wait_ms, copy_ms)) {
            Ok(()) => {}
            Err(mpsc::TrySendError::Full((data, _, _, _))) => {
                frame_buf = data;
            }
            Err(mpsc::TrySendError::Disconnected(_)) => break,
        }

        // Try to reclaim a recycled buffer from the pool
        if let Ok(recycled) = rx_pool.try_recv() {
            frame_buf = recycled;
        }

        let target_fps = config.lock().unwrap().video.fps;
        if target_fps > 0 {
            let frame_duration = Duration::from_secs_f64(1.0 / target_fps as f64);
            let elapsed = last_capture_time.elapsed();
            if elapsed < frame_duration {
                std::thread::sleep(frame_duration - elapsed);
            }
        }
        last_capture_time = Instant::now();
    }

    info!("Capture thread ending");
}

#[allow(clippy::too_many_arguments)]
fn encode_loop(
    rx_frame: mpsc::Receiver<(Vec<u8>, u32, f32, f32)>,
    tx_pool: mpsc::SyncSender<Vec<u8>>,
    config: Arc<Mutex<Config>>,
    tx: mpsc::SyncSender<Vec<u8>>,
    kill_switch: Arc<AtomicBool>,
    idr_switch: Arc<AtomicBool>,
    stats: Arc<Mutex<ipc::StatsSnapshot>>,
    capture_width: u32,
    capture_height: u32,
) {
    info!("Encode thread started");

    let mut encoder: Option<video::VideoEncoder> = None;
    let mut cur_enc_w = 0u32;
    let mut cur_enc_h = 0u32;
    let mut cur_fps = 0u32;
    let mut cur_bitrate = 0u32;
    let mut cur_encoder_type = String::new();
    let mut fragment_writer = transport::FragmentWriter::new();
    let mut frame_count = 0u64;
    let mut dropped_count = 0u64;
    let mut prev_encode_start: Option<Instant> = None;
    let mut last_diag = Instant::now();
    let mut auto_br_frames: u32 = 0;
    let mut auto_br_drops: u32 = 0;

    loop {
        if kill_switch.load(Ordering::SeqCst) {
            break;
        }

        let (mut frame_data, mut stride, mut wait_ms, mut copy_ms) =
            match rx_frame.recv_timeout(Duration::from_millis(100)) {
                Ok(d) => d,
                Err(mpsc::RecvTimeoutError::Timeout) => continue,
                Err(mpsc::RecvTimeoutError::Disconnected) => break,
            };

        // Drain stale frames — keep only the most recent
        while let Ok((newer_data, newer_stride, newer_wait, newer_copy)) = rx_frame.try_recv() {
            let _ = tx_pool.send(frame_data);
            frame_data = newer_data;
            stride = newer_stride;
            wait_ms = newer_wait;
            copy_ms = newer_copy;
        }

        let encode_start = Instant::now();

        // Check for config changes
        {
            let cfg = config.lock().unwrap();
            let new_enc_w = ((cfg.video.width as f32 * cfg.video.encode_scale) as u32).max(2) & !1;
            let new_enc_h = ((cfg.video.height as f32 * cfg.video.encode_scale) as u32).max(2) & !1;

            let effective_fps = if cfg.video.fps > 0 {
                cfg.video.fps
            } else {
                cfg.video.refresh_hz
            };
            let need_reconfig = encoder.is_none()
                || new_enc_w != cur_enc_w
                || new_enc_h != cur_enc_h
                || effective_fps != cur_fps
                || cfg.video.bitrate_kbps != cur_bitrate
                || cfg.video.encoder != cur_encoder_type;

            if need_reconfig && cfg.video.bitrate_kbps > 0 {
                info!(
                    "Configuring encoder: {}x{} @ {}fps (fps={}, refresh_hz={}), {}kbps, encoder={}",
                    new_enc_w,
                    new_enc_h,
                    effective_fps,
                    cfg.video.fps,
                    cfg.video.refresh_hz,
                    cfg.video.bitrate_kbps,
                    cfg.video.encoder
                );
                match video::VideoEncoder::new(
                    capture_width,
                    capture_height,
                    new_enc_w,
                    new_enc_h,
                    cfg.video.encoder.clone(),
                ) {
                    Ok(mut e) => {
                        if let Err(e) = e.start(cfg.video.bitrate_kbps, effective_fps) {
                            error!("Encoder start failed: {}", e);
                        } else {
                            encoder = Some(e);
                            cur_enc_w = new_enc_w;
                            cur_enc_h = new_enc_h;
                            cur_fps = effective_fps;
                            cur_bitrate = cfg.video.bitrate_kbps;
                            cur_encoder_type = cfg.video.encoder.clone();
                        }
                    }
                    Err(e) => error!("Encoder creation failed: {}", e),
                }
            }
        }

        let Some(encoder) = encoder.as_mut() else {
            let _ = tx_pool.send(frame_data);
            continue;
        };

        if idr_switch.swap(false, Ordering::SeqCst) {
            encoder.request_idr();
        }

        let nal_data = match encoder.encode_bgra(&frame_data, stride) {
            Ok(d) => d,
            Err(e) => {
                warn!("Encode failed: {}", e);
                let _ = tx_pool.send(frame_data);
                continue;
            }
        };

        let (convert_ms, h264_ms) = encoder.last_encode_timing();

        let frame_total_ms = prev_encode_start
            .map(|p| encode_start.duration_since(p).as_secs_f32() * 1000.0)
            .unwrap_or(0.0);
        prev_encode_start = Some(encode_start);

        // Recycle the frame buffer back to capture thread
        let _ = tx_pool.send(frame_data);

        if !nal_data.is_empty() {
            let fragment = fragment_writer.build_frame_fragment(1, &nal_data);
            match tx.try_send(fragment.to_vec()) {
                Ok(()) => {}
                Err(mpsc::TrySendError::Full(_)) => {
                    dropped_count += 1;
                    auto_br_drops += 1;
                }
                Err(mpsc::TrySendError::Disconnected(_)) => break,
            }
            frame_count += 1;
        }

        {
            let mut s = stats.lock().unwrap();
            s.frames_encoded = frame_count;
            s.frames_dropped = dropped_count;
            s.capture_ms = wait_ms + copy_ms;
            s.encode_ms = h264_ms;
            s.nal_bytes = nal_data.len();
            s.wait_ms = wait_ms;
            s.convert_ms = convert_ms;
            s.copy_ms = copy_ms;
            s.frame_total_ms = frame_total_ms;
        }

        auto_br_frames += 1;
        let check_interval = 60u32;
        if auto_br_frames >= check_interval {
            let cfg = config.lock().unwrap();
            if cfg.video.auto_bitrate {
                let drop_rate = auto_br_drops as f32 / auto_br_frames as f32;
                let effective_fps = if cfg.video.fps > 0 {
                    cfg.video.fps
                } else {
                    cfg.video.refresh_hz
                };
                let frame_budget = 1000.0 / effective_fps.max(1) as f32;
                let old_br = cfg.video.bitrate_kbps;
                const MAX_BR: u32 = 50000;
                let new_br = if drop_rate > 0.02 {
                    let decreased = (old_br as f32 * 0.8) as u32;
                    info!(
                        "auto-bitrate: drop_rate={:.1}%, {}kbps → {}kbps",
                        drop_rate * 100.0,
                        old_br,
                        decreased
                    );
                    decreased.max(500)
                } else if drop_rate == 0.0 && h264_ms < frame_budget * 0.5 && old_br < MAX_BR {
                    let increased = (old_br + 500).min(MAX_BR);
                    info!("auto-bitrate: stable, {}kbps → {}kbps", old_br, increased);
                    increased
                } else {
                    old_br
                };
                drop(cfg);
                if new_br != old_br {
                    let mut cfg = config.lock().unwrap();
                    cfg.video.bitrate_kbps = new_br;
                    let _ = cfg.save();
                }
            }
            auto_br_frames = 0;
            auto_br_drops = 0;
        }

        if last_diag.elapsed() >= Duration::from_secs(5) {
            tracing::debug!(
                "video: {} enc, {} drop | total={:.1}ms wait={:.1}ms copy={:.1}ms convert={:.1}ms encode={:.1}ms nal={}B",
                frame_count,
                dropped_count,
                frame_total_ms,
                wait_ms,
                copy_ms,
                convert_ms,
                h264_ms,
                nal_data.len(),
            );
            dropped_count = 0;
            last_diag = Instant::now();
        }
    }

    info!("Encode thread ending");
}

fn read_loop<R: transport::TransportRead>(reader: &mut R, tx: mpsc::Sender<(DataType, Vec<u8>)>) {
    let mut reader_buf = transport::MessageReader::new();
    loop {
        match reader.recv(65536) {
            Ok(data) if data.is_empty() => {
                info!("Transport disconnected");
                break;
            }
            Ok(data) => {
                for (dt, payload) in reader_buf.feed(&data) {
                    if tx.send((dt, payload)).is_err() {
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
        loop {
            match rx_outgoing.try_recv() {
                Ok(data) => {
                    if let Err(e) = writer.send(&data) {
                        warn!("Write error: {}", e);
                        return;
                    }
                }
                Err(TryRecvError::Empty) => break,
                Err(TryRecvError::Disconnected) => return,
            }
        }

        loop {
            match rx_video.try_recv() {
                Ok(data) => {
                    if let Err(e) = writer.send(&data) {
                        warn!("Write error (video): {}", e);
                        return;
                    }
                }
                Err(TryRecvError::Empty) => break,
                Err(TryRecvError::Disconnected) => return,
            }
        }

        match rx_video.recv_timeout(Duration::from_millis(5)) {
            Ok(data) => {
                if let Err(e) = writer.send(&data) {
                    warn!("Write error (video): {}", e);
                    return;
                }
            }
            Err(mpsc::RecvTimeoutError::Timeout) => {}
            Err(mpsc::RecvTimeoutError::Disconnected) => return,
        }
    }
}
