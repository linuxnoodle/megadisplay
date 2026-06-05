# MegaDisplay — Reverse Engineering Notes

Open-source Linux/Wayland replacement for SuperDisplay.
Targets: Arch Linux + Hyprland host; Samsung Galaxy S9+ tablet.

> This document is the source of truth for how SuperDisplay v1.1.10 (Windows) +
> `com.kelocube.mirrorclient` v1.2.25 (Android) actually work, so we can write
> a compatible Linux driver + Android client.

---

## Status

| Phase | State | Notes |
|-------|-------|-------|
| 0 Workspace | done | see `TODO.md` |
| 1 Static extraction | mostly done | Android fully extracted; Windows installer partially extracted (CABs done, main MSI pending `msitools`/`binwalk`) |
| 2 Deep RE (Android) | done | 63 jadx-decompiled sources analyzed; all wire formats documented |
| 2 Deep RE (Windows) | pending | awaiting MSI extraction |
| 2 USB capture | pending | awaiting `sudo modprobe usbmon` |
| 3 Documentation | done (Android) | this file; Windows sections to be filled after Phase 2 |
| 4+ Implementation | pending | depends on Phase 2 Windows + capture |

---

## 1. Artifacts under analysis

| File | Identity | Purpose |
|------|----------|---------|
| `SuperDisplay_Installer_v1.1.10.exe` | PE32 i386 GUI, **Advanced Installer** (not InnoSetup), VS2019, 2020-04-27, 29 MB | Windows host driver + UI |
| `com.kelocube.mirrorclient_1.2.25-70*.apkm` | JAR (ZIP of split APKs) | Android tablet client |

### 1.1 Windows installer (`SuperDisplay_Installer_v1.1.10.exe`)

- 29 MB PE32 i386 GUI executable, Advanced Installer bootstrapper.
- PE image: 2 MB; trailing data region: 27 MB (custom LZMA-compressed MSI + dependencies).
- Two embedded CAB files extracted:
  - `cab_e27010.cab` (33 files): Advanced Installer bootstrap metadata. No app binaries.
  - `cab_e540f0.cab` (12 files, 14 MB): Prerequisites only — KB2999226 (Win7/8/10 compat), VC++ 2019 Redist MSI (x64 Minimum + Additional), UCRT API-set forwarders (`api-ms-win-core-*.dll`), MFC140 DLLs (`mfc140u.dll`, `mfcm140u.dll`).
- The actual SuperDisplay application (MSI + DLLs) lives in the trailing data region beyond offset `0x206000`, custom-LZMA-compressed by Advanced Installer. Strings "Installation Database" and "Advanced Installer" found at `0x5f7adc` / `0x5f77b8` but no OLE compound document header (`\xd0\xcf\x11\xe0\xa1\xb1\x1a\xe1`) — the MSI is inside the LZMA blob.
- **Pending**: `binwalk` + `msitools` (`msiinfo`, `msiextract`) to recover the MSI and the actual `SuperDisplay.exe` / driver DLLs.

### 1.2 Android APK (`com.kelocube.mirrorclient` v1.2.25)

- APKMirror bundle: 1 base APK + 24 language splits + 6 DPI splits. **No architecture splits** — the app is **pure Java/Kotlin with zero native libraries**.
- Base APK contains: `classes.dex` (8.8 MB) + `classes2.dex` (4.2 MB).
- `minSdk=21`, `targetSdk=35`.
- Key permissions: `INTERNET`, `RECORD_AUDIO`, `FOREGROUND_SERVICE_MEDIA_PROJECTION`, `com.samsung.android.service.aircommand.permission.ACCESS_AIRCOMMAND` (S-Pen AirCommand API), `com.android.vending.CHECK_LICENSE`, `BILLING`.
- Entry activities: `IntentReceiverActivity` (handles `android.hardware.usb.action.USB_ACCESSORY_ATTACHED` — AOAP entry point), `MirrorActivity`, `MainActivity`, `SettingsActivity`, `CalibrateStylusActivity`, `EditActionMenuActivity`.
- Foreground service: `FgService` (media projection).
- Notable dependencies: LZ4 (`net.jpountz.lz4` — cursor bitmap decompression), Kotlin coroutines, Material 3, Sentry (crash reporting), Firebase, Google Play Billing, SonarPen SDK (`com.greenbulb.sonarpen`), Mike Penz AboutLibraries + FastAdapter.

---

## 2. Windows side — contents

### 2.1 Installer structure

- **Format**: PE32 i386, **Advanced Installer** bootstrapper (not InnoSetup), VS2019.
- **Size**: 29 MB (2 MB PE image + 27 MB overlay).
- **Embedded CABs**: Two CAB files extracted — `cab_e27010.cab` (AI bootstrap metadata, 33 files) and `cab_e540f0.cab` (prerequisites: VC++ 2019 Redist, UCRT, MFC140 — 14 MB, 12 files). Neither contains the actual app.
- **Overlay**: 25 MB custom LZMA-compressed archive containing `superDisplay.msi` + application files. The LZMA variant is proprietary to Advanced Installer's `lzmaextractor.dll` — standard LZMA decompression fails.
- **7z extraction**: PE sections extracted to `re/windows-installer/7z-out/` (text, rdata, rsrc, reloc). The `.rsrc` section contains UI bitmaps, icons, dialogs, and the WiX bootstrapper manifest.
- **Product code**: `{E06E4B59-F551-41C6-9E9E-4650C1538114}`.
- **Company**: "Software by KeloCube" (`kelocube@kelocube.com`).

### 2.2 Component files (from string table analysis)

The MSI installs the following components:

