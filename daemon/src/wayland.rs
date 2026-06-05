//! Wayland screencopy integration — captures frames from a compositor output.
//!
//! Uses the wlr-screencopy-unstable-v1 protocol to capture screen content
//! into a shared memory buffer. The captured BGRA data can then be fed to
//! the H.264 encoder.

#[cfg(feature = "wayland")]
pub mod screencopy {
    use anyhow::{bail, Context, Result};
    use std::os::fd::{AsFd, AsRawFd, FromRawFd, OwnedFd};
    use std::time::{Duration, Instant};
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
    pub struct CaptureState {
        frame_ready: bool,
        frame_failed: bool,
        frame_format: u32,
        frame_width: u32,
        frame_height: u32,
        frame_stride: u32,
        y_invert: bool,
        have_buffer: bool,
        buffer_done: bool,
        /// Maps wl_output Wayland global name → connector name string.
        /// Keyed by the global name (u32) passed as user data when binding each wl_output.
        /// Using u32 avoids WlOutput Hash/Eq issues across clones.
        output_names: std::collections::HashMap<u32, String>,
    }

    impl CaptureState {
        fn new() -> Self {
            Self {
                frame_ready: false,
                frame_failed: false,
                frame_format: 0,
                frame_width: 0,
                frame_height: 0,
                frame_stride: 0,
                y_invert: false,
                have_buffer: false,
                buffer_done: false,
                output_names: std::collections::HashMap::new(),
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

    impl Dispatch<wl_output::WlOutput, u32> for CaptureState {
        fn event(
            state: &mut Self,
            _output: &wl_output::WlOutput,
            event: wl_output::Event,
            data: &u32,
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
            match event {
                wl_output::Event::Name { ref name } => {
                    debug!("wl_output Name event: global_id={} name='{}'", data, name);
                    if !name.is_empty() {
                        state.output_names.insert(*data, name.clone());
                    }
                }
                wl_output::Event::Description { ref description } => {
                    debug!("wl_output Description event: global_id={} desc='{}'", data, description);
                    if !description.is_empty() {
                        // Only insert if no Name was provided
                        state.output_names.entry(*data).or_insert(description.clone());
                    }
                }
                _ => {}
            }
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

    /// Find a global by interface name and return its registry name (u32).
    fn find_global(
        globals: &wayland_client::globals::GlobalList,
        interface: &str,
    ) -> u32 {
        globals
            .contents()
            .clone_list()
            .into_iter()
            .find(|g| g.interface == interface)
            .map(|g| g.name)
            .unwrap_or_else(|| panic!("{} not found in registry", interface))
    }

    /// Wayland screencopy capture — connects to the compositor and captures frames.
    pub struct WaylandCapture {
        #[allow(dead_code)]
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
        last_wait_ms: f32,
        last_copy_ms: f32,
    }

    impl WaylandCapture {
        /// Connect to the Wayland display and bind required globals.
        ///
        /// If `output_name` is specified, retries for up to 5 seconds to allow the
        /// compositor time to advertise the newly-created virtual output in the registry.
        pub fn connect(output_name: Option<String>) -> Result<Self> {
            let deadline = Instant::now() + Duration::from_secs(5);
            let retry_interval = Duration::from_millis(250);

            loop {
                match Self::try_connect(output_name.clone()) {
                    Ok(cap) => return Ok(cap),
                    Err(e) => {
                        let remaining = deadline.saturating_duration_since(Instant::now());
                        if remaining.is_zero() {
                            return Err(e);
                        }
                        warn!("Wayland connect failed ({e:#}), retrying in {}ms...",
                            retry_interval.as_millis());
                        std::thread::sleep(retry_interval);
                    }
                }
            }
        }

        /// Single attempt to connect to Wayland and locate the target output.
        fn try_connect(output_name: Option<String>) -> Result<Self> {
            let conn = Connection::connect_to_env()
                .context("Failed to connect to Wayland display (WAYLAND_DISPLAY not set?)")?;

            let (globals, mut queue) =
                registry_queue_init::<CaptureState>(&conn)
                    .context("Failed to initialize Wayland registry")?;

            let qh = queue.handle();

            // Bind required globals
            let registry = globals.registry();
            let shm_global = find_global(&globals, "wl_shm");
            let shm: wl_shm::WlShm =
                registry.bind::<wl_shm::WlShm, _, _>(shm_global, 1, &qh, ());

            let sc_global = find_global(&globals, "zwlr_screencopy_manager_v1");
            let screencopy_manager =
                registry.bind::<zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1, _, _>(
                    sc_global, 3, &qh, ());

            // Bind all wl_outputs using the registry directly (NOT GlobalList::bind,
            // which always returns the first matching global). Pass the Wayland global
            // name as user data so we can correlate Name events. Version 4 is needed
            // for wl_output::Name and wl_output::Description events.
            let registry = globals.registry();
            let mut global_id_to_output: Vec<(u32, wl_output::WlOutput)> = Vec::new();
            for global in globals.contents().clone_list() {
                if global.interface == "wl_output" {
                    let version = global.version.min(4);
                    let output: wl_output::WlOutput =
                        registry.bind(global.name, version, &qh, global.name);
                    global_id_to_output.push((global.name, output));
                }
            }
            // Sort by Wayland global name (ascending) — matches compositor creation order.
            global_id_to_output.sort_by_key(|(id, _)| *id);

            if global_id_to_output.is_empty() {
                bail!("No wl_output found");
            }

            let mut state = CaptureState::new();

            // Two roundtrips ensure all wl_output initial events (Name, Description, Done) arrive.
            queue.roundtrip(&mut state).context("Roundtrip 1 failed")?;
            queue.roundtrip(&mut state).context("Roundtrip 2 failed")?;

            debug!("Discovered {} wl_output globals (sorted by global ID):", global_id_to_output.len());
            for (gid, _out) in &global_id_to_output {
                let name = state.output_names.get(gid).map(|s| s.as_str()).unwrap_or("<no-name>");
                debug!("  global_id={} name='{}'", gid, name);
            }

            let target_output = if let Some(ref name) = output_name {
                // Match by wl_output::Name event (v4) — Hyprland sends the connector
                // name (e.g. "MEGADISPLAY", "DP-3") which matches hyprctl monitors.
                let by_name = global_id_to_output.iter().find(|(gid, _)| {
                    state.output_names.get(gid).map(|n| n == name).unwrap_or(false)
                }).map(|(_, o)| o.clone());

                if let Some(ref _out) = by_name {
                    info!("Selected output '{}' by wl_output name event", name);
                } else {
                    let available: Vec<String> = global_id_to_output.iter()
                        .map(|(gid, _)| format!("global_id={} name='{}'",
                            gid, state.output_names.get(gid).map(|s| s.as_str()).unwrap_or("?")))
                        .collect();
                    bail!(
                        "Could not find Wayland output '{}'. \
                         Available outputs:\n  {}",
                        name, available.join("\n  ")
                    );
                }
                by_name
            } else {
                info!("No output name specified, using first wl_output global");
                global_id_to_output.into_iter().next().map(|(_, o)| o)
            };

            let output = target_output.ok_or_else(|| anyhow::anyhow!("Target output not found"))?;
            let name_str = output_name.clone().unwrap_or_else(|| "unknown".to_string());
            info!("Connected to Wayland display, capturing output: {}", name_str);

            Ok(Self {
                conn,
                queue,
                qh,
                state,
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
                last_wait_ms: 0.0,
                last_copy_ms: 0.0,
            })
        }

        pub fn last_timing(&self) -> (f32, f32) {
            (self.last_wait_ms, self.last_copy_ms)
        }

        /// Capture a single frame into the provided buffer (BGRA format).
        ///
        /// The buffer is resized to fit the captured frame. Returns (width, height, stride).
        ///
        /// Uses a fast path after the first frame: reuses the existing wl_buffer
        /// and skips the buffer-info roundtrip, saving one compositor round-trip
        /// (~2-5ms) per frame.
        pub fn capture_frame(&mut self, buf: &mut Vec<u8>) -> Result<(u32, u32, u32)> {
            self.state.reset();

            let frame = self.screencopy_manager.capture_output(
                0, // overlay_cursor = false
                &self.output,
                &self.qh,
                (),
            );

            let can_reuse = self.buffer.is_some()
                && self.pool.is_some()
                && self.capture_width > 0;

            if !can_reuse {
                // SLOW PATH: first frame or buffer invalidated.
                // Roundtrip to discover buffer dimensions.
                self.queue.roundtrip(&mut self.state)
                    .context("Failed to roundtrip for buffer info")?;
                if !self.state.have_buffer {
                    frame.destroy();
                    bail!("Failed to get screencopy buffer info");
                }

                let width = self.state.frame_width;
                let height = self.state.frame_height;
                let stride = self.state.frame_stride;
                let format = self.state.frame_format;

                if width == 0 || height == 0 || stride == 0 {
                    frame.destroy();
                    bail!("Invalid frame dimensions from screencopy");
                }

                // Verify format is XRGB8888 or ARGB8888
                if format != 0 && format != 1 && format != 0x34325258 && format != 0x34325241 {
                    frame.destroy();
                    bail!(
                        "Unsupported buffer format: 0x{:08X} (expected XRGB8888 or ARGB8888)",
                        format
                    );
                }

                let needed_size = (stride * height) as usize;

                // Recreate shm if size changed
                if self.shm_size < needed_size || self.pool.is_none() {
                    if let Some(b) = self.buffer.take() { b.destroy(); }
                    if let Some(p) = self.pool.take() { p.destroy(); }
                    self.shm_map.take();
                    self.shm_fd.take();

                    let fd = create_memfd(needed_size)?;
                    let map = unsafe { ShmMapping::new(&fd, needed_size)? };
                    let pool = self.shm.create_pool(fd.as_fd(), needed_size as i32, &self.qh, ());
                    self.shm_fd = Some(fd);
                    self.shm_map = Some(map);
                    self.pool = Some(pool);
                    self.shm_size = needed_size;
                    debug!("Created shm pool: {} bytes", needed_size);
                }

                // Create buffer
                if self.buffer.is_none() {
                    let pool = self.pool.as_ref().unwrap();
                    let fmt = if format == 0 || format == 0x34325241 {
                        wl_shm::Format::Argb8888
                    } else {
                        wl_shm::Format::Xrgb8888
                    };
                    let buffer = pool.create_buffer(
                        0, width as i32, height as i32, stride as i32, fmt, &self.qh, (),
                    );
                    self.buffer = Some(buffer);
                }

                self.capture_width = width;
                self.capture_height = height;
                self.capture_stride = stride;
            }

            // COMMON PATH: copy frame to buffer, wait for ready.
            // On the fast path we skip straight here without any roundtrip.
            let buffer = self.buffer.as_ref().unwrap();
            frame.copy(buffer);

            let wait_start = Instant::now();

            while !self.state.frame_ready && !self.state.frame_failed {
                self.queue
                    .blocking_dispatch(&mut self.state)
                    .context("Failed to dispatch Wayland events during copy")?;
            }

            self.last_wait_ms = wait_start.elapsed().as_secs_f32() * 1000.0;

            if self.state.frame_failed {
                frame.destroy();
                // Buffer might be stale — invalidate for next frame
                if let Some(b) = self.buffer.take() { b.destroy(); }
                self.capture_width = 0;
                bail!("Screencopy frame capture failed");
            }

            // If dimensions changed (detected via buffer event during dispatch),
            // invalidate buffer so next frame takes the slow path to recreate.
            if can_reuse && self.state.have_buffer
                && (self.state.frame_width != self.capture_width
                    || self.state.frame_height != self.capture_height
                    || self.state.frame_stride != self.capture_stride)
            {
                debug!(
                    "Screencopy dimensions changed: {}x{} → {}x{}, will recreate buffer",
                    self.capture_width, self.capture_height,
                    self.state.frame_width, self.state.frame_height,
                );
                if let Some(b) = self.buffer.take() { b.destroy(); }
                self.capture_width = 0;
            }

            let width = self.capture_width;
            let height = self.capture_height;
            let stride = self.capture_stride;

            // Copy from shm into the output buffer
            let copy_start = Instant::now();
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
            self.last_copy_ms = copy_start.elapsed().as_secs_f32() * 1000.0;
            Ok((width, height, stride))
        }
    }

}
