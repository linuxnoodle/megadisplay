# MegaDisplay

MegaDisplay turns an Android tablet into a secondary monitor + pentablet for Linux. It runs over USB to keep latency low and avoids local network routing issues. Keep in mind, this is vibeslop because Weylus was too low-throughput.

The driver was built for Wayland compositors like Hyprland (it probably only works on Hyprland). It uses the wlroots screencopy protocol to capture a headless output, encodes the frames as H.264 video, and streams them to the tablet.

The original format of this project was done to mimic how SuperDisplay works, hence the name. 

The project has three main pieces:
1. An Android app to decode the video stream.
2. A Rust daemon that runs on the Linux host.
3. A control panel to configure settings like bitrate and input forwarding.

### Input Support

The daemon injects touch and stylus events from the tablet back into the Linux host using uinput. You can use the tablet's touchscreen and pen, including pressure and tilt, directly on your desktop.

### Requirements

- A Wayland compositor supporting the wlroots screencopy protocol (such as Hyprland).
- A Rust toolchain to compile the daemon.
- `gstreamer` and its plugins installed on the host for hardware-accelerated video encoding (e.g., `gst-plugins-bad` for VA-API).
- Access to `/dev/uinput` so the daemon can inject touch and pen events.

### Installation and Usage

To install MegaDisplay, you can download the latest pre-compiled binaries and signed APK from the [GitHub Releases](#) page. If you are on Arch Linux, a `PKGBUILD` is available to build and install the daemon natively using `makepkg`:

```bash
makepkg -si
```

Alternatively, to build everything from source, first install the provided APK on your tablet. Then, compile and install the host binaries. This will also install udev rules for USB and uinput access.

```bash
sudo make install
```

Once installed, enable and start the background daemon as a system service. You must pass your username to the template so it can capture your specific Wayland session.

```bash
sudo systemctl enable --now megadisplayd@$USER
```

Plug the tablet into your computer using a USB cable and open the MegaDisplay app. The daemon will automatically detect the tablet and start streaming. You can configure settings like the hardware encoder, bitrate, and refresh rate by launching the control panel from your terminal.

```bash
megadisplayctl-gui
```

### Supported Hardware

The driver is currently tested and verified on:
- Host: Arch Linux running Hyprland 0.55.2 with an AMD Radeon RX 6950 XT
- Tablet: Samsung Galaxy Tab S9 (SM-X810)

### Performance

With the recent integration of a true zero-copy DMA-BUF pipeline via `gstreamer-rs` (VAAPI/NVENC/AMF), the daemon is now capable of driving the tablet at its native resolution (2800x1752) at 120Hz with virtually zero CPU overhead and rock-solid stability.

The following pipeline latencies were measured over a continuous run at 2800x1752 @ 120Hz using the `megadisplayctl stats` command. Because the hardware encoder runs asynchronously and handles the color conversion directly on the GPU, the total CPU processing time per frame is virtually eliminated.

| Pipeline Stage | Average Delay (ms) |
| --- | --- |
| Compositor Wait | 4.8 ± 0.5 |
| DMA-BUF Export | 0.0 ± 0.0 |
| BGRA→NV12 (GPU) | 0.0 ± 0.0 |
| H.264 Encode (VAAPI) | 8.7 ± 0.8 |
| **Daemon Frame Loop** | **4.8 ± 0.5** |
