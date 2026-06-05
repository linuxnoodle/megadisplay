use clap::{Parser, Subcommand};
use megadisplay_ctl_lib::*;
use std::path::{Path, PathBuf};
use std::time::{Duration, Instant};

#[derive(Parser)]
#[command(name = "megadisplayctl", version, about = "MegaDisplay CLI control tool")]
struct Cli {
    #[arg(short, long, global = true, help = "Override daemon socket path")]
    socket: Option<String>,

    #[command(subcommand)]
    command: Command,
}

#[derive(Subcommand)]
enum Command {
    /// Show connection status
    Status,

    /// Show current performance stats
    Stats {
        #[arg(short, long, help = "Continuously update")]
        watch: bool,
    },

    /// Show current configuration
    Config,

    /// Set video or input parameters (changes take effect live)
    Set {
        #[arg(long, help = "Video width in pixels")]
        width: Option<u32>,
        #[arg(long, help = "Video height in pixels")]
        height: Option<u32>,
        #[arg(long, help = "Target FPS")]
        fps: Option<u32>,
        #[arg(long, help = "Bitrate in kbps")]
        bitrate: Option<u32>,
        #[arg(long, help = "Encode scale factor (0.25–1.0)")]
        encode_scale: Option<f32>,
        #[arg(long, help = "Headless output refresh rate in Hz (requires reconnect)")]
        refresh_hz: Option<u32>,
        #[arg(long, help = "Enable auto-bitrate adjustment")]
        auto_bitrate: Option<bool>,
        #[arg(long, help = "Enable/disable touch")]
        touch: Option<bool>,
        #[arg(long, help = "Enable/disable pen")]
        pen: Option<bool>,
        #[arg(long, help = "Enable/disable keyboard")]
        keyboard: Option<bool>,
        #[arg(long, help = "Show pen cursor on hover (true) or hide (false)")]
        pen_cursor: Option<bool>,
    },

    /// Show current bandwidth throughput and bitrate recommendations
    Throughput,

    /// Shutdown the daemon
    Shutdown,

    /// Benchmark video pipeline performance
    Bench {
        #[arg(short, long, default_value = "10", help = "Duration in seconds")]
        duration: u64,
        #[arg(short, long, default_value = "100", help = "Sample interval in milliseconds")]
        interval_ms: u64,
    },
}

fn main() -> anyhow::Result<()> {
    let cli = Cli::parse();
    let socket = cli
        .socket
        .map(PathBuf::from)
        .unwrap_or_else(default_socket_path);

    match cli.command {
        Command::Status => cmd_status(&socket),
        Command::Stats { watch } => cmd_stats(&socket, watch),
        Command::Config => cmd_config(&socket),
        Command::Set {
            width, height, fps, bitrate, encode_scale, refresh_hz, auto_bitrate,
            touch, pen, keyboard, pen_cursor,
        } => cmd_set(&socket, width, height, fps, bitrate, encode_scale, refresh_hz, auto_bitrate, touch, pen, keyboard, pen_cursor),
        Command::Shutdown => cmd_shutdown(&socket),
        Command::Bench { duration, interval_ms } => cmd_bench(&socket, duration, interval_ms),
        Command::Throughput => cmd_throughput(&socket),
    }
}

fn cmd_status(socket: &Path) -> anyhow::Result<()> {
    match send_request(socket, &Request::GetStatus)? {
        Response::Status(s) => {
            let conn = if s.connected { "Connected" } else { "Disconnected" };
            println!("{conn}  peer_version={}", s.peer_version);
            println!("Video: {}x{} @ {}fps, {}kbps, scale {:.2}, {}Hz, auto_bitrate={}, enabled={}",
                s.video.width, s.video.height, s.video.fps,
                s.video.bitrate_kbps, s.video.encode_scale, s.video.refresh_hz, s.video.auto_bitrate, s.video.enabled);
            println!("Input: touch={} pen={} keyboard={} pen_cursor={}",
                s.input.touch, s.input.pen, s.input.keyboard, s.input.pen_cursor);
        }
        Response::Error { message } => anyhow::bail!("{message}"),
        _ => anyhow::bail!("Unexpected response"),
    }
    Ok(())
}