| File | Type | Purpose |
|------|------|---------|
| `superdisplay_display.dll` | WDDM user-mode display driver | Virtual display (creates a monitor the OS sees) |
| `superdisplay_display.inf` | Driver INF | Display driver installation metadata |
| `superdisplay_display.cat` | Catalog | Display driver digital signature |
| `superdisplay_hid.dll` | HID user-mode driver | Virtual HID device for touch/pen input injection |
| `superdisplay_hid.inf` | Driver INF | HID driver installation metadata |
| `superdisplay_hid.cat` | Catalog | HID driver signature |
| `superdisplay_hidbus.sys` | Kernel-mode driver | Virtual HID bus driver (creates child HID devices) |
| `superdisplay_hidbus.inf` | Driver INF | HID bus driver installation metadata |
| `superdisplay_hidbus.cat` | Catalog | HID bus driver signature |
| `superdisplay_aoap` | AOAP USB component | USB AOAP accessory communication (`.inf`, `.cat`) |
| `superdisplay_wpdfilter` | WPD filter driver | Windows Pointer Device filter for pen/touch compatibility |
| `driver_installer.exe` | Utility | Installs/uninstalls drivers (run with `/EnforcedRunAsAdmin`) |
| `viewer.exe` | Main application | UI + protocol engine + H.264 encoder + AOAP transport |
| `adb.exe` | Bundled binary | ADB fallback transport (alternative to AOAP) |
| `sentry_native.dll` | Crash reporting | Native Sentry SDK |
| `wintab_32` / `wintab_64` | Wintab support | Pressure-sensitive pen support for legacy apps (Photoshop, etc.) |
| `lzmaextractor.dll` | Installer | LZMA decompression for MSI extraction |
| `aicustact.dll` | Installer | Advanced Installer custom actions |
| `Prereq.dll` | Installer | Prerequisite detection |

### 2.3 Architecture (inferred from strings + Android RE)

```
viewer.exe
  ├── H.264 Encoder (hardware: NVENC / QuickSync / AMF, or software fallback)
  │     └── Captures virtual display framebuffer → encodes to H.264 NAL stream
  ├── AOAP Transport
  │     ├── USB AOAP handshake (model = "superDisplay" or "SuperDisplay")
  │     ├── Bulk OUT → sends Frame, PointerMove, PointerShape, Configure, etc.
  │     └── Bulk IN → receives Touch, Pen, Keyboard, FrameDone, Configure, etc.
  ├── ADB Transport (fallback)
  │     └── Bundled adb.exe for TCP port-forward based connection
  ├── Virtual Display Driver (superdisplay_display.dll)
  │     └── WDDM UMD — presents as a physical monitor to Windows
  ├── Virtual HID Driver (superdisplay_hidbus.sys → superdisplay_hid.dll)
  │     └── Injects touch, pen, keyboard events into Windows input stack
  ├── WPD Filter (superdisplay_wpdfilter)
  │     └── Ensures pen pressure works in Wintab-aware apps
  └── License validation
        └── Validates Google Play receipts via Unlock challenge-response
```

### 2.4 Driver installation

The installer runs `driver_installer.exe` with:
```
/EnforcedRunAsAdmin /RunAsAdmin /HideWindow /dir "<dir>" "<dir>\driver_installer.exe" install
```

This installs the WDDM display driver, HID bus driver, HID driver, AOAP driver, and WPD filter driver. Uninstallation reverses the process.

---

## 3. Android side — contents

Decompiled sources in `re/jadx-out/sources/com/kelocube/mirrorclient/` (63 `.java` files).

### 3.1 Core source map

| Source file | Role |
|-------------|------|
| `Transport.java` | Abstract transport: NIO channels, framing, handshake, send/recv threads, stream multiplexing |
| `TransportKt.java` | Constants: `HANDSHAKE_BASE`, `HANDSHAKE_VERSION_LENGTH`, `SUPPORTED_HOST_VERSIONS` |
| `AOAPTransport.java` | Concrete transport over AOAP `ParcelFileDescriptor` |
| `AOAPPipe.java` | Wraps `ParcelFileDescriptor` → `FileInputStream`/`FileOutputStream` → `FileChannel` |
| `AOAPTransportListener.java` | USB accessory detection, permission, model filtering, polling |
| `TCPTransport.java` | Concrete transport over TCP (wireless alternative) |
| `TCPTransportListener.java` | TCP discovery/polling |
| `TransportListener.java` | Aggregates AOAP + TCP transports |
| `MirrorClient.java` | High-level client: state machine, DataType dispatch, send wrapper |
| `MirrorClientKt.java` | Constants: error codes |
| `MirrorSession.java` | Session lifecycle: configure, frame routing, input dispatch, pointer, crop |
| `MirrorSessionKt.java` | Constants: `FLAG_SOFTWARE_ENCODING`, resolution sentinels |
| `AsyncDecoder.java` | Hardware H.264 decoder using MediaCodec async callback API |
| `SyncDecoder.java` | Synchronous decoder fallback |
| `YUVVideoStream.java` | GLSurfaceView-based video renderer with EGL, vsync disable |
| `VideoStream.java` | Abstract video stream base |
| `Decoder.java` | Abstract decoder base |
| `Input.java` | Touch + pen + keyboard capture, serialization |
| `InputKt.java` | Constants: pen flags, Samsung action codes, tick interval |
| `KeyCodesKt.java` | 136-entry keycode mapping table (protocol index → Android KeyEvent code) |
| `Pointer.java` | Hardware cursor rendering: GLSL shader, LZ4 cursor bitmap decode, cursor move |
| `CanvasScaler.java` | Crop/zoom transformations for display area scaling |
| `PenEmulator.java` | Software pressure emulation from touch size (for non-active pens) |
| `SonarPenInput.java` | SonarPen SDK integration (third-party hardware pen) |
| `FgService.java` | MediaProjection foreground service |
| `App.java` | Application singleton, billing/diagnostics/prefs setup |
| `Billing.java` | Google Play license validation (receipt handling for `Unlock` flow) |
| `Prefs.java` / `PrefsKt.java` | SharedPreferences keys (quality, sampling, framerate, resolution, stylus type, button func) |

---

## 4. Architecture (high level)

