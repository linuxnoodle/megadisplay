use anyhow::{Context, Result};
use std::process::{Child, ChildStdin, Command, Stdio};
use std::sync::mpsc;
use std::time::Instant;
use std::io::{Read, Write};
use tracing::{info, warn, error};

pub struct VideoEncoder {
    #[allow(dead_code)]
    capture_width: u32,
    #[allow(dead_code)]
    capture_height: u32,
    #[allow(dead_code)]
    encode_width: u32,
    #[allow(dead_code)]
    encode_height: u32,

    #[cfg(feature = "video-encode")]
    child: Option<Child>,
    #[cfg(feature = "video-encode")]
    stdin: Option<ChildStdin>,
    #[cfg(feature = "video-encode")]
    rx_nal: Option<mpsc::Receiver<Vec<u8>>>,
    #[cfg(feature = "video-encode")]
    encoder_type: String,

    frame_count: u64,
    last_convert_ms: f32,
    last_encode_ms: f32,
}

impl VideoEncoder {
    pub fn new(
        capture_width: u32,
        capture_height: u32,
        encode_width: u32,
        encode_height: u32,
        #[allow(unused_variables)]
        encoder_type: String,
    ) -> Result<Self> {
        info!(
            "Creating H.264 encoder ({}): capture {}x{} → encode {}x{}",
            encoder_type, capture_width, capture_height, encode_width, encode_height
        );
        Ok(Self {
            capture_width,
            capture_height,
            encode_width,
            encode_height,
            #[cfg(feature = "video-encode")]
            child: None,
            #[cfg(feature = "video-encode")]
            stdin: None,
            #[cfg(feature = "video-encode")]
            rx_nal: None,
            #[cfg(feature = "video-encode")]
            encoder_type,
            frame_count: 0,
            last_convert_ms: 0.0,
            last_encode_ms: 0.0,
        })
    }