fn cmd_stats(socket: &Path, watch: bool) -> anyhow::Result<()> {
    loop {
        match send_request(socket, &Request::GetStats)? {
            Response::Stats(s) => {
                let fps = if s.frame_total_ms > 0.0 { 1000.0 / s.frame_total_ms } else { 0.0 };
                let nal_kb = (s.nal_bytes as f32) / 1024.0;
                if watch {
                    print!("\x1b[2J\x1b[H");
                }
                println!("Frames: {} encoded, {} dropped", s.frames_encoded, s.frames_dropped);
                println!("FPS (actual):    {:.1}", fps);
                println!("Frame total:     {:.1} ms", s.frame_total_ms);
                println!("  Compositor:    {:.1} ms", s.wait_ms);
                println!("  SHM copy:      {:.1} ms", s.copy_ms);
                println!("  BGRA→YUV:      {:.1} ms", s.convert_ms);
                println!("  H.264 encode:  {:.1} ms", s.encode_ms);
                println!("NAL size:        {:.1} KB", nal_kb);
                if !watch { break; }
                std::thread::sleep(Duration::from_millis(200));
            }
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response"),
        }
    }
    Ok(())
}

fn cmd_config(socket: &Path) -> anyhow::Result<()> {
    match send_request(socket, &Request::GetConfig)? {
        Response::Config(c) => {
            println!("[video]");
            println!("width = {}", c.video.width);
            println!("height = {}", c.video.height);
            println!("fps = {}", c.video.fps);
            println!("bitrate_kbps = {}", c.video.bitrate_kbps);
            println!("encode_scale = {}", c.video.encode_scale);
            println!("refresh_hz = {}", c.video.refresh_hz);
            println!("auto_bitrate = {}", c.video.auto_bitrate);
            println!();
            println!("[input]");
            println!("touch = {}", c.input.touch);
            println!("pen = {}", c.input.pen);
            println!("keyboard = {}", c.input.keyboard);
            println!("pen_cursor = {}", c.input.pen_cursor);
            println!();
            println!("[output]");
            println!("create = {}", c.output.create);
            println!("name = {}", c.output.name);
        }
        Response::Error { message } => anyhow::bail!("{message}"),
        _ => anyhow::bail!("Unexpected response"),
    }
    Ok(())
}

#[allow(clippy::too_many_arguments)]
fn cmd_set(
    socket: &Path,
    width: Option<u32>, height: Option<u32>, fps: Option<u32>,
    bitrate: Option<u32>, encode_scale: Option<f32>,
    refresh_hz: Option<u32>, auto_bitrate: Option<bool>,
    touch: Option<bool>, pen: Option<bool>, keyboard: Option<bool>,
    pen_cursor: Option<bool>,
) -> anyhow::Result<()> {
    let has_video = width.is_some() || height.is_some() || fps.is_some()
        || bitrate.is_some() || encode_scale.is_some()
        || refresh_hz.is_some() || auto_bitrate.is_some();
    let has_input = touch.is_some() || pen.is_some() || keyboard.is_some() || pen_cursor.is_some();

    if has_video {
        match send_request(socket, &Request::SetVideo {
            width, height, fps, bitrate_kbps: bitrate, encode_scale,
            refresh_hz, auto_bitrate, enabled: None,
        })? {
            Response::Ok => println!("Video settings applied"),
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response"),
        }
    }

    if has_input {
        match send_request(socket, &Request::SetInput { touch, pen, keyboard, pen_cursor })? {
            Response::Ok => println!("Input settings applied"),
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response"),
        }
    }

    if !has_video && !has_input {
        anyhow::bail!("No settings specified. Use --width, --height, --fps, --bitrate, --encode-scale, --refresh-hz, --auto-bitrate, --touch, --pen, --keyboard, or --pen-cursor");
    }
    Ok(())
}

fn cmd_shutdown(socket: &Path) -> anyhow::Result<()> {
    match send_request(socket, &Request::Shutdown)? {
        Response::Ok => println!("Daemon shutting down"),
        Response::Error { message } => anyhow::bail!("{message}"),
        _ => anyhow::bail!("Unexpected response"),
    }
    Ok(())
}