```
  ┌──────────────────────────────────┐         USB (AOAP bulk)        ┌──────────────────────────────────┐
  │       Windows Host (PC)          │◄──────────────────────────────►│     Android Tablet (Client)      │
  │                                  │                                │                                  │
  │  ┌────────────────────────────┐  │   handshake (KELOCUBE_MIRR_)   │  ┌────────────────────────────┐  │
  │  │   Virtual Display Driver   │  │                                │  │   FgService                 │  │
  │  │   (captures screen)        │  │   PC → Android:                │  │   (MediaProjection)         │  │
  │  │          │                 │  │     Frame (H.264 NAL)          │  │          │                   │  │
  │  │          ▼                 │  │     Configure (width,height,   │  │          ▼                   │  │
  │  │   H.264 Encoder            │  │       hW,hH,encoderId)         │  │   AsyncDecoder (MediaCodec)  │  │
  │  │          │                 │  │     PointerMove (x,y)          │  │     video/avc hardware       │  │
  │  │          ▼                 │  │     PointerShape (LZ4 RGBA)    │  │          │                   │  │
  │  │   AOAP USB Bulk Out ───────┼──┼────────────────────────────────┼──┼─► AOAPPipe (FileChannel)     │  │
  │  │                            │  │                                │  │   ┌──────────────────────┐   │  │
  │  │   AOAP USB Bulk In ◄───────┼──┼────────────────────────────────┼──┼───│ Transport             │   │  │
  │  │          │                 │  │   Android → PC:                │  │   │  (framing, streams)  │   │  │
  │  │          ▼                 │  │     Configure (model, userId,  │  │   └──────────────────────┘   │  │
  │  │   Input Dispatcher         │  │       resolution, quality,     │  │          │                   │  │
  │  │   (touch/pen/keyboard)     │  │       flags, framerate,        │  │          ▼                   │  │
  │  └────────────────────────────┘  │     receipt)                   │  │   MirrorClient → MirrorSession│ │
  │                                  │     Touch (N × 8B)             │  │          │                   │  │
  │                                  │     Pen (11B)                  │  │     ┌────┴────┐              │  │
  │                                  │     Keyboard (5B)              │  │     │ Input   │              │  │
  │                                  │     FrameDone (encoderId)      │  │     │ (touch, │              │  │
  │                                  │     InputConfig (buttonFunc)   │  │     │  pen)   │              │  │
  │                                  │     Unlock (license response)  │  │     └─────────┘              │  │
  │                                  │     Scale (crop/zoom)          │  │                                  │  │
  └──────────────────────────────────┘                                └──────────────────────────────────┘
```

---

## 5. Connection / handshake

### 5.1 Transport selection

Two transport implementations exist:

1. **AOAP (Android Open Accessory Protocol)** — primary, USB.
2. **TCP** — wireless alternative.

Both implement the same `Transport` abstract class over NIO `ScatteringByteChannel` / `GatheringByteChannel`.

### 5.2 AOAP connection flow

```
                    Tablet                              PC
                      │                                  │
                      │  (USB plugged in)                │
                      │◄─────USB_ACCESSORY_ATTACHED──────│  (PC sends AOAP handshake with model string)
                      │                                  │
                      │  IntentReceiverActivity          │
                      │  receives intent                 │
                      │                                  │
                      │  AOAPTransportListener            │
                      │  .openFromIntent()               │
                      │                                  │
                      │  Checks accessory.getModel()     │
                      │  Accepts: "superDisplay",        │
                      │    "SuperDisplay", "Android", "" │
                      │                                  │
                      │  UsbManager.openAccessory()      │
                      │  → ParcelFileDescriptor          │
                      │  → AOAPPipe (FileChannel)        │
                      │                                  │
                      │  AOAPTransport.start()           │
                      │  Read thread + Send thread       │
                      │                                  │
                      │────── handshake ─────────────────►│
                      │◄───── handshake ─────────────────│
                      │                                  │
                      │  session active                  │
```

**AOAP model filtering** (`AOAPTransportListener.openFromIntent`):
The tablet enumerates `UsbManager.getAccessoryList()` and accepts accessories whose `getModel()` matches one of: `"superDisplay"`, `"SuperDisplay"`, `"Android"`, or the empty string `""`. All other models are ignored.

**Polling**: `AOAPTransportListener.tick()` runs every 1000 ms when enabled. After USB connect, a 2000 ms delay is observed (`MS_DELAY_USB_CONNECT = 2000`); after disconnect, 500 ms (`MS_DELAY_USB_DISCONNECT = 500`).

### 5.3 Protocol handshake

Both sides exchange a 16-byte ASCII handshake:

```
Offset  Length  Content
0       13      "KELOCUBE_MIRR_"     (HANDSHAKE_BASE)
13      3       ASCII version digits (e.g. "004")
16      1       NUL (0x00)
```

Total: 17 bytes? No — `HANDSHAKE_BASE` = `"KELOCUBE_MIRR_"` is 14 characters. Plus 3-digit version + NUL = 18 bytes.

Wait, let me recheck. `"KELOCUBE_MIRR_"` — K-E-L-O-C-U-B-E-_-M-I-R-R-_ = 14 chars. Plus 3 digits + NUL = 18 bytes.

Actually, looking at the code: `str.length()` where `str = HANDSHAKE_BASE`. The read is:
```java
readFromSocket(buffer, 4);  // read first 4 bytes
// check if first 4 == "MIRR" → reject as old host
// otherwise read remaining:
readFromSocket(buffer, (str.length() + HANDSHAKE_VERSION_LENGTH) - 4);
// = (14 + 3) - 4 = 13 more bytes
// total read: 4 + 13 = 17 bytes
// then read 1 more byte (NUL):
readFromSocket(buffer, 1);
// total: 18 bytes
```

But the send side:
```java
String str2 = HANDSHAKE_BASE + strPadStart + "\u0000";
// = 14 + 3 + 1 = 18 bytes
```

So the handshake is **18 bytes**: `"KELOCUBE_MIRR_004\0"`.

**Legacy rejection**: If the first 4 bytes are `"MIRR"`, the host is immediately rejected with error `"Old host version"` (error code 2). This was the V1 protocol format.

