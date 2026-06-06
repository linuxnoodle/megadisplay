//! Wayland screencopy integration — captures frames from a compositor output.
//!
//! Uses the wlr-screencopy-unstable-v1 protocol to capture screen content.
//! Prefers dmabuf (zero-copy GPU buffers) for lower latency; falls back to SHM.

#[cfg(feature = "wayland")]
pub mod screencopy {
    use anyhow::{Context, Result, bail};
    use std::os::fd::{AsFd, AsRawFd, FromRawFd, OwnedFd};
    use std::time::{Duration, Instant};
    use tracing::{debug, info, warn};

    use wayland_client::{
        Connection, Dispatch, QueueHandle,
        globals::registry_queue_init,
        protocol::{wl_buffer, wl_output, wl_registry, wl_shm, wl_shm_pool},
    };
    use wayland_protocols::wp::linux_dmabuf::zv1::client::{
        zwp_linux_buffer_params_v1, zwp_linux_dmabuf_v1,
    };
    use wayland_protocols_wlr::screencopy::v1::client::{
        zwlr_screencopy_frame_v1, zwlr_screencopy_manager_v1,
    };

    // ── GBM FFI ────────────────────────────────────────────────────────────

    #[link(name = "gbm")]
    unsafe extern "C" {
        fn gbm_create_device(fd: libc::c_int) -> *mut std::ffi::c_void;
        fn gbm_device_destroy(device: *mut std::ffi::c_void);
        fn gbm_bo_create(
            device: *mut std::ffi::c_void,
            width: u32,
            height: u32,
            format: u32,
            usage: u32,
        ) -> *mut std::ffi::c_void;
        fn gbm_bo_destroy(bo: *mut std::ffi::c_void);
        fn gbm_bo_get_fd(bo: *mut std::ffi::c_void) -> libc::c_int;
        fn gbm_bo_get_stride(bo: *mut std::ffi::c_void) -> u32;
        fn gbm_bo_get_modifier(bo: *mut std::ffi::c_void) -> u64;
        fn gbm_bo_map(
            bo: *mut std::ffi::c_void,
            x: u32,
            y: u32,
            width: u32,
            height: u32,
            usage: u32,
            stride: *mut u32,
            map_data: *mut *mut std::ffi::c_void,
        ) -> *mut std::ffi::c_void;
        fn gbm_bo_unmap(bo: *mut std::ffi::c_void, map_data: *mut std::ffi::c_void);
    }

    const GBM_BO_USE_LINEAR: u32 = 1 << 4;
    const GBM_BO_USE_RENDERING: u32 = 1 << 2;
    const GBM_BO_TRANSFER_READ: u32 = 1 << 0;
    #[allow(dead_code)]
    const DRM_FORMAT_XRGB8888: u32 = 0x34325258;
    #[allow(dead_code)]
    const DRM_FORMAT_ARGB8888: u32 = 0x34325241;
    #[allow(dead_code)]
    const DRM_FORMAT_MOD_LINEAR: u64 = 0;

    /// RAII wrapper for GBM device.
    struct GbmDevice(*mut std::ffi::c_void);
    unsafe impl Send for GbmDevice {}
    impl Drop for GbmDevice {
        fn drop(&mut self) {
            if !self.0.is_null() {
                unsafe { gbm_device_destroy(self.0) };
            }
        }
    }

