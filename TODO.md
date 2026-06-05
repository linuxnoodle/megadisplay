# MegaDisplay TODO

## Android — Reconnection (HIGH PRIORITY)
User reports: tabbing out of the display app disconnects, reopening doesn't reconnect, must physically replug USB cable.

**Root cause**: Samsung kills the background app process → PFD closed → USB accessory session torn down → daemon can't software-reconnect (device stuck in stale AOAP state, USB reset insufficient).

**Started but not finished**:
- `VideoDecoder.kt` — FIXED: non-blocking `waitForBuffer()` (50ms timeout), always releases output buffers, `pause()`/`resume()` methods
- `MirrorActivity.kt` — FIXED: `onPause()` pauses decoder, `onResume()` resumes, `onDisconnect()` shows "Reconnecting..." instead of `finish()`, reconnection thread polls `usbManager.accessoryList`
- `MirrorClient.kt` — FIXED: removed recursive `onDisconnect()` call from `stop()`

**Still needs doing**:
1. Create `MirrorService.kt` — foreground service (notification + partial wake lock) to prevent process death when Activity goes to background
2. Update `AndroidManifest.xml` — add `<service>`, `FOREGROUND_SERVICE`, `FOREGROUND_SERVICE_CONNECTED_DEVICE` permissions, `foregroundServiceType="connectedDevice"`
3. Update `MirrorActivity.kt` — `startForegroundService()` in `onCreate()`, `stopService()` in `onDestroy()`
4. Update `MainActivity.kt` — `onResume()` should check `usbManager.accessoryList` and auto-launch `MirrorActivity` as a fallback for when the process was killed and user reopens via launcher icon
5. Test: tab out, tab back in, verify reconnection works without cable replug

## Rust daemon — recently done
- `pen_cursor` config option (skip hover events when false)
- `refresh_hz` config option (default 120, controls headless output refresh rate)
- `auto_bitrate` logic in encode loop (every 60 frames: +500kbps if stable, -20% if dropping)
- `megadisplayctl throughput` command
- Removed debug `info!` logs for pen/touch in session loop

## GUI — recently done
- Bitrate field greyed out when auto_bitrate enabled
- Effective bitrate graph (purple line + dashed configured bitrate reference)

## Other pending
- Test `refresh_hz=120` — should halve compositor wait from ~15ms to ~8ms
- Test 2800x1752 native resolution with optimized settings
- Arch PKGBUILD
- Signed release APK
- README