**Version negotiation**:
- `SUPPORTED_HOST_VERSIONS = {4, 3}` (from `TransportKt`).
- Android client max version = `SUPPORTED_HOST_VERSIONS[0]` = 4.
- If `hostVersion > clientMax`: reject with `"Old client version"` (error code 3).
- If `hostVersion < clientMax` and `hostVersion` not in `SUPPORTED_HOST_VERSIONS`: reject with `"Old host version"` (error code 2).
- Otherwise: accept. Android echoes back the host's version (padded to 3 digits) + NUL.

**Post-handshake**: All buffers switch to **little-endian** byte order.

### 5.4 Timeout / keepalive

- `TIMEOUT_TICKS = 10`, `TIMEOUT_TICK_MS = 1000` → 10-second read timeout.
- Each tick decrements `timeoutTicks`. Any successful read resets it to 10.
- When started, each tick sends an empty packet (DataType `State`, 0-length payload) as a keepalive.
- If `timeoutTicks` reaches 0, the transport closes with `"Read timed out"`.

---

## 6. Wire format

### 6.1 Framing — PC → Android (fragmented streams)

The PC sends data as **fragments** on two multiplexed streams:

```
┌──────────────────────────────────────────────────┐
│ Fragment header (3 bytes)                        │
├────────┬─────────────┬──────────────────────────┤
│ 1 byte │ 2 bytes LE  │ fragment_length bytes    │
│ stream │ fragment    │ payload data             │
│ _id    │ _length     │                          │
└────────┴─────────────┴──────────────────────────┘
```

- `stream_id = 0`: **Control stream** (100 KB reassembly buffer).
- `stream_id = 1`: **Video stream** (10 MB reassembly buffer — large enough for a complete keyframe burst).

Multiple fragments are concatenated into the stream's reassembly buffer. Each reassembled message has a 4-byte length prefix:

```
┌──────────────────────────────────────────────────┐
│ Reassembled message in stream buffer             │
├─────────────┬────────────────────────────────────┤
│ 4 bytes LE  │ payload_length bytes               │
│ payload     │                                    │
│ _length     │ (overwrites the length prefix in   │
│             │  the buffer — position resets)     │
└─────────────┴────────────────────────────────────┘
```

The `payload_length` field is read first, then the buffer position is reset to 0 and the payload is read into the same space. When `position == payload_length`, the complete message is delivered to `MirrorClient.onData()`. The payload's first byte is the `DataType`.

**Why two streams?** The 10 MB video buffer allows receiving an entire H.264 keyframe burst without blocking the control stream. The control stream (100 KB) handles all other messages (configure, pointer, input) with minimal latency.

### 6.2 Framing — Android → PC (single stream)

Simpler: no stream multiplexing. Each message is:

```
┌─────────────────────┬────────────────────────────┐
│ 4 bytes LE length   │ payload of `length` bytes  │
└─────────────────────┴────────────────────────────┘
```

The payload's first byte is the `DataType`, followed by type-specific data.

**Send buffering**: A 10,000-byte send buffer is used. Outgoing packets are limited to 10,000 bytes total (4-byte length + payload). The send thread swaps the write buffer with a shadow buffer and writes to the channel in a single `write()` call.

### 6.3 DataType enumeration

From `MirrorClient.DataType` (byte IDs):

| ID | Name          | Direction       | Purpose |
|----|---------------|-----------------|---------|
| 0  | State         | PC → Android    | Keepalive / state (empty payload) |
| 1  | Configure     | Bidirectional   | Session parameters (see 6.4, 6.5) |
| 2  | Stop          | Android → PC    | End session |
| 3  | Frame         | PC → Android    | H.264 video data |
| 4  | FrameDone     | Android → PC    | Acknowledge frame decoded |
| 5  | PointerMove   | PC → Android    | Cursor position update |
| 6  | PointerShape  | PC → Android    | Cursor bitmap (LZ4 compressed) |
| 7  | TakeScreenshot | PC → Android   | Request screenshot |
| 8  | Touch         | Android → PC    | Multi-touch input |
| 9  | Pen           | Android → PC    | Stylus input (S-Pen) |
| 10 | Unlock        | Bidirectional   | License validation flow |
| 11 | Scale         | Bidirectional   | Crop/zoom region |
| 12 | InputConfig   | Android → PC    | Input configuration (button function) |
| 13 | InputKey      | Android → PC    | Hardware key / action menu key |
| 14 | Error         | PC → Android    | Host error notification |
| 15 | Keyboard      | Android → PC    | Keyboard key event |
| 16 | Command       | Android → PC    | Action menu command |

### 6.4 Configure — Android → PC (session request)

Sent by `MirrorSession.sendStart()` on first `layout()` call. Payload layout:

```
Offset  Type      Content
0       int32 LE  model_name_length (bytes)
4       bytes     model_name (UTF-8, e.g. "SM-G965F")
4+N     int32 LE  user_id_length
8+N     bytes     user_id (UTF-8)
8+N+M   int32 LE  tablet_resolution_x (physical screen)
12+N+M  int32 LE  tablet_resolution_y
16+N+M  int32 LE  stream_resolution_x (desired output, or sentinel)
20+N+M  int32 LE  stream_resolution_y
24+N+M  byte      sampling_rate (0 = default)
25+N+M  int32 LE  quality_bitrate (default 80)
29+N+M  int32 LE  receipt_length
33+N+M  bytes     receipt (ASCII, Google Play purchase token)
33+N+M+R int32 LE flags (bit 0 = FLAG_SOFTWARE_ENCODING = 1)
37+N+M+R int32 LE framerate (default 60)
```

**Resolution sentinels** (`MirrorSessionKt`):
- `OUT_RES_COPY_SOURCE = -1`: match the host's native resolution.
- `OUT_RES_SCALE_TO_SOURCE = -2`: scale to host aspect ratio.

### 6.5 Configure — PC → Android (session confirmation)

Sent by the host after receiving the Android Configure message. Payload: 5 int32s = 20 bytes.