    /// RAII wrapper for GBM buffer object.
    struct GbmBo(*mut std::ffi::c_void);
    unsafe impl Send for GbmBo {}
    impl Drop for GbmBo {
        fn drop(&mut self) {
            if !self.0.is_null() {
                unsafe { gbm_bo_destroy(self.0) };
            }
        }
    }

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
        have_dmabuf: bool,
        dmabuf_format: u32,
        dmabuf_width: u32,
        dmabuf_height: u32,
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
                have_dmabuf: false,
                dmabuf_format: 0,
                dmabuf_width: 0,
                dmabuf_height: 0,
                buffer_done: false,
                output_names: std::collections::HashMap::new(),
            }
        }

        fn reset(&mut self) {
            self.have_buffer = false;
            self.have_dmabuf = false;
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
                    debug!(
                        "wl_output Description event: global_id={} desc='{}'",
                        data, description
                    );
                    if !description.is_empty() {
                        // Only insert if no Name was provided
                        state
                            .output_names
                            .entry(*data)
                            .or_insert(description.clone());
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
                Event::Buffer {
                    format,
                    width,
                    height,
                    stride,
                } => {
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
                Event::LinuxDmabuf {
                    format,
                    width,
                    height,
                } => {
                    state.dmabuf_format = format;
                    state.dmabuf_width = width;
                    state.dmabuf_height = height;
                    state.have_dmabuf = true;
                    debug!(
                        "screencopy linux_dmabuf: format=0x{:08X} {}x{}",
                        format, width, height
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
                Event::Damage { .. } => {}
                _ => {}
            }
        }
    }

    impl Dispatch<zwp_linux_dmabuf_v1::ZwpLinuxDmabufV1, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &zwp_linux_dmabuf_v1::ZwpLinuxDmabufV1,
            _event: zwp_linux_dmabuf_v1::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
        }
    }

    impl Dispatch<zwp_linux_buffer_params_v1::ZwpLinuxBufferParamsV1, ()> for CaptureState {
        fn event(
            _state: &mut Self,
            _proxy: &zwp_linux_buffer_params_v1::ZwpLinuxBufferParamsV1,
            _event: zwp_linux_buffer_params_v1::Event,
            _data: &(),
            _conn: &Connection,
            _qhandle: &QueueHandle<Self>,
        ) {
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
            // Pin pages in RAM to avoid page-fault spikes on copy (~1ms→6ms jitter without this)
            unsafe { libc::mlock(ptr, size) };
            Ok(Self {
                ptr: ptr as *mut u8,
                size,
            })
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
        let fd = unsafe { libc::syscall(libc::SYS_memfd_create, c"megadisplay".as_ptr(), 0u32) };
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
    fn find_global(globals: &wayland_client::globals::GlobalList, interface: &str) -> u32 {
        globals
            .contents()
            .clone_list()
            .into_iter()
            .find(|g| g.interface == interface)
            .map(|g| g.name)
            .unwrap_or_else(|| panic!("{} not found in registry", interface))
    }

    /// Open a DRM render node and create a GBM device.
    /// Tries /dev/dri/renderD128 first, then higher numbers.
    fn open_gbm_device() -> Option<GbmDevice> {
        use std::fs::OpenOptions;
        use std::os::fd::IntoRawFd;

        for n in 128..200 {
            let path = format!("/dev/dri/renderD{}", n);
            match OpenOptions::new().read(true).write(true).open(&path) {
                Ok(file) => {
                    let fd = file.into_raw_fd();
                    let dev = unsafe { gbm_create_device(fd) };
                    if dev.is_null() {
                        unsafe { libc::close(fd) };
                        continue;
                    }
                    debug!("Opened GBM device on {}", path);
                    return Some(GbmDevice(dev));
                }
                Err(_) => break,
            }
        }
        warn!("No DRM render node found — dmabuf capture disabled");
        None
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
        dmabuf_manager: Option<zwp_linux_dmabuf_v1::ZwpLinuxDmabufV1>,
        gbm_device: Option<GbmDevice>,
        output: wl_output::WlOutput,
        pool: Option<wl_shm_pool::WlShmPool>,
        buffer: Option<wl_buffer::WlBuffer>,
        shm_fd: Option<OwnedFd>,
        shm_map: Option<ShmMapping>,
        shm_size: usize,
        // dmabuf path
        dmabuf_pool: Vec<(GbmBo, wl_buffer::WlBuffer, u32, i32)>,
        dmabuf_pool_idx: usize,
        use_dmabuf: bool,
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
                        warn!(
                            "Wayland connect failed ({e:#}), retrying in {}ms...",
                            retry_interval.as_millis()
                        );
                        std::thread::sleep(retry_interval);
                    }
                }
            }
        }

        /// Single attempt to connect to Wayland and locate the target output.
        fn try_connect(output_name: Option<String>) -> Result<Self> {
            let conn = Connection::connect_to_env()
                .context("Failed to connect to Wayland display (WAYLAND_DISPLAY not set?)")?;

            let (globals, mut queue) = registry_queue_init::<CaptureState>(&conn)
                .context("Failed to initialize Wayland registry")?;

            let qh = queue.handle();

            // Bind required globals
            let registry = globals.registry();
            let shm_global = find_global(&globals, "wl_shm");
            let shm: wl_shm::WlShm = registry.bind::<wl_shm::WlShm, _, _>(shm_global, 1, &qh, ());

            let sc_global = find_global(&globals, "zwlr_screencopy_manager_v1");
            let screencopy_manager = registry
                .bind::<zwlr_screencopy_manager_v1::ZwlrScreencopyManagerV1, _, _>(
                    sc_global,
                    3,
                    &qh,
                    (),
                );

            // Try to bind zwp_linux_dmabuf_v1 (optional — for dmabuf capture)
            let dmabuf_manager = globals
                .contents()
                .clone_list()
                .iter()
                .find(|g| g.interface == "zwp_linux_dmabuf_v1")
                .map(|g| {
                    registry.bind::<zwp_linux_dmabuf_v1::ZwpLinuxDmabufV1, _, _>(
                        g.name,
                        g.version.min(4),
                        &qh,
                        (),
                    )
                });

            // Try to open GBM device from DRM render node
            let gbm_device = open_gbm_device();

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

            debug!(
                "Discovered {} wl_output globals (sorted by global ID):",
                global_id_to_output.len()
            );
            for (gid, _out) in &global_id_to_output {
                let name = state
                    .output_names
                    .get(gid)
                    .map(|s| s.as_str())
                    .unwrap_or("<no-name>");
                debug!("  global_id={} name='{}'", gid, name);
            }

            let target_output = if let Some(ref name) = output_name {
                // Match by wl_output::Name event (v4) — Hyprland sends the connector
                // name (e.g. "MEGADISPLAY", "DP-3") which matches hyprctl monitors.
                let by_name = global_id_to_output
                    .iter()
                    .find(|(gid, _)| {
                        state
                            .output_names
                            .get(gid)
                            .map(|n| n == name)
                            .unwrap_or(false)
                    })
                    .map(|(_, o)| o.clone());

                if let Some(ref _out) = by_name {
                    info!("Selected output '{}' by wl_output name event", name);
                } else {
                    let available: Vec<String> = global_id_to_output
                        .iter()
                        .map(|(gid, _)| {
                            format!(
                                "global_id={} name='{}'",
                                gid,
                                state
                                    .output_names
                                    .get(gid)
                                    .map(|s| s.as_str())
                                    .unwrap_or("?")
                            )
                        })
                        .collect();
                    bail!(
                        "Could not find Wayland output '{}'. \
                         Available outputs:\n  {}",
                        name,
                        available.join("\n  ")
                    );
                }
                by_name
            } else {
                info!("No output name specified, using first wl_output global");
                global_id_to_output.into_iter().next().map(|(_, o)| o)
            };

            let output = target_output.ok_or_else(|| anyhow::anyhow!("Target output not found"))?;
            let name_str = output_name.clone().unwrap_or_else(|| "unknown".to_string());
            info!(
                "Connected to Wayland display, capturing output: {}",
                name_str
            );

            Ok(Self {
                conn,
                queue,
                qh,
                state,
                screencopy_manager,
                shm,
                dmabuf_manager,
                gbm_device,
                output,
                pool: None,
                buffer: None,
                shm_fd: None,
                shm_map: None,
                shm_size: 0,
                dmabuf_pool: Vec::new(),
                dmabuf_pool_idx: 0,
                use_dmabuf: false,
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
        /// Prefers dmabuf (zero-copy GPU) when available; falls back to SHM.
        /// Returns (width, height, stride).
        pub fn capture_frame(&mut self, buf: &mut Vec<u8>) -> Result<crate::display::CaptureResult> {
            self.state.reset();

            let frame = self.screencopy_manager.capture_output(
                0, // overlay_cursor = false
                &self.output,
                &self.qh,
                (),
            );

            // Check if we can reuse existing buffers
            let dmabuf_ready = self.use_dmabuf
                && !self.dmabuf_pool.is_empty()
                && self.capture_width > 0;
            let shm_ready = !self.use_dmabuf
                && self.buffer.is_some()
                && self.pool.is_some()
                && self.capture_width > 0;

            if !dmabuf_ready && !shm_ready {
                // SLOW PATH: first frame or buffer invalidated.
                // Roundtrip to discover buffer dimensions + dmabuf capabilities.
                self.queue
                    .roundtrip(&mut self.state)
                    .context("Failed to roundtrip for buffer info")?;

                // Decide dmabuf vs SHM
                let can_dmabuf = self.dmabuf_manager.is_some()
                    && self.gbm_device.is_some()
                    && self.state.have_dmabuf
                    && self.state.dmabuf_width > 0
                    && self.state.dmabuf_height > 0;

                let target_format = if can_dmabuf {
                    self.state.dmabuf_format
                } else if self.state.have_buffer {
                    self.state.frame_format
                } else {
                    frame.destroy();
                    bail!("Failed to get screencopy buffer info (no SHM or dmabuf)");
                };

                let (width, height) = if can_dmabuf {
                    (self.state.dmabuf_width, self.state.dmabuf_height)
                } else {
                    (self.state.frame_width, self.state.frame_height)
                };

                if width == 0 || height == 0 {
                    frame.destroy();
                    bail!("Invalid frame dimensions from screencopy");
                }

                if can_dmabuf {
                    match self.setup_dmabuf(width, height, target_format) {
                        Ok(()) => {
                            self.use_dmabuf = true;
                            self.capture_width = width;
                            self.capture_height = height;
                            info!(
                                "Using dmabuf capture: {}x{} format=0x{:08X}",
                                width, height, target_format
                            );
                        }
                        Err(e) => {
                            warn!("dmabuf setup failed ({:#}), falling back to SHM", e);
                            self.use_dmabuf = false;
                            self.setup_shm(
                                width,
                                height,
                                self.state.frame_stride,
                                self.state.frame_format,
                            )?;
                        }
                    }
                } else {
                    self.use_dmabuf = false;
                    let stride = self.state.frame_stride;
                    let shm_format = self.state.frame_format;
                    // Verify SHM format
                    if shm_format != 0
                        && shm_format != 1
                        && shm_format != 0x34325258
                        && shm_format != 0x34325241
                    {
                        frame.destroy();
                        bail!(
                            "Unsupported SHM buffer format: 0x{:08X} \
                             (expected XRGB8888 or ARGB8888)",
                            shm_format
                        );
                    }
                    self.setup_shm(width, height, stride, shm_format)?;
                }
            }

            // COMMON PATH: copy frame to buffer, wait for ready.
            let copy_start_total = Instant::now();

            let pool_idx = if self.use_dmabuf {
                self.dmabuf_pool_idx
            } else {
                0
            };

            if self.use_dmabuf {
                let dmabuf_buf = &self.dmabuf_pool[pool_idx].1;
                frame.copy(dmabuf_buf);
            } else {
                let buffer = self.buffer.as_ref().unwrap();
                frame.copy(buffer);
            }

            let wait_start = Instant::now();
            while !self.state.frame_ready && !self.state.frame_failed {
                self.queue
                    .blocking_dispatch(&mut self.state)
                    .context("Failed to dispatch Wayland events during copy")?;
            }
            self.last_wait_ms = wait_start.elapsed().as_secs_f32() * 1000.0;

            if self.state.frame_failed {
                frame.destroy();
                self.invalidate_buffers();
                bail!("Screencopy frame capture failed");
            }

            // Check for dimension changes on reused buffers
            if self.state.have_buffer
                && (self.state.frame_width != self.capture_width
                    || self.state.frame_height != self.capture_height)
            {
                debug!(
                    "Screencopy dimensions changed: {}x{} → {}x{}, will recreate",
                    self.capture_width,
                    self.capture_height,
                    self.state.frame_width,
                    self.state.frame_height,
                );
                self.invalidate_buffers();
                frame.destroy();
                bail!("Screencopy dimensions changed mid-capture");
            }

            let width = self.capture_width;
            let height = self.capture_height;

            let copy_start = Instant::now();

            if self.use_dmabuf {
                let (_, _, stride, fd) = self.dmabuf_pool[pool_idx];
                
                // Advance pool idx
                self.dmabuf_pool_idx = (self.dmabuf_pool_idx + 1) % self.dmabuf_pool.len();
                
                // Dup fd for GStreamer
                let dup_fd = unsafe { libc::dup(fd) };
                if dup_fd < 0 {
                    frame.destroy();
                    bail!("Failed to dup dmabuf fd");
                }

                frame.destroy();
                self.last_copy_ms = copy_start.elapsed().as_secs_f32() * 1000.0;
                let _ = copy_start_total;
                
                Ok(crate::display::CaptureResult::DmaBuf(crate::display::DmaBufFrame {
                    fd: dup_fd,
                    width,
                    height,
                    stride,
                    format: self.state.dmabuf_format,
                }))
            } else {
                let stride = self.capture_stride;
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
                let _ = copy_start_total;
                
                Ok(crate::display::CaptureResult::Shm(stride))
            }
        }

        /// Set up dmabuf buffer pool for capturing.
        fn setup_dmabuf(&mut self, width: u32, height: u32, format: u32) -> Result<()> {
            let dev = self.gbm_device.as_ref().unwrap().0;

            // Clear old pool
            for (bo, buf, _, fd) in self.dmabuf_pool.drain(..) {
                buf.destroy();
                unsafe { 
                    libc::close(fd);
                    gbm_bo_destroy(bo.0); 
                }
            }

            // Create 3 buffers for zero-copy rotation
            for _ in 0..3 {
                // We MUST use GBM_BO_USE_LINEAR here!
                // Even though we aren't using CPU readback, we are pushing this buffer into GStreamer
                // via `appsrc` using standard `video/x-raw` caps. GStreamer assumes `video/x-raw` dmabufs
                // are linearly laid out in memory. If we use `GBM_BO_USE_RENDERING`, AMD driver applies
                // DCC compression/tiling which causes visual corruption as vertical lines.
                let bo = unsafe {
                    gbm_bo_create(
                        dev,
                        width,
                        height,
                        format,
                        GBM_BO_USE_LINEAR,
                    )
                };
                if bo.is_null() {
                    bail!("gbm_bo_create failed for pool");
                }

                let bo_stride = unsafe { gbm_bo_get_stride(bo) };
                let dmabuf_fd = unsafe { gbm_bo_get_fd(bo) };
                if dmabuf_fd < 0 {
                    unsafe { gbm_bo_destroy(bo) };
                    bail!("gbm_bo_get_fd failed");
                }

                let dmabuf_mgr = self.dmabuf_manager.as_ref().unwrap();
                let params = dmabuf_mgr.create_params(&self.qh, ());
                let modifier = unsafe { gbm_bo_get_modifier(bo) };
                let borrowed_fd = unsafe { std::os::fd::BorrowedFd::borrow_raw(dmabuf_fd) };
                
                params.add(
                    borrowed_fd,
                    0,
                    0,
                    bo_stride,
                    (modifier >> 32) as u32,
                    (modifier & 0xFFFFFFFF) as u32,
                );

                let dmabuf_buffer = params.create_immed(
                    width as i32,
                    height as i32,
                    format,
                    zwp_linux_buffer_params_v1::Flags::empty(),
                    &self.qh,
                    (),
                );

                self.dmabuf_pool.push((GbmBo(bo), dmabuf_buffer, bo_stride, dmabuf_fd));
            }

            self.dmabuf_pool_idx = 0;
            Ok(())
        }

        /// Set up SHM buffer for capturing (extracted from original capture_frame).
        fn setup_shm(&mut self, width: u32, height: u32, stride: u32, format: u32) -> Result<()> {
            let needed_size = (stride * height) as usize;

            // Recreate shm if size changed
            if self.shm_size < needed_size || self.pool.is_none() {
                if let Some(b) = self.buffer.take() {
                    b.destroy();
                }
                if let Some(p) = self.pool.take() {
                    p.destroy();
                }
                self.shm_map.take();
                self.shm_fd.take();

                let fd = create_memfd(needed_size)?;
                let map = unsafe { ShmMapping::new(&fd, needed_size)? };
                let pool = self
                    .shm
                    .create_pool(fd.as_fd(), needed_size as i32, &self.qh, ());
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
                    0,
                    width as i32,
                    height as i32,
                    stride as i32,
                    fmt,
                    &self.qh,
                    (),
                );
                self.buffer = Some(buffer);
            }

            self.capture_width = width;
            self.capture_height = height;
            self.capture_stride = stride;
            Ok(())
        }

        /// Invalidate all buffers — called on error or dimension change.
        fn invalidate_buffers(&mut self) {
            if let Some(b) = self.buffer.take() {
                b.destroy();
            }
            if let Some(p) = self.pool.take() {
                p.destroy();
            }
            for (bo, wl_buf, _, _) in self.dmabuf_pool.drain(..) {
                wl_buf.destroy();
                unsafe { gbm_bo_destroy(bo.0) };
            }
            self.shm_map.take();
            self.shm_fd.take();
            self.shm_size = 0;
            self.capture_width = 0;
            self.capture_stride = 0;
            self.use_dmabuf = false;
        }
    }
}
