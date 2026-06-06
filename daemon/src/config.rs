use anyhow::{Context, Result};
use serde::{Deserialize, Serialize};
use std::path::PathBuf;

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Config {
    pub video: VideoConfig,
    pub input: InputConfig,
    pub output: OutputConfig,
    #[serde(default)]
    pub ipc: IpcConfig,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct VideoConfig {
    pub width: u32,
    pub height: u32,
    pub fps: u32,
    pub bitrate_kbps: u32,
    #[serde(default = "default_encode_scale")]
    pub encode_scale: f32,
    #[serde(default = "default_refresh_hz")]
    pub refresh_hz: u32,
    #[serde(default)]
    pub auto_bitrate: bool,
    #[serde(default = "default_encoder")]
    pub encoder: String,
}

fn default_encoder() -> String {
    "vaapi".to_string()
}

fn default_encode_scale() -> f32 {
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
    #[serde(default = "default_scale")]
    pub scale: f32,
}

fn default_scale() -> f32 {
    1.0
}

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
pub struct IpcConfig {
    pub socket_path: Option<String>,
}

impl Default for Config {
    fn default() -> Self {
        Self {
            video: VideoConfig {
                width: 1920,
                height: 1200,
                fps: 0,
                bitrate_kbps: 8000,
                encode_scale: 1.0,
                refresh_hz: 120,
                auto_bitrate: false,
                encoder: "vaapi".into(),
            },
            input: InputConfig {
                touch: true,
                pen: true,
                keyboard: true,
                pen_cursor: true,
            },
            output: OutputConfig {
                create: true,
                name: "MEGADISPLAY".into(),
                scale: 1.0,
            },
            ipc: IpcConfig { socket_path: None },
        }
    }
}

impl Config {
    pub fn load() -> Result<Self> {
        let path = config_path()?;
        if path.exists() {
            let text = std::fs::read_to_string(&path)
                .with_context(|| format!("Failed to read config: {}", path.display()))?;
            let cfg: Config = toml::from_str(&text)
                .with_context(|| format!("Failed to parse config: {}", path.display()))?;
            tracing::info!("Loaded config from {}", path.display());
            Ok(cfg)
        } else {
            tracing::info!("No config file found, using defaults");
            Ok(Self::default())
        }
    }

    pub fn save(&self) -> Result<()> {
        let path = config_path()?;
        if let Some(parent) = path.parent() {
            std::fs::create_dir_all(parent).ok();
        }
        let text = toml::to_string_pretty(self).context("Failed to serialize config")?;
        std::fs::write(&path, text).context("Failed to write config")?;
        tracing::info!("Saved config to {}", path.display());
        Ok(())
    }

    pub fn ipc_socket_path(&self) -> PathBuf {
        if let Some(ref p) = self.ipc.socket_path {
            return PathBuf::from(p);
        }
        default_socket_path()
    }
}

fn config_path() -> Result<PathBuf> {
    if let Ok(p) = std::env::var("MEGADISPLAY_CONFIG") {
        return Ok(PathBuf::from(p));
    }
    let xdg = std::env::var("XDG_CONFIG_HOME")
        .map(PathBuf::from)
        .unwrap_or_else(|_| {
            let home = std::env::var("HOME").unwrap_or_else(|_| ".".into());
            PathBuf::from(home).join(".config")
        });
    Ok(xdg.join("megadisplay").join("config.toml"))
}

fn default_socket_path() -> PathBuf {
    let xdg = std::env::var("XDG_RUNTIME_DIR")
        .map(PathBuf::from)
        .unwrap_or_else(|_| {
            let home = std::env::var("HOME").unwrap_or_else(|_| "/tmp".into());
            PathBuf::from(home).join(".cache")
        });
    xdg.join("megadisplay.sock")
}