```
Offset  Type      Content
0       int32 LE  width (video stream width in pixels)
4       int32 LE  height
8       int32 LE  host_width (host virtual display width)
12      int32 LE  host_height
16      int32 LE  encoder_id (opaque ID for FrameDone correlation)
```

Upon receipt, `MirrorSession` creates/reconfigures the `YUVVideoStream` with the new dimensions and sets up the `Pointer` coordinate mapping.

### 6.6 Frame — PC → Android (H.264 video)

```
Offset  Type      Content
0       byte      DataType (3)
1       byte      Unused flag (read but discarded)
2..N    bytes     H.264 Annex-B NAL units (SPS, PPS, IDR, P-frames)
```

The NAL data is fed directly to `MediaCodec` via `VideoStream.processInput()`. No container format — raw Annex-B byte stream with start codes (`0x00 0x00 0x00 0x01` or `0x00 0x00 0x01`).

### 6.7 FrameDone — Android → PC

```
Offset  Type      Content
0       byte      DataType (4)
1       int32 LE  encoder_id (echoed from Configure)
```

Sent after the decoder reports a frame is ready (`onOutputBufferAvailable` → `releaseOutputBuffer`). Correlates decode completion with the host's encoder pipeline.

### 6.8 PointerMove — PC → Android

```
Offset  Type      Content
0       byte      DataType (5)
1       int16 LE  x (host coordinate, host-resolution pixels)
3       int16 LE  y
```

Special value: `x = -32768 (0x8000)` hides the cursor.

### 6.9 PointerShape — PC → Android

```
Offset  Type      Content
0       byte      DataType (6)
1       int16 LE  width (cursor bitmap width)
3       int16 LE  height
5       int16 LE  hot_spot_x
7       int16 LE  hot_spot_y
9..N    bytes     LZ4-compressed RGBA bitmap (4 bytes/pixel uncompressed)
```

Uncompressed size = `width × height × 4`. Decompressed via `LZ4FastDecompressor` into a direct `ByteBuffer`, uploaded as a GL texture (`glTexSubImage2D` with `GL_RGBA`/`GL_UNSIGNED_BYTE`).

### 6.10 Touch — Android → PC

```
Offset  Type      Content
0       byte      DataType (8)
1       byte      pointer_count
2..     repeated  pointer entries (8 bytes each):
```

Each pointer entry (8 bytes):
```
Offset  Type      Content
0       byte      pointer_id (MotionEvent.getPointerId)
1       byte      state (1 = down/move, 0 = up)
2       int16 LE  x_normalized (saturate(x / area_width) * 32767)
4       int16 LE  y_normalized (saturate(y / area_height) * 32767)
6       int16 LE  size_normalized (saturate(touch_size) * 32767)
```

`UtilKt.saturate()` clamps to [0.0, 1.0]. Coordinates are relative to the active rendering area (after crop/zoom).

**Touch batching**: ACTION_DOWN and ACTION_UP send 1 pointer. ACTION_MOVE, ACTION_POINTER_DOWN, ACTION_POINTER_UP send all current pointers.

**Keepalive**: When a finger is stationary (ACTION_MOVE stops), a 50 ms timer (`MS_TICK_TIME = 50`) re-sends the last touch event to prevent the host from considering the touch stale. The timer fires only if `50 ms` has elapsed since the last event (`NS_MIN_REPEAT_TIME = 50_000_000`).

### 6.11 Pen — Android → PC

Fixed 12-byte payload (1 DataType + 11 bytes):

```
Offset  Type      Content
0       byte      DataType (9)
1       byte      flags
2       int16 LE  x_normalized (saturate(x / area_width) * 32767)
4       int16 LE  y_normalized (saturate(y / area_height) * 32767)
6       int16 LE  pressure_normalized (saturate(pressure) * 32767)
8       int16 LE  orientation_normalized (saturate(axis/2π + 0.5) * 32767)
10      int16 LE  tilt_normalized (saturate(axis/(π/2)) * 32767)
```

**Flags bitmap**:
- Bit 0 (0x01) = `FLAG_CONTACT` — pen is touching the screen.
- Bit 1 (0x02) = `FLAG_HOVER` — pen is hovering above the screen.
- Bit 2 (0x04) = `FLAG_BUTTON` — pen barrel button is pressed.

**Axis mapping**:
- Orientation = `MotionEvent.AXIS_ORIENTATION` (axis 8): raw range [-π, π], normalized as `(axis / 2π + 0.5) * 32767`.
- Tilt = `MotionEvent.AXIS_TILT` (axis 25): raw range [0, π/2], normalized as `(axis / (π/2)) * 32767`.

**Samsung S-Pen action translation** (`InputKt.translateSamsungAction`):

Samsung uses non-standard action codes for the S-Pen. The app translates them to standard Android motion actions:

| Samsung action | Value | Translated to |
|---------------|-------|---------------|
| SPEN_ACTION_DOWN | 211 | ACTION_DOWN (0) |
| SPEN_ACTION_UP | 212 | ACTION_UP (1) |
| SPEN_ACTION_MOVE | 213 | ACTION_MOVE (2) |
| SPEN_ACTION_CANCEL | 214 | ACTION_CANCEL (3) |

Additionally, hover enter/exit use actions 9 (ACTION_HOVER_ENTER via Samsung SDK) and 10 (ACTION_HOVER_EXIT).

**Stylus modes** (`Input` class constants):
- `STYLUS_NATIVE = 0`: Use real S-Pen data (pressure, tilt, orientation from MotionEvent axes).
- `STYLUS_EMULATE = 1`: Emulate pen from finger touch (pressure derived from touch size via `PenEmulator`).
- `STYLUS_SONARPEN = 2`: Use SonarPen SDK hardware.

When emulating (`STYLUS_EMULATE`), orientation and tilt are always 0; pressure comes from `PenEmulator.getPressure(size)`.

### 6.12 Keyboard — Android → PC

