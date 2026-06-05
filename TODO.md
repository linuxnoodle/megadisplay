# MegaDisplay TODO

Project: Open-source Linux/Wayland replacement for SuperDisplay, with a compatible Android client.
Targets: Arch Linux + Hyprland (host), Samsung Galaxy S9+ (tablet).

Status legend: `[ ]` pending · `[~]` in progress · `[x]` done · `[!]` blocked

## Confirmed decisions
- Host language/runtime: **Rust + smithay** (no GC pauses; native Wayland).
- Transport: **AOAP (Android Open Accessory Protocol)** for v1 — matches the original app's primary transport. TCP fallback possible via the same wire protocol. (Original uses AOAP, not ADB.)
- Video codec: **H.264 (AVC)** — the original app uses `video/avc` exclusively; no HEVC. We match for protocol compatibility.
- Input injection: **`InputManager.injectInputEvent` via shell-UID server** (scrcpy trick; works without root).
- Display mode: **Extend only** for v1 (Hyprland sees a virtual output via `wlr-virtual-output-manager-unstable-v1`); mirror mode deferred.
- Pen: **full fidelity** (pressure, tilt, orientation, barrel button).
- Hyprland input re-injection: **libei** (`LIBEI_ABSOLUTE`/`LIBEI_TABLET_TOOL`) when available, fall back to `uinput` virtual tablet.

## Phases

### Phase 0 — Workspace setup
- [x] Create directory tree under `re/`, `driver/`, `android/`.
- [x] Stand up TODO.md and REVERSE_ENGINEER.md.

### Phase 1 — Static extraction
- [x] `unzip *.apkm` → `re/android-apk/` (base.apk + 24 lang + 6 DPI splits; no arch splits).
- [x] `unzip base.apk` → `re/android-apk-base/` (classes.dex, classes2.dex, resources, AndroidManifest.xml).
- [x] Confirm **no native libraries** — app is pure Java/Kotlin.
- [x] Extract embedded CABs from installer → `re/windows-installer/cab_e27010.cab`, `cab_e540f0.cab` (deps only, no app binaries).
- [ ] `binwalk` + `msitools` on installer trailing data → recover main MSI + DLLs. [!] blocked on `pacman -S msitools binwalk` (needs sudo).
- [ ] Pull Windows-side DLLs (`*.dll`, `*.sys`) → `re/windows-dlls/`.
- [ ] Quick `strings -a` sweep across all binaries, into `re/notes/strings-*.txt`.

### Phase 2 — Deep RE
- [x] `jadx -d re/jadx-out re/android-apk/base.apk` → 63 decompiled Java sources.
- [x] `apktool d base.apk` → `re/apktool-out/` (smali + resources).
- [x] Decode AndroidManifest.xml → `re/notes/AndroidManifest.decoded.xml`.
- [x] Analyze all 63 jadx sources: Transport, MirrorClient, MirrorSession, AsyncDecoder, Input, Pointer, AOAP, TCP, etc.
- [x] Document complete wire protocol (handshake, framing, DataTypes, message layouts).
- [x] Document video pipeline (MediaCodec async, H.264, low-latency, vsync off).
- [x] Document input protocol (touch 8B/pointer, pen 11B, keyboard 5B, all normalizations).
- [x] Document performance dynamics (AOAP, dual streams, async decode, LZ4 cursor, etc.).
- [ ] `r2 -A` on Windows DLLs (after Phase 1 extraction).
- [ ] USB capture: `sudo modprobe usbmon && tshark -i usbmonX -w re/sniffs/session-*.pcapng`. [!] blocked on sudo.
- [ ] Match Java side ↔ wire bytes ↔ native side.

### Phase 3 — Documentation
- [x] REVERSE_ENGINEER.md — Android side complete (sections 1-10 + appendices).
- [ ] REVERSE_ENGINEER.md — Windows side (sections 2, pending extraction).
- [ ] REVERSE_ENGINEER.md — usbmon verification (pending capture).

### Phase 4 — Reimpl design
- [ ] Pin AOAP transport implementation strategy (libusb control transfer for AOAP handshake, then bulk transfers).
- [ ] Pin codec + container (H.264 Annex-B, raw NAL stream — confirmed from RE).
- [ ] Driver architecture: smithay state, virtual output, decoder thread, libei emitter, control socket.
- [ ] Android architecture: foreground service, MediaProjection, MediaCodec H.264 encoder, input injector.

