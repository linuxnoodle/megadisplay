//! Wayland screencopy integration — captures frames from a compositor output.
//!
//! Uses the wlr-screencopy-unstable-v1 protocol to capture screen content
//! into a shared memory buffer. The captured BGRA data can then be fed to
//! the H.264 encoder.

#[cfg(feature = "wayland")]
pub mod screencopy {
    use anyhow::{bail, Context, Result};
    use std::os::fd::{AsFd, AsRawFd, FromRawFd, OwnedFd};
    use tracing::{debug, info, warn};

    use wayland_client::{
        Connection, Dispatch, QueueHandle,
        globals::registry_queue_init,
        protocol::{wl_buffer, wl_output, wl_registry, wl_shm, wl_shm_pool},
    };
    use wayland_protocols_wlr::screencopy::v1::client::{
        zwlr_screencopy_frame_v1, zwlr_screencopy_manager_v1,
    };

    /// State for the Wayland event loop during a single capture.
    struct CaptureState {
        frame_format: u32,
        frame_width: u32,
        frame_height: u32,
        frame_stride: u32,
        have_buffer: bool,
        buffer_done: bool,
        frame_ready: bool,
        frame_failed: bool,
        y_invert: bool,
    }

    impl CaptureState {
        fn new() -> Self {
            Self {
                frame_format: 0,
                frame_width: 0,
                frame_height: 0,
                frame_stride: 0,
                have_buffer: false,
                buffer_done: false,
                frame_ready: false,
                frame_failed: false,
                y_invert: false,
            }
        }

        fn reset(&mut self) {
            self.have_buffer = false;
            self.buffer_done = false;
            self.frame_ready = false;
            self.frame_failed = false;
            self.y_invert = false;
        }
    }