```
Offset  Type      Content
0       byte      DataType (15)
1       byte      pressed (1 = key down, 0 = key up)
2       int32 LE  key_code_index (index into KEY_CODES table, NOT an Android keycode)
```

The `KeyCodesKt.KEY_CODES` array maps protocol indices to Android `KeyEvent` keycodes. Notable mappings:

| Index | Android KeyCode | Key |
|-------|----------------|-----|
| 4-29  | 29-54          | A-Z |
| 30-39 | 7-16           | 0-9 |
| 40    | 66             | Enter |
| 41    | 111            | Escape |
| 42    | 67             | Backspace |
| 43    | 61             | Tab |
| 44    | 62             | Space |
| ...   | ...            | (136 entries total) |

Only keys with `indexOf > 0` in the table are forwarded. Repeat events (`repeatCount != 0`) are dropped.

### 6.13 InputConfig — Android → PC

```
Offset  Type      Content
0       byte      DataType (12)
1       int32 LE  button_function (from PREF_BUTTON_FUNC setting)
```

### 6.14 Scale — Bidirectional

Used for crop/zoom region negotiation. Payload: `[1B mode][8B data]`.

| Mode | Meaning | Data |
|------|---------|------|
| -2 | Cancel | (ignored) |
| -1 | Set crop region | `[int16 x][int16 y][int16 angle][int16 tilt]` (crop offset, rotation, perspective) |
| 0-2 | Multi-touch pinch report | Pinch scale/translation data |

### 6.15 Error — PC → Android

```
Offset  Type      Content
0       byte      DataType (14)
1       byte      error_code
```

Error codes (`MirrorClientKt`):

| Code | Name | Fatal? | Meaning |
|------|------|--------|---------|
| 0 | `ERROR_DRIVER_ERROR` | Yes | Host driver failure |
| 1 | (unknown) | — | — |
| 2 | `ERROR_LICENSE_ERROR` | Yes | License validation failed |
| 3 | `ERROR_TRIAL_EXPIRED` | Yes | Trial period ended |
| 4 | `ERROR_WARN_BAD_RESOLUTION` | **No** (warning) | Resolution not optimal |
| 5 | `ERROR_GPU_DRIVER_ERROR` | Yes | GPU driver problem |
| 6 | `ERROR_NO_ENCODER` | Yes | No H.264 encoder available |
| 7 | `ERROR_WARN_SOFTWARE_ENCODER` | **No** (warning) | Fell back to software encoder |

Warnings (codes 4, 7) show a toast/dialog but do not terminate the session.

### 6.16 Unlock — Bidirectional (license flow)

**PC → Android**:
```
Offset  Type      Content
0       byte      DataType (10)
1       int32 LE  challenge_length
5       bytes     challenge (ASCII)
```

**Android → PC** (response, after Google Play license check):
```
Offset  Type      Content
0       byte      DataType (10)
1       int32 LE  response_length
5       bytes     response (ASCII, Google Play receipt / license token)
```

### 6.17 Stop — Android → PC

Empty payload (0 bytes after DataType). Terminates the session.

---

## 7. Video sub-protocol

### 7.1 Codec

- **Codec**: H.264 / AVC (`video/avc`). No HEVC.
- **Container**: None. Raw Annex-B NAL units with start codes.
- **Decoder**: Hardware `MediaCodec` in async callback mode (`AsyncDecoder`).
- Fallback: `SyncDecoder` (synchronous polling mode) — not used unless async fails.

### 7.2 Decoder configuration (`AsyncDecoder.start`)

```java
MediaFormat format = MediaFormat.createVideoFormat("video/avc", width, height);

// Max operating rate (Android 6.0+)
if (SDK_INT >= 23) {
    double maxRate = codec.getCodecInfo()
        .getCapabilitiesForType("video/avc")
        .getVideoCapabilities()
        .getSupportedFrameRatesFor(width, height)
        .getUpper();
    format.setInteger("operating-rate", (int) maxRate);
}

format.setInteger("max-input-size", 0);

// Low-latency mode (Android 11+)
if (SDK_INT >= 30) {
    if (codec.getCodecInfo()
        .getCapabilitiesForType("video/avc")
        .isFeatureSupported("low-latency")) {
        format.setFeatureEnabled("low-latency", true);
    }
}

codec.setCallback(callback);  // async mode
codec.configure(format, surface, null, 0);
codec.start();
```

### 7.3 Decode pipeline

1. PC sends `Frame` packet with H.264 NAL data.
2. `MirrorSession.onData()` strips the flag byte, passes raw NAL bytes to `VideoStream.processInput()`.
3. `AsyncDecoder.doProcessInput()` waits for an input buffer (async callback `onInputBufferAvailable` queues buffer IDs).
4. NAL data is copied into the input buffer and queued to the decoder with `queueInputBuffer()`.
5. When output is ready (`onOutputBufferAvailable`), the buffer is immediately released with `releaseOutputBuffer(id, System.nanoTime())` — the nano-timestamp is used as the render timestamp for EGL `eglPresentationTimeANDROID`.
6. After release, `onFrame()` callback fires → `MirrorSession.onFrameDone()` → sends `FrameDone` with the encoder ID back to the PC.

### 7.4 Rendering (`YUVVideoStream`)

- `GLSurfaceView` with GLES 2.0 (`setEGLContextClientVersion(2)`).
- Hardware-accelerated Surface passed directly to MediaCodec (`codec.configure(format, surface, ...)`).
- **Vsync disabled**: `eglSwapInterval(display, 0)` called every frame.
- **Presentation time**: `eglPresentationTimeANDROID(display, surface, System.nanoTime())` — uses current system time, not the decode timestamp, to minimize latency.
- Fragment/vertex shaders loaded from raw resources (`R.raw.preview_vert`, `R.raw.preview_frag`).

### 7.5 Resolution support check

Before starting, `AsyncDecoder` checks `VideoCapabilities.isSizeSupported(width, height)`. If not supported, sets `unsupportedResolution = true`, which triggers the `ERROR_WARN_BAD_RESOLUTION` warning.

---

