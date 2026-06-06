//! Virtual display management — Wayland screencopy capture or test pattern fallback.
//!
//! When the `wayland` feature is enabled and a Wayland display is available,
//! captures frames from a compositor output via wlr-screencopy. Otherwise,
//! generates a test pattern.
//!
//! Returns the row stride in bytes alongside the captured data, since the
//! Wayland screencopy buffer may have padding.

use anyhow::Result;
use tracing::{info, warn};

#[cfg(feature = "wayland")]
use crate::wayland::screencopy::WaylandCapture;

pub struct VirtualDisplay {
    width: u32,
    height: u32,
    #[cfg(feature = "wayland")]
    capture: Option<WaylandCapture>,
    #[cfg(feature = "wayland")]
    use_test_pattern: bool,
    last_wait_ms: f32,
    last_copy_ms: f32,
}

impl VirtualDisplay {
    pub fn new(width: u32, height: u32, refresh_rate: u32, output_name: Option<String>) -> Result<Self> {
        info!("Creating virtual display: {width}x{height} @ {refresh_rate}Hz");

        #[cfg(feature = "wayland")]
        {
                match WaylandCapture::connect(output_name) {
                    Ok(capture) => {
                        info!("Wayland screencopy connected — capturing from compositor output");
                        return Ok(Self {
                            width,
                            height,
                            capture: Some(capture),
                            use_test_pattern: false,
                            last_wait_ms: 0.0,
                            last_copy_ms: 0.0,
                        });
                }
                Err(e) => {
                    warn!("Wayland screencopy unavailable ({}), using test pattern", e);
                }
            }

            Ok(Self {
                width,
                height,
                capture: None,
                use_test_pattern: true,
                last_wait_ms: 0.0,
                last_copy_ms: 0.0,
            })
        }

        #[cfg(not(feature = "wayland"))]
        Ok(Self {
            width,
            height,
            last_wait_ms: 0.0,
            last_copy_ms: 0.0,
        })
    }

    /// Capture a BGRA frame. Returns the row stride in bytes.
    #[tracing::instrument(skip_all)]
    pub fn capture_frame_bgra(&mut self, buf: &mut Vec<u8>) -> Result<u32> {
        #[cfg(feature = "wayland")]
        {
            if let Some(capture) = &mut self.capture {
                match capture.capture_frame(buf) {
                    Ok((_w, _h, stride)) => {
                        let (wait_ms, copy_ms) = capture.last_timing();
                        self.last_wait_ms = wait_ms;
                        self.last_copy_ms = copy_ms;
                        return Ok(stride);
                    }
                    Err(e) => {
                        warn!("Wayland capture error: {}, falling back to test pattern", e);
                        self.use_test_pattern = true;
                        self.capture = None;
                    }
                }
            }

            if self.use_test_pattern {
                self.test_pattern(buf);
                return Ok(self.width * 4);
            }
        }

        #[cfg(not(feature = "wayland"))]
        {
            self.test_pattern(buf);
        }

        Ok(self.width * 4)
    }

    pub fn last_capture_timing(&self) -> (f32, f32) {
        (self.last_wait_ms, self.last_copy_ms)
    }

    fn test_pattern(&self, buf: &mut Vec<u8>) {
        let size = (self.width * self.height * 4) as usize;
        if buf.len() < size {
            buf.resize(size, 0);
        }

        let t = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap_or_default()
            .as_millis();

        let pixel = ((t / 16) as u32) & 0xFF;
        let r = pixel;
        let g = (pixel.wrapping_mul(3)) & 0xFF;
        let b = (pixel.wrapping_mul(7)) & 0xFF;

        for i in (0..size).step_by(4) {
            buf[i] = b as u8;
            buf[i + 1] = g as u8;
            buf[i + 2] = r as u8;
            buf[i + 3] = 255;
        }
    }
}
