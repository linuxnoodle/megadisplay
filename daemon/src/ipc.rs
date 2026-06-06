use crate::config::Config;
use anyhow::{Context, Result};
use serde::{Deserialize, Serialize};
use std::os::unix::net::{UnixListener, UnixStream};
use std::path::Path;
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::{Arc, Mutex};
use tracing::{debug, info, warn};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct DaemonStatus {
    pub connected: bool,
    pub peer_version: u32,
    pub video: VideoStatus,
    pub input: InputStatus,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct VideoStatus {
    pub width: u32,
    pub height: u32,
    pub fps: u32,
    pub bitrate_kbps: u32,
    pub encode_scale: f32,
    pub refresh_hz: u32,
    pub auto_bitrate: bool,
    pub enabled: bool,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct InputStatus {
    pub touch: bool,
    pub pen: bool,
    pub keyboard: bool,
    pub pen_cursor: bool,
}

#[derive(Debug, Clone, Default, Serialize, Deserialize)]
pub struct StatsSnapshot {
    pub frames_encoded: u64,
    pub frames_dropped: u64,
    pub capture_ms: f32,
    pub encode_ms: f32,
    pub nal_bytes: usize,
    pub wait_ms: f32,
    pub convert_ms: f32,
    pub copy_ms: f32,
    pub frame_total_ms: f32,
    #[serde(default)]
    pub input_latency_ms: f32,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(tag = "cmd", rename_all = "snake_case")]
pub enum Request {
    GetStatus,
    GetStats,
    GetConfig,
    SetConfig { config: Config },
    SetVideo { width: Option<u32>, height: Option<u32>, fps: Option<u32>, bitrate_kbps: Option<u32>, encode_scale: Option<f32>, refresh_hz: Option<u32>, auto_bitrate: Option<bool>, encoder: Option<String>, enabled: Option<bool> },
    SetInput { touch: Option<bool>, pen: Option<bool>, keyboard: Option<bool>, pen_cursor: Option<bool> },
    Shutdown,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(tag = "type", rename_all = "snake_case")]
pub enum Response {
    Status(DaemonStatus),
    Stats(StatsSnapshot),
    Config(Config),
    Ok,
    Error { message: String },
}

pub struct IpcServer {
    shutdown: Arc<AtomicBool>,
    config: Arc<Mutex<Config>>,
    stats: Arc<Mutex<StatsSnapshot>>,
    status: Arc<Mutex<DaemonStatus>>,
}

impl IpcServer {
    pub fn new(config: Arc<Mutex<Config>>) -> Self {
        let cfg = config.lock().unwrap().clone();
        let status = DaemonStatus {
            connected: false,
            peer_version: 0,
            video: VideoStatus {
                width: cfg.video.width,
                height: cfg.video.height,
                fps: cfg.video.fps,
                bitrate_kbps: cfg.video.bitrate_kbps,
                encode_scale: cfg.video.encode_scale,
                refresh_hz: cfg.video.refresh_hz,
                auto_bitrate: cfg.video.auto_bitrate,
                enabled: true,
            },
            input: InputStatus {
                touch: cfg.input.touch,
                pen: cfg.input.pen,
                keyboard: cfg.input.keyboard,
                pen_cursor: cfg.input.pen_cursor,
            },
        };
        Self {
            shutdown: Arc::new(AtomicBool::new(false)),
            config,
            stats: Arc::new(Mutex::new(StatsSnapshot {
                frames_encoded: 0,
                frames_dropped: 0,
                capture_ms: 0.0,
                encode_ms: 0.0,
                nal_bytes: 0,
                wait_ms: 0.0,
                convert_ms: 0.0,
                copy_ms: 0.0,
                frame_total_ms: 0.0,
                input_latency_ms: 0.0,
            })),
            status: Arc::new(Mutex::new(status)),
        }
    }

    pub fn stats_handle(&self) -> Arc<Mutex<StatsSnapshot>> {
        Arc::clone(&self.stats)
    }

    pub fn status_handle(&self) -> Arc<Mutex<DaemonStatus>> {
        Arc::clone(&self.status)
    }

    pub fn shutdown_handle(&self) -> Arc<AtomicBool> {
        Arc::clone(&self.shutdown)
    }

    pub fn run(&self, socket_path: &Path) -> Result<()> {
        if socket_path.exists() {
            std::fs::remove_file(socket_path).ok();
        }
        let listener = UnixListener::bind(socket_path)
            .with_context(|| format!("Failed to bind IPC socket: {}", socket_path.display()))?;
        info!("IPC socket listening at {}", socket_path.display());

        listener.set_nonblocking(true)?;

        loop {
            if self.shutdown.load(Ordering::SeqCst) {
                break;
            }
            match listener.accept() {
                Ok((stream, _)) => {
                    let config = Arc::clone(&self.config);
                    let stats = Arc::clone(&self.stats);
                    let status = Arc::clone(&self.status);
                    let shutdown = Arc::clone(&self.shutdown);
                    std::thread::spawn(move || {
                        handle_client(stream, config, stats, status, shutdown);
                    });
                }
                Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => {
                    std::thread::sleep(std::time::Duration::from_millis(100));
                }
                Err(e) => {
                    warn!("IPC accept error: {}", e);
                }
            }
        }

        if socket_path.exists() {
            std::fs::remove_file(socket_path).ok();
        }
        Ok(())
    }
}

fn handle_client(
    stream: UnixStream,
    config: Arc<Mutex<Config>>,
    stats: Arc<Mutex<StatsSnapshot>>,
    status: Arc<Mutex<DaemonStatus>>,
    shutdown: Arc<AtomicBool>,
) {
    use std::io::{BufRead, BufReader, Write};

    let writer = stream.try_clone();
    if let Err(e) = writer {
        warn!("IPC clone error: {}", e);
        return;
    }
    let mut writer = writer.unwrap();

    let reader = BufReader::new(stream);
    for line in reader.lines() {
        let line = match line {
            Ok(l) => l,
            Err(_) => return,
        };
        let req: Request = match serde_json::from_str(&line) {
            Ok(r) => r,
            Err(e) => {
                let resp = Response::Error { message: format!("Invalid request: {e}") };
                let _ = writeln!(writer, "{}", serde_json::to_string(&resp).unwrap());
                continue;
            }
        };

        debug!("IPC request: {:?}", req);

        let resp = match req {
            Request::GetStatus => {
                let s = status.lock().unwrap();
                Response::Status(s.clone())
            }
            Request::GetStats => {
                let s = stats.lock().unwrap();
                Response::Stats(s.clone())
            }
            Request::GetConfig => {
                let c = config.lock().unwrap();
                Response::Config(c.clone())
            }
            Request::SetConfig { config: new_cfg } => {
                let mut c = config.lock().unwrap();
                *c = new_cfg;
                let _ = c.save();
                Response::Ok
            }
            Request::SetVideo { width, height, fps, bitrate_kbps, encode_scale, refresh_hz, auto_bitrate, encoder, enabled: _ } => {
                let mut c = config.lock().unwrap();
                if let Some(w) = width { c.video.width = w; }
                if let Some(h) = height { c.video.height = h; }
                if let Some(f) = fps { c.video.fps = f; }
                if let Some(b) = bitrate_kbps { c.video.bitrate_kbps = b; }
                if let Some(s) = encode_scale { c.video.encode_scale = s.clamp(0.25, 1.0); }
                if let Some(r) = refresh_hz { c.video.refresh_hz = r.clamp(10, 240); }
                if let Some(a) = auto_bitrate { c.video.auto_bitrate = a; }
                if let Some(e) = encoder { c.video.encoder = e; }
                let _ = c.save();
                Response::Ok
            }
            Request::SetInput { touch, pen, keyboard, pen_cursor } => {
                let mut c = config.lock().unwrap();
                if let Some(t) = touch { c.input.touch = t; }
                if let Some(p) = pen { c.input.pen = p; }
                if let Some(k) = keyboard { c.input.keyboard = k; }
                if let Some(pc) = pen_cursor { c.input.pen_cursor = pc; }
                let _ = c.save();
                Response::Ok
            }
            Request::Shutdown => {
                shutdown.store(true, Ordering::SeqCst);
                Response::Ok
            }
        };

        let json = serde_json::to_string(&resp).unwrap();
        if writeln!(writer, "{json}").is_err() {
            return;
        }
    }
}