struct Sample {
    frame_total_ms: f32,
    wait_ms: f32,
    copy_ms: f32,
    convert_ms: f32,
    encode_ms: f32,
    nal_bytes: usize,
    frames_encoded: u64,
    frames_dropped: u64,
}

fn cmd_bench(socket: &Path, duration: u64, interval_ms: u64) -> anyhow::Result<()> {
    let interval = Duration::from_millis(interval_ms);
    let start = Instant::now();
    let deadline = start + Duration::from_secs(duration);
    let mut samples: Vec<Sample> = Vec::new();

    println!("Benchmarking for {duration}s (sampling every {interval_ms}ms)...");
    println!();

    let mut last_encoded: Option<u64> = None;
    let mut last_dropped: Option<u64> = None;

    while Instant::now() < deadline {
        match send_request(socket, &Request::GetStats)? {
            Response::Stats(s) => {
                if s.frame_total_ms <= 0.0 {
                    std::thread::sleep(interval);
                    continue;
                }

                let new_encoded = match last_encoded {
                    Some(prev) => s.frames_encoded.saturating_sub(prev),
                    None => { last_encoded = Some(s.frames_encoded); 0 }
                };
                let new_dropped = match last_dropped {
                    Some(prev) => s.frames_dropped.saturating_sub(prev),
                    None => { last_dropped = Some(s.frames_dropped); 0 }
                };

                if last_encoded.is_some() {
                    last_encoded = Some(s.frames_encoded);
                    last_dropped = Some(s.frames_dropped);
                    samples.push(Sample {
                        frame_total_ms: s.frame_total_ms,
                        wait_ms: s.wait_ms,
                        copy_ms: s.copy_ms,
                        convert_ms: s.convert_ms,
                        encode_ms: s.encode_ms,
                        nal_bytes: s.nal_bytes,
                        frames_encoded: new_encoded,
                        frames_dropped: new_dropped,
                    });
                }
            }
            _ => anyhow::bail!("Failed to get stats — is the daemon running and connected?"),
        }
        std::thread::sleep(interval);
    }

    if samples.is_empty() {
        anyhow::bail!("No samples collected — device may not be connected");
    }

    let total_encoded: u64 = samples.iter().map(|s| s.frames_encoded).sum();
    let total_dropped: u64 = samples.iter().map(|s| s.frames_dropped).sum();
    let wall_duration = start.elapsed().as_secs_f64();
    let avg_fps = if wall_duration > 0.0 {
        total_encoded as f64 / wall_duration
    } else {
        0.0
    };

    let ms = |vals: &[f32]| -> (f32, f32, f32, f32, f32) {
        let mut sorted: Vec<f32> = vals.to_vec();
        sorted.sort_by(|a, b| a.partial_cmp(b).unwrap());
        let n = sorted.len();
        let sum: f32 = sorted.iter().sum();
        (
            sorted[0],
            sum / n as f32,
            sorted[n / 2],
            sorted[(n * 95) / 100],
            sorted[n - 1],
        )
    };

    let nal = |vals: &[usize]| -> (usize, f32, usize, usize, usize) {
        let mut sorted: Vec<usize> = vals.to_vec();
        sorted.sort();
        let n = sorted.len();
        let sum: usize = sorted.iter().sum();
        (
            sorted[0],
            sum as f32 / n as f32,
            sorted[n / 2],
            sorted[(n * 95) / 100],
            sorted[n - 1],
        )
    };

    let totals: Vec<f32> = samples.iter().map(|s| s.frame_total_ms).collect();
    let waits: Vec<f32> = samples.iter().map(|s| s.wait_ms).collect();
    let copys: Vec<f32> = samples.iter().map(|s| s.copy_ms).collect();
    let converts: Vec<f32> = samples.iter().map(|s| s.convert_ms).collect();
    let encodes: Vec<f32> = samples.iter().map(|s| s.encode_ms).collect();
    let nals: Vec<usize> = samples.iter().map(|s| s.nal_bytes).collect();
    let fps_samples: Vec<f32> = samples.iter().map(|s| 1000.0 / s.frame_total_ms).collect();

    let (t_min, t_avg, t_p50, t_p95, t_max) = ms(&totals);
    let (w_min, w_avg, w_p50, w_p95, w_max) = ms(&waits);
    let (c_min, c_avg, c_p50, c_p95, c_max) = ms(&copys);
    let (v_min, v_avg, v_p50, v_p95, v_max) = ms(&converts);
    let (e_min, e_avg, e_p50, e_p95, e_max) = ms(&encodes);
    let (f_min, f_avg, f_p50, f_p95, f_max) = ms(&fps_samples);
    let (n_min, n_avg, n_p50, n_p95, n_max) = nal(&nals);

    println!("MegaDisplay Benchmark — {wall_duration:.1}s, {interval_ms}ms interval, {} samples", samples.len());
    println!();
    println!("{:<16} {:>8} {:>8} {:>8} {:>8} {:>8}", "Metric", "Min", "Avg", "P50", "P95", "Max");
    println!("{} {} {} {} {} {}", "─".repeat(16), "─".repeat(8), "─".repeat(8), "─".repeat(8), "─".repeat(8), "─".repeat(8));

    print_row("Frame total", t_min, t_avg, t_p50, t_p95, t_max, "ms");
    print_row("Achieved FPS", f_min, f_avg, f_p50, f_p95, f_max, "fps");
    print_row("Compositor wait", w_min, w_avg, w_p50, w_p95, w_max, "ms");
    print_row("SHM copy", c_min, c_avg, c_p50, c_p95, c_max, "ms");
    print_row("BGRA→YUV", v_min, v_avg, v_p50, v_p95, v_max, "ms");
    print_row("H.264 encode", e_min, e_avg, e_p50, e_p95, e_max, "ms");

    let nmin = (n_min as f32) / 1024.0;
    let navg = n_avg / 1024.0;
    let np50 = (n_p50 as f32) / 1024.0;
    let np95 = (n_p95 as f32) / 1024.0;
    let nmax = (n_max as f32) / 1024.0;
    println!(
        "{:<16} {:>7.1}KB {:>7.1}KB {:>7.1}KB {:>7.1}KB {:>7.1}KB",
        "NAL size", nmin, navg, np50, np95, nmax
    );

    println!();
    println!("Frames encoded: {total_encoded}  ({avg_fps:.1} avg FPS)");
    println!("Frames dropped: {total_dropped}  ({:.1}%)", 
        if total_encoded + total_dropped > 0 {
            total_dropped as f64 / (total_encoded + total_dropped) as f64 * 100.0
        } else { 0.0 });

    let work_avg = w_avg + c_avg + v_avg + e_avg;
    let idle_avg = t_avg - work_avg;
    println!();
    println!("Pipeline analysis:");
    println!("  Work sum:    {work_avg:.1}ms");
    println!("  Idle/headroom: {idle_avg:.1}ms");
    if idle_avg < 0.0 {
        println!("  ⚠ Pipeline is over budget — encode is the bottleneck");
    } else if idle_avg < 3.0 {
        println!("  Tight headroom — consider encode_scale < 1.0 for 60fps");
    } else {
        println!("  ✓ Healthy headroom");
    }

    Ok(())
}

