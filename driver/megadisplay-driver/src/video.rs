//! H.264 video encoding pipeline using OpenH264.
//!
//! Captures the virtual display's framebuffer (via wlr-screencopy or test
//! pattern), converts BGRA→YUV420p, encodes to H.264 NAL stream, and returns
//! NAL packets for the transport layer to stream to the Android tablet.

use anyhow::Result;
use tracing::info;

#[cfg(feature = "video-encode")]
use anyhow::Context;

#[cfg(feature = "video-encode")]
use openh264::encoder::{Encoder, EncoderConfig, UsageType, RateControlMode, BitRate, FrameRate, IntraFramePeriod, SpsPpsStrategy};
#[cfg(feature = "video-encode")]
use openh264::formats::{BgraSliceU8, YUVBuffer, RGBSource};

pub struct VideoEncoder {
    width: u32,
    height: u32,
    #[cfg(feature = "video-encode")]
    encoder: Option<Encoder>,
    #[cfg(feature = "video-encode")]
    yuv_buf: Option<YUVBuffer>,
    #[cfg(feature = "video-encode")]
    frame_count: u64,
}

impl VideoEncoder {
    pub fn new(width: u32, height: u32) -> Result<Self> {
        info!("Creating H.264 encoder: {width}x{height}");
        Ok(Self {
            width,
            height,
            #[cfg(feature = "video-encode")]
            encoder: None,
            #[cfg(feature = "video-encode")]
            yuv_buf: None,
            #[cfg(feature = "video-encode")]
            frame_count: 0,
        })
    }

    #[cfg(feature = "video-encode")]
    pub fn start(&mut self, bitrate_kbps: u32, fps: u32) -> Result<()> {
        let w = self.width as usize;
        let h = self.height as usize;

        if w % 2 != 0 || h % 2 != 0 {
            anyhow::bail!("Encoder requires even dimensions, got {w}x{h}");
        }

        let config = EncoderConfig::new()
            .usage_type(UsageType::ScreenContentRealTime)
            .rate_control_mode(RateControlMode::Bitrate)
            .bitrate(BitRate::from_bps(bitrate_kbps * 1000))
            .max_frame_rate(FrameRate::from_hz(fps as f32))
            .intra_frame_period(IntraFramePeriod::from_num_frames(fps * 2))
            .sps_pps_strategy(SpsPpsStrategy::IncreasingId);

        let encoder = Encoder::with_api_config(
            openh264::OpenH264API::from_source(),
            config,
        ).context("Failed to create OpenH264 encoder")?;

        self.yuv_buf = Some(YUVBuffer::new(w, h));
        self.encoder = Some(encoder);

        info!(
            "OpenH264 encoder started: {}x{} @ {}fps, {}kbps (screen content, bitrate mode)",
            self.width, self.height, fps, bitrate_kbps
        );
        Ok(())
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn start(&mut self, _bitrate_kbps: u32, _fps: u32) -> Result<()> {
        tracing::warn!("Video encoding disabled (build without video-encode feature)");
        Ok(())
    }

    /// Encode a BGRA frame to H.264 NAL data.
    ///
    /// `bgra_data` must be `width * height * 4` bytes (tightly packed BGRA).
    /// `stride` is the row stride in bytes (may be > width*4 for padding).
    #[cfg(feature = "video-encode")]
    pub fn encode_bgra(&mut self, bgra_data: &[u8], stride: u32) -> Result<Vec<u8>> {
        let encoder = self.encoder.as_mut().context("encoder not started")?;
        let yuv_buf = self.yuv_buf.as_mut().context("YUV buffer not allocated")?;

        let w = self.width as usize;
        let h = self.height as usize;

        if stride == self.width * 4 {
            let bgra = BgraSliceU8::new(bgra_data, (w, h));
            yuv_buf.read_rgb(bgra);
        } else {
            let row_bytes = w * 4;
            let mut packed = Vec::with_capacity(w * h * 4);
            for y in 0..h {
                let off = y * stride as usize;
                packed.extend_from_slice(&bgra_data[off..off + row_bytes]);
            }
            let bgra = BgraSliceU8::new(&packed, (w, h));
            yuv_buf.read_rgb(bgra);
        }

        let bitstream = encoder.encode(yuv_buf).context("H.264 encode failed")?;
        self.frame_count += 1;

        Ok(bitstream.to_vec())
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn encode_bgra(&mut self, _bgra_data: &[u8], _stride: u32) -> Result<Vec<u8>> {
        Ok(Vec::new())
    }

    #[cfg(feature = "video-encode")]
    pub fn request_idr(&mut self) {
        if let Some(enc) = &mut self.encoder {
            enc.force_intra_frame();
            tracing::debug!("IDR frame requested");
        }
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn request_idr(&mut self) {}

    pub fn width(&self) -> u32 { self.width }
    pub fn height(&self) -> u32 { self.height }
}