## 8. Input sub-protocol

### 8.1 Input routing

`Input.java` implements `View.OnTouchListener` and `View.OnHoverListener` on the main rendering view.

**Touch routing decision** (in `onTouch`):
- If `toolType == TOOL_TYPE_STYLUS (2)` → `handlePenEvent()` (S-Pen detected).
- Else if `mode == TOUCH_EMULATE (-1)` → `handlePenEvent()` (emulate pen from finger).
- Else if `mode == TOUCH_FORWARD (0)` → `handleTouchEvent()` (normal touch forwarding).
- Else if `mode == TOUCH_SCALE (2)` → `CanvasScaler.onTouchEvent()` (pinch-zoom gesture).

### 8.2 Touch serialization

See section 6.10 for the wire format.

**State encoding**:
- `ACTION_DOWN (0)` → state=1, single pointer, `save=true`
- `ACTION_UP (1)` → state=0, single pointer, `save=true` (clears keepalive)
- `ACTION_MOVE (2)` → state=1 for each pointer, all pointers, `save=true`
- `ACTION_POINTER_DOWN (5)` → state=1 for each pointer, all pointers
- `ACTION_POINTER_UP (6)` → state=0 for lifted pointer, state=1 for others, all pointers

**Coordinate normalization**: `(x - area.left) / area.width * 32767`, clamped to [0, 32767].

### 8.3 Pen serialization

See section 6.11 for the wire format.

**Stylus type affects data source**:
- `STYLUS_NATIVE (0)`: Real MotionEvent axes (AXIS_PRESSURE, AXIS_ORIENTATION, AXIS_TILT).
- `STYLUS_EMULATE (1)`: `PenEmulator.getPressure(size)` for pressure; orientation/tille = 0.
- `STYLUS_SONARPEN (2)`: `SonarPenInput.getPressure()` for pressure; orientation/tille = 0.

**Hover delay**: When `ACTION_HOVER_EXIT (10)` is received, it's re-posted with a 100 ms delay (`handler.postDelayed`). This prevents hover/pen-up race conditions on Samsung devices.

### 8.4 Keyboard serialization

See section 6.12. Only keys present in the `KEY_CODES` lookup table are forwarded. Repeat events are dropped.

### 8.5 InputConfig

Sent once on session start (in `Input.configure()`), containing the pen barrel button function setting.

### 8.6 CanvasScaler (crop/zoom)

The `CanvasScaler` manages a crop region (`Crop` class with x, y, angle, tilt). It applies an affine transformation to the input coordinates before they're serialized. The crop region can be set by the user via the action menu and is communicated to the host via `Scale` messages.

---

## 9. Performance dynamics

The original SuperDisplay achieves low latency through several techniques:

### 9.1 Transport layer

1. **Raw AOAP USB bulk endpoints** — no ADB overhead. AOAP provides direct access to USB bulk transfers via `ParcelFileDescriptor`, bypassing the ADB daemon entirely. This eliminates the ADB transport layer's buffering and protocol overhead.
2. **Dual-stream multiplexing** — control (100 KB) and video (10 MB) streams are independently buffered, preventing large video frames from blocking time-sensitive control/input messages.
3. **NIO FileChannel** — uses `ScatteringByteChannel` / `GatheringByteChannel` for efficient I/O. The send path uses a double-buffer (swap-and-write) pattern to avoid blocking the producer thread.

### 9.2 Video pipeline

4. **Hardware MediaCodec** — async callback API (not synchronous polling). `onInputBufferAvailable` / `onOutputBufferAvailable` callbacks eliminate polling latency.
5. **Maximum operating rate** — `KEY_OPERATING_RATE` set to the codec's theoretical maximum frame rate, allowing the decoder to process frames faster than real-time.
6. **Low-latency mode** — `KEY_LOW_LATENCY` (Android 11+) enables vendor-specific low-latency decode paths.
7. **Vsync disabled** — `eglSwapInterval(display, 0)` prevents the renderer from blocking on the display refresh cycle.
8. **Immediate render** — `releaseOutputBuffer(id, System.nanoTime())` with current timestamp, not presentation timestamp. The `eglPresentationTimeANDROID` uses `System.nanoTime()` to present immediately.
9. **Direct Surface rendering** — MediaCodec renders directly to the GLSurfaceView's Surface. No intermediate CPU-side buffer copies.
10. **10 MB video buffer** — large enough to absorb complete keyframe bursts without backpressure.

### 9.3 Input pipeline

11. **Timer-based touch keepalive** — 50 ms timer re-sends the last touch event to prevent the host from treating a stationary finger as released. Avoids the need for the touchscreen to generate continuous MOVE events.
12. **Compact wire format** — 8 bytes/pointer for touch, 11 bytes for pen. Minimal serialization overhead.
13. **Main-thread input handling** — touch/pen events are serialized on the main thread and handed off to the transport's send thread, avoiding Handler scheduling delays.

### 9.4 Cursor rendering

14. **LZ4-compressed cursor bitmaps** — cursor shapes are LZ4-compressed for transmission, decompressed in Java, uploaded to GL texture. Avoids sending raw RGBA for every cursor change.
15. **Separate GLSurfaceView** — cursor rendered as a GL overlay (`setZOrderMediaOverlay(true)`), composited on top of the video surface.

---

## 10. Hidden / notable behavior

### 10.1 Protocol version codenames

Internal build versions use cheese codenames (found in obfuscated version constants): `HALLOUMI`, `JARLSBERG`, `KENAFA`, `LONGHORN`, `MANCHEGO`, `ORLA`, `PARMESAN`, `QUESO`, `REBLOCHON`, `SAGA`. Current wire version is `004`.

### 10.2 Samsung S-Pen integration

The app declares `com.samsung.android.service.aircommand.permission.ACCESS_AIRCOMMAND` — access to Samsung's AirCommand SDK for S-Pen hover detection. This enables hover events on Samsung devices where the standard `MotionEvent` hover API may not report S-Pen proximity.