### Phase 5 — Linux driver scaffold
- [ ] `cargo new --bin megadisplay-driver` with workspace.
- [ ] AOAP USB transport via `rusb` / `nusb`.
- [ ] Smithay virtual output via `wlr-virtual-output-manager-unstable-v1`.
- [ ] Tokio runtime, async I/O for USB bulk transfers.
- [ ] Decoder abstraction trait; v1 impl: `ffmpeg-next` (libavcodec H.264).

### Phase 6 — Android app scaffold
- [ ] Gradle project (`com.megadisplay.client`), `minSdk=29`, `targetSdk=35`.
- [ ] Foreground service with `FOREGROUND_SERVICE_MEDIA_PROJECTION`.
- [ ] AOAP transport (mirror of original app's `AOAPTransport`).
- [ ] TCP transport for ADB-reverse / wireless fallback.
- [ ] Permissions UI (Display + Recording + USB Accessory).

### Phase 7 — Video pipeline
- [ ] Android: `MediaProjection` → `VirtualDisplay` → `MediaCodec` H.264 encoder → wire.
- [ ] Driver: receive NAL stream → push to decoder → commit frame to virtual output.
- [ ] IDR request on first frame + on resync.

### Phase 8 — Input pipeline (touch + pen basics)
- [ ] Driver: libei absolute-pointer device + tablet tool/tablet pad.
- [ ] Wire events: pointer position, button state, contact state, axis deltas.
- [ ] Android: shell-UID server spawned via `adb shell` running `app_process` with `InputManager.injectInputEvent` reflection.

### Phase 9 — S-Pen full fidelity
- [ ] Map libinput evdev codes (ABS_PRESSURE, ABS_TILT_X/Y, BTN_STYLUS, BTN_TOOL_RUBBER, BTN_TOOL_PEN) onto wire events.
- [ ] Android side: MotionEvent.withPressure/Tilt + tool-type restoration.
- [ ] Round-trip test in Hyprland (Krita / Xournal++ on the virtual output).

### Phase 10 — Latency tuning
- [ ] Android: configure `MediaCodec` for low-latency (`KEY_LOW_LATENCY`, `KEY_MAX_B_FRAMES = 0`, `KEY_FRAME_RATE = 60`).
- [ ] Driver: dmabuf import via `wl_drm`/`linux-dmabuf-unstable-v1`; avoid GPU→CPU copies.
- [ ] Driver: request I-frame on input burst (interactive responsiveness).
- [ ] Dual-stream buffering (control 100KB + video 10MB) matching original.

### Phase 11 — Packaging & polish
- [ ] Arch `PKGBUILD` for the driver; systemd user unit.
- [ ] Signed release APK.
- [ ] README with Hyprland setup snippet (`exec-once = megadisplay-driver`).

## Open questions / blockers
- [!] `sudo pacman -S msitools binwalk` needed for Windows installer MSI extraction (needs sudo password).
- [!] `sudo modprobe usbmon` needed before USB captures (needs sudo).
- [ ] Does the S9+ AOAP endpoint require the full 18-byte handshake, or does the model-string AOAP handshake happen at the USB control level before the app protocol? (Need usbmon capture to verify.)
- [ ] What is the exact PC-side encoder configuration (bitrate adaptation, IDR cadence, B-frame settings)? (Need Windows DLL analysis or usbmon.)

## Deviations from plan
- Original plan said InnoSetup; actual installer is **Advanced Installer**. CAB extraction method changed accordingly.
- Original plan said "extract native libs"; **no native libs exist** — app is pure Java/Kotlin.
- Original plan said ADB reverse port-forward; RE revealed the original uses **AOAP** (Android Open Accessory Protocol) directly over USB bulk endpoints, bypassing ADB entirely. Transport decision updated to match.
- Original plan said H.265 preferred; RE revealed the original uses **H.264 (AVC)** exclusively (`video/avc`). Codec decision updated to match for protocol compatibility.
- Original plan said H.264 "baseline"; actual profile is determined by the host encoder — the Android side accepts any H.264 profile the hardware decoder supports.