    #[cfg(feature = "video-encode")]
    pub fn start(&mut self, bitrate_kbps: u32, fps: u32) -> Result<()> {
        let cw = self.capture_width;
        let ch = self.capture_height;
        let ew = self.encode_width;
        let eh = self.encode_height;

        let scale_filter = if cw != ew || ch != eh {
            format!("scale={}:{},", ew, eh)
        } else {
            String::new()
        };

        let gop = fps * 2;
        let mut cmd = Command::new("ffmpeg");
        cmd.args(["-hide_banner", "-loglevel", "error"])
            .args(["-f", "rawvideo", "-pix_fmt", "bgra"])
            .args(["-s", &format!("{}x{}", cw, ch)])
            .args(["-r", &fps.to_string()])
            .args(["-i", "pipe:0"]);

        match self.encoder_type.as_str() {
            "vaapi" => {
                cmd.args(["-init_hw_device", "vaapi=foo:/dev/dri/renderD128"])
                   .args(["-filter_hw_device", "foo"])
                   .args(["-vf", &format!("{}format=nv12,hwupload", scale_filter)])
                   .args(["-c:v", "h264_vaapi"])
                   .args(["-g", &gop.to_string()])
                   .args(["-b:v", &format!("{}k", bitrate_kbps)]);
            }
            "nvenc" => {
                cmd.args(["-vf", &format!("{}format=nv12", scale_filter)])
                   .args(["-c:v", "h264_nvenc"])
                   .args(["-preset", "p1"])
                   .args(["-tune", "ull"])
                   .args(["-zerolatency", "1"])
                   .args(["-g", &gop.to_string()])
                   .args(["-b:v", &format!("{}k", bitrate_kbps)]);
            }
            "amf" => {
                cmd.args(["-vf", &format!("{}format=nv12", scale_filter)])
                   .args(["-c:v", "h264_amf"])
                   .args(["-usage", "lowlatency"])
                   .args(["-g", &gop.to_string()])
                   .args(["-b:v", &format!("{}k", bitrate_kbps)]);
            }
            _ => { // Software fallback (openh264 or libx264)
                cmd.args(["-vf", &format!("{}format=yuv420p", scale_filter)])
                   .args(["-c:v", "libx264"])
                   .args(["-preset", "ultrafast"])
                   .args(["-tune", "zerolatency"])
                   .args(["-g", &gop.to_string()])
                   .args(["-b:v", &format!("{}k", bitrate_kbps)]);
            }
        }

        cmd.args(["-f", "h264", "pipe:1"]);
        cmd.stdin(Stdio::piped()).stdout(Stdio::piped()).stderr(Stdio::inherit());

        info!("Launching ffmpeg: {:?}", cmd);

        let mut child = cmd.spawn().context("Failed to spawn ffmpeg")?;
        let stdin = child.stdin.take().context("Failed to open ffmpeg stdin")?;
        let stdout = child.stdout.take().context("Failed to open ffmpeg stdout")?;

        let (tx_nal, rx_nal) = mpsc::channel();

        // Spawn a thread to read NAL units from stdout
        std::thread::Builder::new().name("ffmpeg-read".into()).spawn(move || {
            let mut reader = stdout;
            let mut buf = vec![0u8; 65536];
            let mut pending = Vec::new();

            loop {
                match reader.read(&mut buf) {
                    Ok(0) => {
                        info!("FFmpeg stdout closed");
                        break;
                    }
                    Ok(n) => {
                        pending.extend_from_slice(&buf[..n]);

                        let mut i = 0;
                        let mut last_start = 0;
                        while i < pending.len().saturating_sub(3) {
                            if pending[i] == 0 && pending[i + 1] == 0 && pending[i + 2] == 0 && pending[i + 3] == 1 {
                                if i > last_start {
                                    let nal = pending[last_start..i].to_vec();
                                    if !nal.is_empty() {
                                        let _ = tx_nal.send(nal);
                                    }
                                }
                                last_start = i;
                                i += 4;
                            } else {
                                i += 1;
                            }
                        }

                        if last_start > 0 {
                            pending.drain(..last_start);
                        }
                    }
                    Err(e) => {
                        error!("FFmpeg read error: {}", e);
                        break;
                    }
                }
            }
        })?;

        self.child = Some(child);
        self.stdin = Some(stdin);
        self.rx_nal = Some(rx_nal);

        Ok(())
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn start(&mut self, _bitrate_kbps: u32, _fps: u32) -> Result<()> {
        tracing::warn!("Video encoding disabled (build without video-encode feature)");
        Ok(())
    }

    pub fn last_encode_timing(&self) -> (f32, f32) {
        (self.last_convert_ms, self.last_encode_ms)
    }

    #[cfg(feature = "video-encode")]
    #[tracing::instrument(skip_all)]
    pub fn encode_bgra(&mut self, bgra_data: &[u8], stride: u32) -> Result<Vec<u8>> {
        let stdin = self.stdin.as_mut().context("encoder not started")?;
        let rx_nal = self.rx_nal.as_mut().context("encoder not started")?;

        let encode_start = Instant::now();

        // Write the full BGRA frame to ffmpeg stdin
        let cap_w = self.capture_width as usize;
        let cap_h = self.capture_height as usize;
        
        if stride as usize == cap_w * 4 {
            stdin.write_all(bgra_data).context("Failed to write to ffmpeg stdin")?;
        } else {
            let row_bytes = cap_w * 4;
            for y in 0..cap_h {
                let off = y * stride as usize;
                stdin.write_all(&bgra_data[off..off + row_bytes]).context("Failed to write to ffmpeg stdin")?;
            }
        }
        stdin.flush().ok();

        // No CPU conversion overhead
        self.last_convert_ms = 0.0;

        // Collect all currently available NAL units from ffmpeg stdout
        let mut out = Vec::new();
        while let Ok(nal) = rx_nal.try_recv() {
            out.extend_from_slice(&nal);
        }

        self.last_encode_ms = encode_start.elapsed().as_secs_f32() * 1000.0;
        self.frame_count += 1;

        Ok(out)
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn encode_bgra(&mut self, _bgra_data: &[u8], _stride: u32) -> Result<Vec<u8>> {
        Ok(Vec::new())
    }

    #[cfg(feature = "video-encode")]
    pub fn request_idr(&mut self) {
        // FFmpeg handles IDR automatically or we could send a command if needed, but for now we ignore.
        tracing::debug!("IDR frame requested (ignored for ffmpeg child process)");
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn request_idr(&mut self) {}
}

impl Drop for VideoEncoder {
    fn drop(&mut self) {
        #[cfg(feature = "video-encode")]
        if let Some(mut child) = self.child.take() {
            let _ = child.kill();
            let _ = child.wait();
        }
    }
}
