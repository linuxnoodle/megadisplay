# HDR Support Roadmap

## Current State

The pipeline operates entirely in SDR (8-bit, BT.709 limited range):

```
Wayland capture (BGRA 8-bit) → BGRA→YUV420p (BT.709) → H.264 encode (8-bit) → Android decode → SDR display
```

## HDR Blockers

### 1. Wayland Capture (wlr-screencopy)
**Status**: Blocked on protocol support.

`zwlr_screencopy_frame_v1` captures the compositor's output buffer. Currently:
- Only provides `xbgr8888` / `xrgb8888` (8-bit BGRA) formats
- No HDR metadata (no maxCLL, maxFALL, primaries, EOTF)
- No 10-bit/12-bit format support

**Needed**: `wp-color-management-v1` protocol (in development by Wayland-Protocols)
- Provides color volume, primaries, EOTF, and metadata for each surface
- Combined with a screencopy extension for 10-bit formats (e.g., `xyuv4444`, `p010`)

**Alternative**: Direct DRM/KMS capture bypassing Wayland compositor entirely. Requires DRM master or `drmDropMaster`/`drmAuthMagic` cooperation.

### 2. H.264 10-bit Encoding
**Status**: openh264 does not support 10-bit. Need encoder switch.

| Encoder | 10-bit H.264 | 10-bit H.265 | HDR SEI | Notes |
|---------|-------------|-------------|---------|-------|
| openh264 | No | N/A | No | Current |
| x264 | Yes (High10) | N/A | Yes | System lib `libx264.so.165` installed |
| ffmpeg (libx265) | N/A | Yes (Main10) | Yes | System ffmpeg 8.1.1 installed |
| VA-API (HW) | Yes | Yes | Yes | AMD VCE, `libva` 2.23.0 installed |

**Recommendation**: Switch to x264 for 10-bit H.264 (minimal protocol change), or VA-API for hardware 10-bit encoding. H.265/HEVC would require Android app changes (MediaFormat.MIMETYPE_VIDEO_HEVC).

### 3. Headless Output HDR
**Status**: Hyprland headless outputs are SDR-only.

HDR requires the compositor to:
1. Advertise HDR support via EDID (headless has no EDID)
2. Enable HDR mode for the output
3. Composite surfaces in 10-bit/PQ space

Hyprland's HDR support (via `wlr_color_management_v1`) is experimental and doesn't apply to headless outputs.

**Workaround**: Could fake HDR by applying an SDR→PQ tone map on the PC side before encoding. This doesn't recover HDR detail but utilizes the tablet's full brightness range. Controversial — can look worse if poorly implemented.

### 4. Android HDR Rendering
**Status**: Implementable (Android 13+).

The Tab S9+ supports HDR10+ on its Dynamic AMOLED 2X display. Required Android APIs:

```kotlin
// Surface color mode (Android 13+)
surfaceControl.setColorMode(ColorMode.BT2020_PQ)  // or BT2020_HLG

// HDR metadata (Android 12+)
val metadata = Bundle().apply {
    putInt(MediaFormat.KEY_COLOR_STANDARD, MediaFormat.COLOR_STANDARD_BT2020)
    putInt(MediaFormat.KEY_COLOR_TRANSFER, MediaFormat.COLOR_TRANSFER_HLG)  // or PQ
    putInt(MediaFormat.KEY_COLOR_RANGE, MediaFormat.COLOR_RANGE_FULL)
}
```

## Implementation Phases

### Phase 1: SDR Quality Improvements (done)
- [x] BT.709 color coefficients (was BT.601)
- [x] VUI signaling (color primaries, transfer, matrix)
- [x] Catmull-Rom bicubic upscaling on Android (FsrSurfaceView)

### Phase 2: 10-bit Pipeline (requires encoder switch)
- [ ] Switch to x264 or VA-API encoder
- [ ] 10-bit BGRA→YUV conversion (16-bit intermediate)
- [ ] H.264 High10 profile encoding with VUI BT.2020/PQ
- [ ] Android 10-bit decode + color mode
- [ ] Full-range YUV (0-255 instead of 16-235)

### Phase 3: True HDR (requires Wayland protocol)
- [ ] Wait for `wp-color-management-v1` in Hyprland/wlroots
- [ ] 10-bit/12-bit Wayland screencopy capture
- [ ] PQ/HLG transfer function in color conversion
- [ ] HDR10+ dynamic metadata (ST 2094-40 SEI)
- [ ] Android HDR display mode switching

### Phase 4: Full HDR10+ (future)
- [ ] Scene-by-scene dynamic metadata from compositor
- [ ] ST 2094-40 SEI encoding in H.265 stream
- [ ] Android HDR10+ rendering with dynamic tone mapping
- [ ] Wide color gamut (Rec.2020) end-to-end
