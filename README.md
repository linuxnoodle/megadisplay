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
- Access to `/dev/uinput` so the daemon can inject touch and pen events.

### Installation and Usage

Install the provided APK on your tablet. Then, build the host binaries and install the systemd service.

```bash
make install
```

Enable and start the background daemon.

```bash
systemctl --user enable --now megadisplayd
```

Plug the tablet into your computer using a USB cable and open the MegaDisplay app. The daemon will automatically detect the tablet and start streaming. You can configure settings like the bitrate and refresh rate by launching the control panel from your terminal.

```bash
megadisplayctl-gui
```

### Supported Hardware

The driver is currently tested and verified on:
- Host: CachyOS running Hyprland 0.55.2
- Tablet: Samsung Galaxy Tab S9 (SM-X810)
I'll go ahead and try this out on my laptop later.

### Performance

The following pipeline latencies were measured over a continuous run on the above hardware using the `megadisplayctl stats` command.

| Pipeline Stage | Average Delay (ms) |
| --- | --- |
| Compositor Wait | 2.86 ± 0.68 |
| SHM Copy | 1.66 ± 0.99 |
| BGRA→YUV Conversion | 4.17 ± 0.63 |
| H.264 Encode | 10.11 ± 1.35 |
| **Frame Total** | **14.21 ± 2.15** |