Samsung-specific action codes (211-214) are translated to standard Android actions (see 6.11).

### 10.3 SonarPen support

Third-party SonarPen hardware is supported via `com.greenbulb.sonarpen` SDK. This is a third-party capacitive-touch-based stylus with its own pressure sensing. When `STYLUS_SONARPEN` mode is active, pressure comes from the SonarPen SDK instead of the standard MotionEvent API.

### 10.4 Software encoder fallback

If the user enables `PREF_FORCE_SOFTWARE_ENCODER` or the host falls back to software encoding, the `FLAG_SOFTWARE_ENCODING` bit (0x01) is set in the Configure message's flags field. The host then sends `ERROR_WARN_SOFTWARE_ENCODER` (warning, not fatal) to notify the user.

### 10.5 License validation

The app uses Google Play licensing (`com.android.vending.CHECK_LICENSE`) and in-app billing. On session start, the app sends a Google Play purchase receipt in the Configure message. The host validates this via the `Unlock` challenge-response flow (section 6.16). If validation fails, the host sends `ERROR_LICENSE_ERROR` or `ERROR_TRIAL_EXPIRED`.

### 10.6 Telemetry

The app includes **Sentry** (crash reporting) and **Firebase** (analytics). These are initialized in `App.java`. Crash reports include the exception type, stack trace, and device info.

### 10.7 TCP transport (wireless)

A `TCPTransport` exists as an alternative to AOAP. It uses the same `Transport` framing over a TCP socket. The `TCPTransportListener` polls for connections. This enables wireless use but is secondary to USB. The same wire protocol (handshake, framing, DataTypes) is used over both transports.

### 10.8 Screen orientation

The app detects portrait orientation and swaps the resolution axes accordingly. If `Prefs.isOrientationPortrait()` is true, the tablet and stream resolutions have their X/Y swapped before sending in the Configure message.

---

## 11. Implementation notes for MegaDisplay

### 11.1 Linux driver (Rust + smithay)

**Transport**: Implement the PC-side AOAP handshake. The driver must:
1. Send the AOAP handshake control request (USB control transfer to the Android device) with model string `"superDisplay"` or `"SuperDisplay"`.
2. Claim the bulk IN/OUT endpoints.
3. Send the 18-byte protocol handshake `"KELOCUBE_MIRR_004\0"`.
4. Wait for the Android response.
5. Switch to little-endian framing.

**Video**: Receive H.264 NAL data on stream 1, decode via `ffmpeg-next` (libavcodec), commit frames to a smithay virtual output via `wlr-virtual-output-manager-unstable-v1`.

**Input**: Forward touch/pen events to libei (`LIBEI_ABSOLUTE` / `LIBEI_TABLET_TOOL`) or uinput.

### 11.2 Android client

**Transport**: Either AOAP (for USB) or TCP (for wireless / ADB reverse).

**Video**: `MediaProjection` → `VirtualDisplay` → `MediaCodec` H.264 encoder → wire.

**Input injection**: `InputManager.injectInputEvent` via shell-UID server (scrcpy technique). Spawn a process via `app_process` running as shell UID that reflects on the hidden `InputManager.injectInputEvent` API.

**S-Pen**: Use standard MotionEvent axes (AXIS_PRESSURE, AXIS_ORIENTATION, AXIS_TILT). No need for Samsung-specific APIs if we use the standard Android stylus APIs.

---

## Appendix A — File locations

| Artifact | Path |
|----------|------|
| Original installer | `SuperDisplay_Installer_v1.1.10.exe` |
| Original APK bundle | `com.kelocube.mirrorclient_1.2.25-70*.apkm` |
| Base APK | `re/android-apk/base.apk` |
| Unpacked base APK | `re/android-apk-base/` |
| jadx output (Java sources) | `re/jadx-out/sources/com/kelocube/mirrorclient/` |
| apktool output (smali + resources) | `re/apktool-out/` |
| Decoded AndroidManifest | `re/notes/AndroidManifest.decoded.xml` |
| Extracted CABs | `re/windows-installer/cab_e27010.cab`, `cab_e540f0.cab` |
| Unpacked CABs | `re/windows-installer/cab1/`, `cab2/` |
| AXML decoder script | `re/axml.py` |
| USB captures (pending) | `re/sniffs/` |

## Appendix B — Key constants

| Constant | Value | Source |
|----------|-------|--------|
| `HANDSHAKE_BASE` | `"KELOCUBE_MIRR_"` | `TransportKt.kt` |
| `HANDSHAKE_VERSION_LENGTH` | 3 | `TransportKt.kt` |
| `SUPPORTED_HOST_VERSIONS` | {4, 3} | `TransportKt.kt` |
| `READ_BUFFER_SIZE_0` (control) | 100,000 | `Transport.kt` |
| `READ_BUFFER_SIZE_1` (video) | 10,000,000 | `Transport.kt` |
| `SEND_BUFFER_SIZE` | 10,000 | `Transport.kt` |
| `TIMEOUT_TICKS` | 10 | `Transport.kt` |
| `TIMEOUT_TICK_MS` | 1,000 | `Transport.kt` |
| `FLAG_CONTACT` | 0x01 | `InputKt.kt` |
| `FLAG_HOVER` | 0x02 | `InputKt.kt` |
| `FLAG_BUTTON` | 0x04 | `InputKt.kt` |
| `MS_TICK_TIME` | 50 | `InputKt.kt` |
| `NS_MIN_REPEAT_TIME` | 50,000,000 | `InputKt.kt` |
| `FLAG_SOFTWARE_ENCODING` | 0x01 | `MirrorSessionKt.kt` |
| `OUT_RES_COPY_SOURCE` | -1 | `MirrorSessionKt.kt` |
| `OUT_RES_SCALE_TO_SOURCE` | -2 | `MirrorSessionKt.kt` |
| `MS_DELAY_USB_CONNECT` | 2,000 | `AOAPTransportListener.kt` |
| `MS_DELAY_USB_DISCONNECT` | 500 | `AOAPTransportListener.kt` |
