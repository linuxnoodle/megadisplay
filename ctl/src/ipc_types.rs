use serde::{Deserialize, Serialize};

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

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct StatsSnapshot {
    pub frames_encoded: u64,
    pub frames_dropped: u64,
    pub capture_ms: f32,
    pub encode_ms: f32,
    pub nal_bytes: usize,
    #[serde(default)]
    pub wait_ms: f32,
    #[serde(default)]
    pub convert_ms: f32,
    #[serde(default)]
    pub copy_ms: f32,
    #[serde(default)]
    pub frame_total_ms: f32,
    #[serde(default)]
    pub input_latency_ms: f32,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct DaemonConfig {
    pub video: VideoConfig,
    pub input: InputConfig,
    pub output: OutputConfig,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct VideoConfig {
    pub width: u32,
    pub height: u32,
    pub fps: u32,
    pub bitrate_kbps: u32,
    #[serde(default = "default_one")]
    pub encode_scale: f32,
    #[serde(default = "default_refresh_hz")]
    pub refresh_hz: u32,
    #[serde(default)]
    pub auto_bitrate: bool,
    #[serde(default = "default_encoder")]
    pub encoder: String,
}

fn default_encoder() -> String {
    "vaapi".into()
}

fn default_one() -> f32 {
    1.0
}

fn default_refresh_hz() -> u32 {
    120
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct InputConfig {
    pub touch: bool,
    pub pen: bool,
    pub keyboard: bool,
    #[serde(default = "default_true")]
    pub pen_cursor: bool,
}

fn default_true() -> bool {
    true
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct OutputConfig {
    pub create: bool,
    pub name: String,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(tag = "cmd", rename_all = "snake_case")]
pub enum Request {
    GetStatus,
    GetStats,
    GetConfig,
    SetConfig {
        config: DaemonConfig,
    },
    SetVideo {
        width: Option<u32>,
        height: Option<u32>,
        fps: Option<u32>,
        bitrate_kbps: Option<u32>,
        encode_scale: Option<f32>,
        refresh_hz: Option<u32>,
        auto_bitrate: Option<bool>,
        encoder: Option<String>,
        enabled: Option<bool>,
    },
    SetInput {
        touch: Option<bool>,
        pen: Option<bool>,
        keyboard: Option<bool>,
        pen_cursor: Option<bool>,
    },
    Shutdown,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(tag = "type", rename_all = "snake_case")]
pub enum Response {
    Status(DaemonStatus),
    Stats(StatsSnapshot),
    Config(DaemonConfig),
    Ok,
    Error { message: String },
}