fn print_row(label: &str, min: f32, avg: f32, p50: f32, p95: f32, max: f32, unit: &str) {
    if unit == "fps" {
        println!(
            "{:<16} {:>7.1}  {:>7.1}  {:>7.1}  {:>7.1}  {:>7.1}",
            label, min, avg, p50, p95, max
        );
    } else {
        println!(
            "{:<16} {:>6.1}ms {:>6.1}ms {:>6.1}ms {:>6.1}ms {:>6.1}ms",
            label, min, avg, p50, p95, max
        );
    }
}

fn cmd_throughput(socket: &Path) -> anyhow::Result<()> {
    let (status, stats, config) = {
        let s = match send_request(socket, &Request::GetStatus)? {
            Response::Status(s) => s,
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response for GetStatus"),
        };
        let st = match send_request(socket, &Request::GetStats)? {
            Response::Stats(st) => st,
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response for GetStats"),
        };
        let c = match send_request(socket, &Request::GetConfig)? {
            Response::Config(c) => c,
            Response::Error { message } => anyhow::bail!("{message}"),
            _ => anyhow::bail!("Unexpected response for GetConfig"),
        };
        (s, st, c)
    };

    if !status.connected {
        anyhow::bail!("Not connected to Android device");
    }

    if stats.frames_encoded == 0 {
        anyhow::bail!("No frames encoded yet");
    }

    let configured_fps = config.video.fps;
    let configured_bitrate = config.video.bitrate_kbps;

    let nal_bits_per_frame = (stats.nal_bytes as f64) * 8.0;
    let actual_kbps = nal_bits_per_frame * configured_fps as f64 / 1000.0;
    let utilization = if configured_bitrate > 0 {
        actual_kbps / configured_bitrate as f64 * 100.0
    } else {
        0.0
    };

    let achieved_fps = if stats.frame_total_ms > 0.0 {
        1000.0 / stats.frame_total_ms as f64
    } else {
        0.0
    };

    let overhead_per_frame = nal_bits_per_frame + 200.0 * 8.0; // ~200B per frame for headers/fragments
    let total_throughput_kbps = overhead_per_frame * achieved_fps / 1000.0;

    let drop_rate = if stats.frames_encoded + stats.frames_dropped > 0 {
        stats.frames_dropped as f64 / (stats.frames_encoded + stats.frames_dropped) as f64 * 100.0
    } else {
        0.0
    };

    println!("Throughput Analysis");
    println!("====================");
    println!();
    println!("Resolution:     {}x{}", config.video.width, config.video.height);
    println!("Encode scale:   {:.2} ({}x{})", config.video.encode_scale,
        ((config.video.width as f32 * config.video.encode_scale) as u32),
        ((config.video.height as f32 * config.video.encode_scale) as u32));
    println!("Target FPS:     {}", configured_fps);
    println!("Achieved FPS:   {:.1}", achieved_fps);
    println!();
    println!("NAL size:       {:.1} KB ({:.0} kbits)", stats.nal_bytes as f64 / 1024.0, nal_bits_per_frame / 1000.0);
    println!("Actual bitrate: {:.0} kbps", actual_kbps);
    println!("Configured:     {} kbps", configured_bitrate);
    println!("Utilization:    {:.1}%", utilization);
    println!();
    println!("Total throughput (NAL + overhead): {:.0} kbps ({:.1} MB/s)", total_throughput_kbps, total_throughput_kbps / 8000.0);
    println!("Frames encoded: {}", stats.frames_encoded);
    println!("Frames dropped: {} ({:.1}%)", stats.frames_dropped, drop_rate);
    println!();
    println!("Pipeline timing:");
    println!("  Compositor:   {:.1} ms", stats.wait_ms);
    println!("  SHM copy:     {:.1} ms", stats.copy_ms);
    println!("  BGRA->YUV:    {:.1} ms", stats.convert_ms);
    println!("  H.264 encode: {:.1} ms", stats.encode_ms);
    println!("  Frame total:  {:.1} ms", stats.frame_total_ms);
    println!();

    println!("Recommendation:");
    if drop_rate > 2.0 {
        let suggested = (configured_bitrate as f64 * 0.7) as u32;
        println!("  Frames dropping ({:.1}%). Reduce bitrate to ~{} kbps or enable auto-bitrate.", drop_rate, suggested);
    } else if utilization < 50.0 && achieved_fps < configured_bitrate as f64 {
        println!("  Low utilization ({:.0}%). Encoder is quality-limited, not bandwidth-limited.", utilization);
        println!("  Consider increasing bitrate for better quality.");
    } else if utilization > 90.0 && drop_rate < 1.0 {
        println!("  High utilization ({:.0}%) with no drops. Transport handling current bitrate well.", utilization);
        let suggested = (configured_bitrate as f64 * 1.2) as u32;
        println!("  Could try increasing to ~{} kbps.", suggested);
    } else {
        println!("  Current settings look stable.");
    }

    if !config.video.auto_bitrate {
        println!("  Tip: Enable auto-bitrate with 'megadisplayctl set --auto-bitrate true'");
    }

    Ok(())
}
