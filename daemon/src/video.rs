use anyhow::Result;
use tracing::info;

#[cfg(feature = "video-encode")]
use std::time::Instant;

#[cfg(feature = "video-encode")]
use anyhow::Context;

#[cfg(feature = "video-encode")]
use openh264::encoder::{Encoder, EncoderConfig, UsageType, RateControlMode, BitRate, FrameRate, IntraFramePeriod, SpsPpsStrategy, Complexity, VuiConfig};
#[cfg(feature = "video-encode")]
use openh264::formats::YUVSource;

pub struct VideoEncoder {
    capture_width: u32,
    capture_height: u32,
    encode_width: u32,
    encode_height: u32,
    #[cfg(feature = "video-encode")]
    encoder: Option<Encoder>,
    #[cfg(feature = "video-encode")]
    fast_yuv: Option<FastYUV>,
    #[cfg(feature = "video-encode")]
    downscale_buf: Option<Vec<u8>>,
    #[cfg(feature = "video-encode")]
    frame_count: u64,
    last_convert_ms: f32,
    last_encode_ms: f32,
}

#[cfg(feature = "video-encode")]
struct FastYUV {
    y: Vec<u8>,
    u: Vec<u8>,
    v: Vec<u8>,
    width: usize,
    height: usize,
}

#[cfg(feature = "video-encode")]
impl YUVSource for FastYUV {
    fn dimensions(&self) -> (usize, usize) {
        (self.width, self.height)
    }
    fn strides(&self) -> (usize, usize, usize) {
        (self.width, self.width / 2, self.width / 2)
    }
    fn y(&self) -> &[u8] {
        &self.y
    }
    fn u(&self) -> &[u8] {
        &self.u
    }
    fn v(&self) -> &[u8] {
        &self.v
    }
}

impl VideoEncoder {
    pub fn new(capture_width: u32, capture_height: u32, encode_width: u32, encode_height: u32) -> Result<Self> {
        info!(
            "Creating H.264 encoder: capture {}x{} → encode {}x{}",
            capture_width, capture_height, encode_width, encode_height
        );
        Ok(Self {
            capture_width,
            capture_height,
            encode_width,
            encode_height,
            #[cfg(feature = "video-encode")]
            encoder: None,
            #[cfg(feature = "video-encode")]
            fast_yuv: None,
            #[cfg(feature = "video-encode")]
            downscale_buf: None,
            #[cfg(feature = "video-encode")]
            frame_count: 0,
            last_convert_ms: 0.0,
            last_encode_ms: 0.0,
        })
    }

