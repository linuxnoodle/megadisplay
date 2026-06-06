use anyhow::{Context, Result, bail};
use gstreamer as gst;
use gstreamer::prelude::*;
use gstreamer_app as gst_app;
use gstreamer_allocators::DmaBufAllocator;
use std::sync::mpsc;
use std::time::Instant;
use tracing::{error, info, warn};

pub struct VideoEncoder {
    capture_width: u32,
    capture_height: u32,
    encode_width: u32,
    encode_height: u32,

    #[cfg(feature = "video-encode")]
    pipeline: Option<gst::Pipeline>,
    #[cfg(feature = "video-encode")]
    appsrc: Option<gst_app::AppSrc>,
    #[cfg(feature = "video-encode")]
    rx_nal: Option<mpsc::Receiver<Vec<u8>>>,
    #[cfg(feature = "video-encode")]
    encoder_type: String,

    frame_count: u64,
    last_convert_ms: f32,
    last_encode_ms: f32,
    #[cfg(feature = "video-encode")]
    pts: u64,
    #[cfg(feature = "video-encode")]
    fps: u32,
    #[cfg(feature = "video-encode")]
    allocator: Option<DmaBufAllocator>,
}

impl VideoEncoder {
    pub fn new(
        capture_width: u32,
        capture_height: u32,
        encode_width: u32,
        encode_height: u32,
        #[allow(unused_variables)] encoder_type: String,
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
            pipeline: None,
            #[cfg(feature = "video-encode")]
            appsrc: None,
            #[cfg(feature = "video-encode")]
            rx_nal: None,
            #[cfg(feature = "video-encode")]
            encoder_type,
            frame_count: 0,
            last_convert_ms: 0.0,
            last_encode_ms: 0.0,
            #[cfg(feature = "video-encode")]
            pts: 0,
            #[cfg(feature = "video-encode")]
            fps: 60,
            #[cfg(feature = "video-encode")]
            allocator: None,
        })
    }

    #[cfg(feature = "video-encode")]
    pub fn start(&mut self, bitrate_kbps: u32, fps: u32) -> Result<()> {
        self.fps = fps;
        let cw = self.capture_width;
        let ch = self.capture_height;
        let ew = self.encode_width;
        let eh = self.encode_height;

        gst::init().context("Failed to init gstreamer")?;

        let pipeline_str = match self.encoder_type.as_str() {
            "vaapi" => format!(
                "appsrc name=src format=time ! \
                 video/x-raw,format=BGRA,width={cw},height={ch},framerate={fps}/1 ! \
                 vapostproc ! video/x-raw,format=NV12,width={ew},height={eh} ! \
                 vah264enc bitrate={bitrate_kbps} ! \
                 h264parse ! video/x-h264,stream-format=byte-stream ! \
                 appsink name=sink emit-signals=true max-buffers=5 drop=true sync=false"
            ),
            "nvenc" | "amf" | _ => {
                bail!("Encoder type {} not supported with DMA-BUF pipeline yet", self.encoder_type);
            }
        };

        info!("Launching GStreamer pipeline: {}", pipeline_str);

        let pipeline = gst::parse::launch(&pipeline_str)
            .context("Failed to parse gst pipeline")?
            .downcast::<gst::Pipeline>()
            .map_err(|_| anyhow::anyhow!("Expected a gst::Pipeline"))?;

        let appsrc = pipeline.by_name("src")
            .context("Failed to find appsrc in pipeline")?
            .downcast::<gst_app::AppSrc>()
            .map_err(|_| anyhow::anyhow!("Expected an AppSrc"))?;

        let appsink = pipeline.by_name("sink")
            .context("Failed to find appsink in pipeline")?
            .downcast::<gst_app::AppSink>()
            .map_err(|_| anyhow::anyhow!("Expected an AppSink"))?;

        let (tx_nal, rx_nal) = mpsc::channel();

        appsink.set_callbacks(
            gst_app::AppSinkCallbacks::builder()
                .new_sample(move |appsink| {
                    if let Ok(sample) = appsink.pull_sample() {
                        if let Some(buffer) = sample.buffer() {
                            if let Ok(map) = buffer.map_readable() {
                                let _ = tx_nal.send(map.as_slice().to_vec());
                            }
                        }
                    }
                    Ok(gst::FlowSuccess::Ok)
                })
                .build(),
        );

        pipeline.set_state(gst::State::Playing)?;

        self.pipeline = Some(pipeline);
        self.appsrc = Some(appsrc);
        self.rx_nal = Some(rx_nal);
        self.pts = 0;
        self.allocator = Some(DmaBufAllocator::new());

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
    pub fn encode_bgra(&mut self, capture_res: &crate::display::CaptureResult) -> Result<Vec<u8>> {
        let appsrc = self.appsrc.as_mut().context("encoder not started")?;
        let rx_nal = self.rx_nal.as_mut().context("encoder not started")?;
        let allocator = self.allocator.as_ref().context("allocator not initialized")?;

        let encode_start = Instant::now();

        match capture_res {
            crate::display::CaptureResult::DmaBuf(dma) => {
                let size = (dma.stride * dma.height) as usize;
                // Important: allocator.alloc(fd, size) takes ownership of the fd.
                // Since wayland.rs dup'd it, we can give it to GStreamer.
                let mem = unsafe { allocator.alloc(dma.fd, size) };
                let mem = mem.context("Failed to allocate DmaBuf memory")?;

                let duration = gst::ClockTime::from_nseconds(1_000_000_000 / self.fps as u64);
                let pts_time = gst::ClockTime::from_nseconds(self.pts * duration.nseconds());

                let mut buffer = gst::Buffer::new();
                {
                    let buffer_mut = buffer.get_mut().unwrap();
                    buffer_mut.append_memory(mem);
                    buffer_mut.set_pts(pts_time);
                    buffer_mut.set_duration(duration);
                    
                    // Attach VideoMeta to inform GStreamer of the actual memory stride
                    // instead of it assuming stride = width * 4.
                    gstreamer_video::VideoMeta::add_full(
                        buffer_mut,
                        gstreamer_video::VideoFrameFlags::empty(),
                        gstreamer_video::VideoFormat::Bgra,
                        dma.width,
                        dma.height,
                        &[0], // 1 plane, offset 0
                        &[dma.stride as i32],
                    ).context("Failed to add VideoMeta for stride")?;
                }
                
                self.pts += 1;
                appsrc.push_buffer(buffer).context("Failed to push buffer to appsrc")?;
            }
            crate::display::CaptureResult::Shm(_stride) => {
                bail!("SHM fallback encoding not supported with GStreamer DMA-BUF pipeline");
            }
        }

        self.last_convert_ms = 0.0; // DMA-BUF is zero-copy

        let mut out = Vec::new();
        while let Ok(nal) = rx_nal.try_recv() {
            out.extend_from_slice(&nal);
        }

        self.last_encode_ms = encode_start.elapsed().as_secs_f32() * 1000.0;
        self.frame_count += 1;

        Ok(out)
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn encode_bgra(&mut self, _capture_res: &crate::display::CaptureResult) -> Result<Vec<u8>> {
        Ok(Vec::new())
    }

    #[cfg(feature = "video-encode")]
    pub fn request_idr(&mut self) {
        tracing::debug!("IDR frame requested (TODO: implement for vaapih264enc via gstreamer force-IDR event)");
    }

    #[cfg(not(feature = "video-encode"))]
    pub fn request_idr(&mut self) {}
}

impl Drop for VideoEncoder {
    fn drop(&mut self) {
        #[cfg(feature = "video-encode")]
        if let Some(pipeline) = self.pipeline.take() {
            let _ = pipeline.set_state(gst::State::Null);
        }
    }
}