    impl Dispatch<wl_registry::WlRegistry, wayland_client::globals::GlobalListContents>
        for CaptureState
    {
        fn event(
            _state: &mut Self,
            _proxy: &wl_registry::WlRegistry,
            _event: wl_registry::Event,
            _data: &wayland_client::globals::GlobalListContents,
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<wl_shm::WlShm, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &wl_shm::WlShm,
            _event: wl_shm::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<wl_shm_pool::WlShmPool, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &wl_shm_pool::WlShmPool,
            _event: wl_shm_pool::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<wl_buffer::WlBuffer, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &wl_buffer::WlBuffer,
            _event: wl_buffer::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<wl_output::WlOutput, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &wl_output::WlOutput,
            _event: wl_output::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1,
            _event: zwlr_screencopy_manager_v1::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<zwlr_screencopy_frame_v1::ZwlrScreencopyFrameV1, ()> for CaptureState {
        fn event(
            state: &mut Self,
            _proxy: &zwlr_screencopy_frame_v1::ZwlrScreencopyFrameV1,
            event: zwlr_screencopy_frame_v1::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
            use zwlr_screencopy_frame_v1::Event;

            match event {
                Event::Buffer { format, width, height, stride } => {
                    let fmt_val = match format {
                        wayland_client::WEnum::Value(v) => v as u32,
                        wayland_client::WEnum::Unknown(u) => u,
                    };
                    state.frame_format = fmt_val;
                    state.frame_width = width;
                    state.frame_height = height;
                    state.frame_stride = stride;
                    state.have_buffer = true;
                    debug!(
                        "screencopy buffer: format=0x{:08X} {}x{} stride={}",
                        fmt_val, width, height, stride
                    );
                }
                Event::BufferDone => {
                    state.buffer_done = true;
                    debug!("screencopy buffer_done");
                }
                Event::Flags { flags } => {
                    let flags_val = match flags {
                        wayland_client::WEnum::Value(v) => u32::from(v),
                        wayland_client::WEnum::Unknown(u) => u,
                    };
                    state.y_invert = (flags_val & 1) != 0;
                }
                Event::Ready { .. } => {
                    state.frame_ready = true;
                    debug!("screencopy frame ready");
                }
                Event::Failed => {
                    state.frame_failed = true;
                    warn!("screencopy frame failed");
                }
                Event::Damage { .. } => { }
                Event::LinuxDmabuf { .. } => { }
                _ => {}
            }
        }
    }

    /// RAII guard for mmap'd shared memory.
    struct ShmMapping {
        ptr: *mut u8,
        size: usize,
    }

    impl ShmMapping {
        unsafe fn new(fd: &OwnedFd, size: usize) -> Result<Self> {
            let ptr = unsafe {
                libc::mmap(
                    std::ptr::null_mut(),
                    size,
                    libc::PROT_READ | libc::PROT_WRITE,
                    libc::MAP_SHARED,
                    fd.as_fd().as_raw_fd(),
                    0,
                )
            };
            if ptr == libc::MAP_FAILED {
                bail!("mmap failed: {}", std::io::Error::last_os_error());
            }
            Ok(Self { ptr: ptr as *mut u8, size })
        }

        fn as_slice(&self) -> &[u8] {
            unsafe { std::slice::from_raw_parts(self.ptr, self.size) }
        }

        fn as_mut_slice(&mut self) -> &mut [u8] {
            unsafe { std::slice::from_raw_parts_mut(self.ptr, self.size) }
        }
    }

    impl Drop for ShmMapping {
        fn drop(&mut self) {
            unsafe { libc::munmap(self.ptr as *mut _, self.size) };
        }
    }

    unsafe impl Send for ShmMapping {}
    unsafe impl Sync for ShmMapping {}

    /// Creates a memfd and truncates it to the given size.
    fn create_memfd(size: usize) -> Result<OwnedFd> {
        let fd = unsafe {
            libc::syscall(
                libc::SYS_memfd_create,
                c"megadisplay".as_ptr(),
                0u32,
            )
        };
        if fd < 0 {
            bail!("memfd_create failed: {}", std::io::Error::last_os_error());
        }
        let fd = unsafe { OwnedFd::from_raw_fd(fd as i32) };
        let result = unsafe { libc::ftruncate(fd.as_fd().as_raw_fd(), size as i64) };
        if result != 0 {
            bail!("ftruncate failed: {}", std::io::Error::last_os_error());
        }
        Ok(fd)
    }

    /// Wayland screencopy capture — connects to the compositor and captures frames.
    pub struct WaylandCapture {
        conn: Connection,
        queue: wayland_client::EventQueue<CaptureState>,
        qh: QueueHandle<CaptureState>,
        state: CaptureState,
        screencopy_manager: zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1,
        shm: wl_shm::WlShm,
        output: wl_output::WlOutput,
        pool: Option<wl_shm_pool::WlShmPool>,
        buffer: Option<wl_buffer::WlBuffer>,
        shm_fd: Option<OwnedFd>,
        shm_map: Option<ShmMapping>,
        shm_size: usize,
        capture_width: u32,
        capture_height: u32,
        capture_stride: u32,
    }

    impl WaylandCapture {
        /// Connect to the Wayland display and bind required globals.
        pub fn connect() -> Result<Self> {
            let conn = Connection::connect_to_env()
                .context("Failed to connect to Wayland display (WAYLAND_DISPLAY not set?)")?;

            let (globals, queue) =
                registry_queue_init::<CaptureState>(&conn)
                    .context("Failed to initialize Wayland registry")?;

            let qh = queue.handle();

            // Bind required globals
            let shm: wl_shm::WlShm = globals
                .bind(&qh, 1..=1, ())
                .context("wl_shm not advertised by compositor")?;

            let screencopy_manager: zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1 =
                globals
                    .bind(&qh, 1..=3, ())
                    .context("zwlr_screencopy_manager_v1 not advertised — compositor does not support wlr-screencopy")?;

            let output: wl_output::WlOutput = globals
                .bind(&qh, 1..=1, ())
                .context("No wl_output found")?;

            info!("Connected to Wayland display, screencopy bound");

            Ok(Self {
                conn,
                queue,
                qh,
                state: CaptureState::new(),
                screencopy_manager,
                shm,
                output,
                pool: None,
                buffer: None,
                shm_fd: None,
                shm_map: None,
                shm_size: 0,
                capture_width: 0,
                capture_height: 0,
                capture_stride: 0,
            })
        }

        /// Capture a single frame into the provided buffer (BGRA format).
        ///
        /// The buffer is resized to fit the captured frame. Returns (width, height, stride).
        pub fn capture_frame(&mut self, buf: &mut Vec<u8>) -> Result<(u32, u32, u32)> {
            self.state.reset();

            // Create screencopy frame
            let frame = self.screencopy_manager.capture_output(
                0, // overlay_cursor = false
                &self.output,
                &self.qh,
                (),
            );

            // Dispatch events until we get buffer info and buffer_done
            // For v1/v2, buffer_done may not be sent; we handle both cases
            let mut iterations = 0;
            while !self.state.buffer_done && !self.state.have_buffer {
                iterations += 1;
                if iterations > 1000 {
                    bail!("Timeout waiting for screencopy buffer info");
                }
                self.queue
                    .dispatch_pending(&mut self.state)
                    .context("Failed to dispatch Wayland events")?;
            }

            // If buffer_done wasn't sent (v1/v2), proceed after buffer info
            // For v3, wait for buffer_done
            if !self.state.buffer_done && self.state.have_buffer {
                // Try a few more dispatches to see if buffer_done comes
                for _ in 0..5 {
                    if self.state.buffer_done {
                        break;
                    }
                    let _ = self.queue.dispatch_pending(&mut self.state);
                }
                // If still no buffer_done, proceed anyway (v1/v2 compat)
            }

            let width = self.state.frame_width;
            let height = self.state.frame_height;
            let stride = self.state.frame_stride;
            let format = self.state.frame_format;

            if width == 0 || height == 0 || stride == 0 {
                bail!("Invalid frame dimensions from screencopy");
            }

            // Verify format is XRGB8888 (0x34325258) — the most common format
            if format != 0x34325258 {
                bail!(
                    "Unsupported buffer format: 0x{:08X} (expected XRGB8888)",
                    format
                );
            }

            let needed_size = (stride * height) as usize;

            // Recreate shm if size changed
            if self.shm_size < needed_size || self.pool.is_none() {
                // Destroy old buffer/pool
                if let Some(buf) = self.buffer.take() {
                    buf.destroy();
                }
                if let Some(pool) = self.pool.take() {
                    pool.destroy();
                }
                self.shm_map.take();
                self.shm_fd.take();

                // Create new shm
                let shm_size = needed_size;
                let fd = create_memfd(shm_size)?;
                let map = unsafe { ShmMapping::new(&fd, shm_size)? };

                let pool = self.shm.create_pool(
                    fd.as_fd(),
                    shm_size as i32,
                    &self.qh,
                    (),
                );

                self.shm_fd = Some(fd);
                self.shm_map = Some(map);
                self.pool = Some(pool);
                self.shm_size = shm_size;
                self.capture_width = width;
                self.capture_height = height;
                self.capture_stride = stride;

                debug!("Created shm pool: {} bytes", shm_size);
            }

            // Create or recreate buffer if dimensions changed
            let need_new_buffer = self.buffer.is_none()
                || width != self.capture_width
                || height != self.capture_height
                || stride != self.capture_stride;

            if need_new_buffer {
                if let Some(buf) = self.buffer.take() {
                    buf.destroy();
                }
                let pool = self.pool.as_ref().unwrap();
                let buffer = pool.create_buffer(
                    0,
                    width as i32,
                    height as i32,
                    stride as i32,
                    wl_shm::Format::Xrgb8888,
                    &self.qh,
                    (),
                );
                self.buffer = Some(buffer);
                self.capture_width = width;
                self.capture_height = height;
                self.capture_stride = stride;
            }

            // Copy the frame into our buffer
            let buffer = self.buffer.as_ref().unwrap();
            frame.copy(buffer);

            // Wait for ready or failed
            iterations = 0;
            while !self.state.frame_ready && !self.state.frame_failed {
                iterations += 1;
                if iterations > 10000 {
                    bail!("Timeout waiting for screencopy ready");
                }
                self.queue
                    .dispatch_pending(&mut self.state)
                    .context("Failed to dispatch Wayland events during copy")?;
            }

            if self.state.frame_failed {
                frame.destroy();
                bail!("Screencopy frame capture failed");
            }

            // Copy from shm into the output buffer
            let shm_map = self.shm_map.as_ref().unwrap();
            let src = shm_map.as_slice();
            let copy_size = (stride as usize) * (height as usize);
            buf.resize(copy_size, 0);
            buf.copy_from_slice(&src[..copy_size]);

            // Handle Y-invert if needed
            if self.state.y_invert {
                let row_len = stride as usize;
                let h = height as usize;
                for y in 0..(h / 2) {
                    let (top, bot) = buf.split_at_mut((h - 1 - y) * row_len);
                    let row_a = &mut top[y * row_len..(y + 1) * row_len];
                    let row_b = &mut bot[..row_len];
                    row_a.swap_with_slice(row_b);
                }
            }

            frame.destroy();
            Ok((width, height, stride))
        }
    }

}