    #[cfg(feature = "video-encode")]
    pub fn start(&mut self, bitrate_kbps: u32, fps: u32) -> Result<()> {
        let w = self.encode_width as usize;
        let h = self.encode_height as usize;

        if !w.is_multiple_of(2) || !h.is_multiple_of(2) {
            anyhow::bail!("Encoder requires even dimensions, got {w}x{h}");
        }

        let num_threads = std::thread::available_parallelism()
            .map(|n| n.get() as u16)
            .unwrap_or(4);

        let config = EncoderConfig::new()
            .usage_type(UsageType::ScreenContentRealTime)
            .rate_control_mode(RateControlMode::Bitrate)
            .bitrate(BitRate::from_bps(bitrate_kbps * 1000))
            .max_frame_rate(FrameRate::from_hz(fps as f32))
            .intra_frame_period(IntraFramePeriod::from_num_frames(fps * 2))
            .sps_pps_strategy(SpsPpsStrategy::IncreasingId)
            .complexity(Complexity::Low)
            .num_threads(num_threads)
            .max_slice_len(65536)
            .vui(VuiConfig::bt709());

        info!(
            "Encoder config: complexity=Low, threads={}, slice_size=65536, VUI=BT.709",
            num_threads
        );

        let encoder = Encoder::with_api_config(
            openh264::OpenH264API::from_source(),
            config,
        ).context("Failed to create OpenH264 encoder")?;

        self.fast_yuv = Some(FastYUV {
            y: vec![0u8; w * h],
            u: vec![0u8; (w / 2) * (h / 2)],
            v: vec![0u8; (w / 2) * (h / 2)],
            width: w,
            height: h,
        });

        if self.encode_width != self.capture_width || self.encode_height != self.capture_height {
            self.downscale_buf = Some(vec![0u8; w * h * 4]);
            info!(
                "Downscale enabled: {}x{} → {}x{}",
                self.capture_width, self.capture_height, self.encode_width, self.encode_height
            );
        }

        self.encoder = Some(encoder);

        info!(
            "OpenH264 encoder started: {}x{} @ {}fps, {}kbps (screen content, bitrate mode)",
            self.encode_width, self.encode_height, fps, bitrate_kbps
        );
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
        let encoder = self.encoder.as_mut().context("encoder not started")?;
        let yuv = self.fast_yuv.as_mut().context("YUV buffer not allocated")?;

        let enc_w = self.encode_width as usize;
        let enc_h = self.encode_height as usize;
        let cap_w = self.capture_width as usize;
        let cap_h = self.capture_height as usize;

        let convert_start = Instant::now();

        if let Some(ref mut ds_buf) = self.downscale_buf {
            if stride == self.capture_width * 4 {
                downscale_bgra_nearest(bgra_data, cap_w, cap_h, ds_buf, enc_w, enc_h);
            } else {
                let row_bytes = cap_w * 4;
                let mut packed = Vec::with_capacity(cap_w * cap_h * 4);
                for y in 0..cap_h {
                    let off = y * stride as usize;
                    packed.extend_from_slice(&bgra_data[off..off + row_bytes]);
                }
                downscale_bgra_nearest(&packed, cap_w, cap_h, ds_buf, enc_w, enc_h);
            }
            bgra_to_yuv420_fast(ds_buf, enc_w * 4, enc_w, enc_h, &mut yuv.y, &mut yuv.u, &mut yuv.v);
        } else {
            bgra_to_yuv420_fast(bgra_data, stride as usize, enc_w, enc_h, &mut yuv.y, &mut yuv.u, &mut yuv.v);
        }

        self.last_convert_ms = convert_start.elapsed().as_secs_f32() * 1000.0;

        let encode_start = Instant::now();
        let bitstream = encoder.encode(yuv).context("H.264 encode failed")?;
        self.last_encode_ms = encode_start.elapsed().as_secs_f32() * 1000.0;

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
}

/// Fast BGRA → YUV420p conversion using integer BT.709 coefficients (HD standard).
///
/// Y uses SSE4.1 SIMD (4 pixels at a time). UV uses scalar 2×2 averaged chroma.
/// Limited range: Y 16-235, U/V 16-240.
#[inline]
#[tracing::instrument(skip_all)]
fn bgra_to_yuv420_fast(
    bgra: &[u8],
    src_stride: usize,
    width: usize,
    height: usize,
    y_plane: &mut [u8],
    u_plane: &mut [u8],
    v_plane: &mut [u8],
) {
    let half_w = width / 2;
    let half_h = height / 2;

    rayon::join(
        || {
            #[cfg(target_arch = "x86_64")]
            {
                if std::is_x86_feature_detected!("sse4.1") {
                    unsafe { y_plane_sse41(bgra, src_stride, width, height, y_plane); }
                } else {
                    y_plane_scalar(bgra, src_stride, width, height, y_plane);
                }
            }
            #[cfg(not(target_arch = "x86_64"))]
            {
                y_plane_scalar(bgra, src_stride, width, height, y_plane);
            }
        },
        || {
            use rayon::prelude::*;
            // --- U/V planes: 2×2 averaged chroma ---
            u_plane.par_chunks_mut(half_w).zip(v_plane.par_chunks_mut(half_w)).enumerate().for_each(|(by, (u_row, v_row))| {
                let row0 = by * 2;
                let row1 = row0 + 1;
                let src0 = row0 * src_stride;
                let src1 = row1 * src_stride;

                for bx in 0..half_w {
                    let x0 = bx * 2;
                    let i00 = src0 + x0 * 4;
                    let i01 = i00 + 4;
                    let i10 = src1 + x0 * 4;
                    let i11 = i10 + 4;

                    let b_avg = (u32::from(bgra[i00]) + u32::from(bgra[i01]) + u32::from(bgra[i10]) + u32::from(bgra[i11])) >> 2;
                    let g_avg = (u32::from(bgra[i00 + 1]) + u32::from(bgra[i01 + 1]) + u32::from(bgra[i10 + 1]) + u32::from(bgra[i11 + 1])) >> 2;
                    let r_avg = (u32::from(bgra[i00 + 2]) + u32::from(bgra[i01 + 2]) + u32::from(bgra[i10 + 2]) + u32::from(bgra[i11 + 2])) >> 2;

                    let u_val = (-26i32 * r_avg as i32 - 87 * g_avg as i32 + 112 * b_avg as i32 + 32768) >> 8;
                    let v_val = (112 * r_avg as i32 - 102 * g_avg as i32 - 10 * b_avg as i32 + 32768) >> 8;

                    u_row[bx] = u_val.clamp(16, 240) as u8;
                    v_row[bx] = v_val.clamp(16, 240) as u8;
                }
            });
        }
    );
}

#[cfg(target_arch = "x86_64")]
#[target_feature(enable = "sse4.1")]
unsafe fn y_plane_sse41(
    bgra: &[u8],
    src_stride: usize,
    width: usize,
    height: usize,
    y_plane: &mut [u8],
) {
    use std::arch::x86_64::*;

    let mask_b = _mm_setr_epi8(0, 4, 8, 12, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    let mask_g = _mm_setr_epi8(1, 5, 9, 13, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    let mask_r = _mm_setr_epi8(2, 6, 10, 14, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);

    let coeff_r = _mm_set1_epi32(47);
    let coeff_g = _mm_set1_epi32(157);
    let coeff_b = _mm_set1_epi32(16);
    let bias_y = _mm_set1_epi32(16);
    let zero = _mm_setzero_si128();

    for y in 0..height {
        let src_row = y * src_stride;
        let dst_row = y * width;
        let mut x = 0usize;

        while x + 4 <= width {
            unsafe {
                let ptr = bgra.as_ptr().add(src_row + x * 4);
                let pixels = _mm_loadu_si128(ptr as *const __m128i);

                let b = _mm_cvtepu8_epi32(_mm_shuffle_epi8(pixels, mask_b));
                let g = _mm_cvtepu8_epi32(_mm_shuffle_epi8(pixels, mask_g));
                let r = _mm_cvtepu8_epi32(_mm_shuffle_epi8(pixels, mask_r));

                let yr = _mm_mullo_epi32(r, coeff_r);
                let yg = _mm_mullo_epi32(g, coeff_g);
                let yb = _mm_mullo_epi32(b, coeff_b);

                let y_sum = _mm_add_epi32(_mm_add_epi32(yr, yg), yb);
                let y_shifted = _mm_srai_epi32(y_sum, 8);
                let y_final = _mm_add_epi32(y_shifted, bias_y);

                let y16 = _mm_packus_epi32(y_final, zero);
                let y8 = _mm_packus_epi16(y16, zero);
                let y32 = _mm_cvtsi128_si32(y8) as u32;
                std::ptr::write_unaligned(y_plane.as_mut_ptr().add(dst_row + x) as *mut u32, y32);
            }
            x += 4;
        }

        while x < width {
            let i = src_row + x * 4;
            let b = u16::from(bgra[i]);
            let g = u16::from(bgra[i + 1]);
            let r = u16::from(bgra[i + 2]);
            y_plane[dst_row + x] = (((47 * r + 157 * g + 16 * b) >> 8) + 16) as u8;
            x += 1;
        }
    }
}

#[inline]
fn y_plane_scalar(
    bgra: &[u8],
    src_stride: usize,
    width: usize,
    height: usize,
    y_plane: &mut [u8],
) {
    for y in 0..height {
        let src_row = y * src_stride;
        let dst_row = y * width;
        for x in 0..width {
            let i = src_row + x * 4;
            let b = u16::from(bgra[i]);
            let g = u16::from(bgra[i + 1]);
            let r = u16::from(bgra[i + 2]);
            y_plane[dst_row + x] = (((47 * r + 157 * g + 16 * b) >> 8) + 16) as u8;
        }
    }
}

#[cfg(feature = "video-encode")]
fn downscale_bgra_nearest(
    src: &[u8],
    src_w: usize,
    src_h: usize,
    dst: &mut [u8],
    dst_w: usize,
    dst_h: usize,
) {
    let x_ratio = src_w as f32 / dst_w as f32;
    let y_ratio = src_h as f32 / dst_h as f32;

    for dy in 0..dst_h {
        let sy = ((dy as f32 + 0.5) * y_ratio) as usize;
        let sy = sy.min(src_h - 1);
        let src_row = sy * src_w * 4;
        let dst_row = dy * dst_w * 4;
        for dx in 0..dst_w {
            let sx = ((dx as f32 + 0.5) * x_ratio) as usize;
            let sx = sx.min(src_w - 1);
            let si = src_row + sx * 4;
            let di = dst_row + dx * 4;
            dst[di] = src[si];
            dst[di + 1] = src[si + 1];
            dst[di + 2] = src[si + 2];
            dst[di + 3] = src[si + 3];
        }
    }
}
