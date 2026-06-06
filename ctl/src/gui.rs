use eframe::egui;
use megadisplay_ctl_lib::{
    DaemonConfig, DaemonStatus, Request, Response, StatsSnapshot, default_socket_path, send_request,
};
use std::path::PathBuf;
use std::time::{Duration, Instant};

#[derive(Debug, Clone, serde::Deserialize)]
struct HyprMonitor {
    name: String,
    x: i32,
    y: i32,
    width: i32,
    height: i32,
    scale: f32,
    #[serde(rename = "refreshRate")]
    refresh_rate: f32,
}

const BW_SETTLE_MS: u64 = 2_000;
const BW_MEASURE_MS: u64 = 2_500;
const BW_DROP_THRESHOLD: f32 = 1.0;

struct BandwidthTest {
    saved_bitrate: u32,
    saved_auto: bool,
    step_kbps: u32,
    max_kbps: u32,
    current_bitrate: u32,
    last_stable: u32,
    phase: BwTestPhase,
    phase_start: Instant,
    frames_at_measure_start: u64,
    drops_at_measure_start: u64,
    log: Vec<BwTestEntry>,
    result: Option<u32>,
}

struct BwTestEntry {
    bitrate: u32,
    drop_rate: f32,
    achieved_kbps: f32,
}

impl Clone for BwTestEntry {
    fn clone(&self) -> Self {
        Self {
            bitrate: self.bitrate,
            drop_rate: self.drop_rate,
            achieved_kbps: self.achieved_kbps,
        }
    }
}

#[derive(Clone, PartialEq)]
enum BwTestPhase {
    Settling,
    Measuring,
    Restoring,
    Done,
}

fn main() -> eframe::Result {
    let options = eframe::NativeOptions {
        viewport: egui::ViewportBuilder::default()
            .with_inner_size([520.0, 820.0])
            .with_title("MegaDisplay"),
        ..Default::default()
    };
    eframe::run_native(
        "MegaDisplay",
        options,
        Box::new(|_cc| Ok(Box::new(MegaDisplayApp::default()))),
    )
}

struct MegaDisplayApp {
    socket_path: String,
    connected: bool,
    status: Option<DaemonStatus>,
    stats: Option<StatsSnapshot>,
    config: Option<DaemonConfig>,
    error: Option<String>,

    fps_history: Vec<f32>,
    latency_history: Vec<f32>,
    bitrate_history: Vec<f32>,
    frametime_history: Vec<f32>,
    jitter_history: Vec<f32>,
    configured_bitrate: f32,
    target_frame_ms: f32,
    last_poll: Option<Instant>,

    last_frames: u64,
    last_stats_time: Option<Instant>,

    bandwidth_test: Option<BandwidthTest>,
    bw_test_min: u32,
    bw_test_max: u32,
    bw_test_step: u32,

    monitors: Vec<HyprMonitor>,
    last_monitors_fetch: Option<Instant>,
    target_x: i32,
    target_y: i32,
    pos_initialized: bool,
}

impl Default for MegaDisplayApp {
    fn default() -> Self {
        Self {
            socket_path: String::new(),
            connected: false,
            status: None,
            stats: None,
            config: None,
            error: None,
            fps_history: Vec::new(),
            latency_history: Vec::new(),
            bitrate_history: Vec::new(),
            frametime_history: Vec::new(),
            jitter_history: Vec::new(),
            configured_bitrate: 0.0,
            target_frame_ms: 0.0,
            last_poll: None,
            last_frames: 0,
            last_stats_time: None,
            bandwidth_test: None,
            bw_test_min: 10_000,
            bw_test_max: 50_000,
            bw_test_step: 5_000,
            monitors: Vec::new(),
            last_monitors_fetch: None,
            target_x: 0,
            target_y: 0,
            pos_initialized: false,
        }
    }
}

impl MegaDisplayApp {
    fn socket_path(&self) -> PathBuf {
        if self.socket_path.is_empty() {
            default_socket_path()
        } else {
            PathBuf::from(&self.socket_path)
        }
    }

    fn poll_monitors(&mut self) {
        let now = Instant::now();
        if self
            .last_monitors_fetch
            .map_or(true, |last| now.duration_since(last).as_secs() > 1)
        {
            self.last_monitors_fetch = Some(now);
            if let Ok(output) = std::process::Command::new("hyprctl")
                .args(&["monitors", "-j"])
                .output()
            {
                if let Ok(monitors) = serde_json::from_slice::<Vec<HyprMonitor>>(&output.stdout) {
                    self.monitors = monitors;
                }
            }
        }
    }

    fn send_request(&mut self, req: &Request) -> Option<Response> {
        let path = self.socket_path();
        send_request(&path, req).ok()
    }

    fn poll(&mut self) {
        let now = Instant::now();
        let should_poll = self.last_poll.is_none()
            || now.duration_since(self.last_poll.unwrap()) > Duration::from_millis(500);
        if !should_poll {
            return;
        }
        self.last_poll = Some(now);
        self.error = None;

        match self.send_request(&Request::GetStatus) {
            Some(Response::Status(s)) => {
                self.configured_bitrate = s.video.bitrate_kbps as f32;
                self.status = Some(s);
            }
            Some(Response::Error { message }) => self.error = Some(message),
            None => {
                self.connected = false;
                return;
            }
            _ => {}
        }
        self.connected = true;

        if let Some(Response::Stats(s)) = self.send_request(&Request::GetStats) {
            let fps = if let Some(prev_time) = self.last_stats_time {
                let dt = now.duration_since(prev_time).as_secs_f32();
                if dt > 0.0 {
                    (s.frames_encoded - self.last_frames) as f32 / dt
                } else {
                    0.0
                }
            } else {
                0.0
            };
            self.last_frames = s.frames_encoded;
            self.last_stats_time = Some(now);

            self.fps_history.push(fps);
            if self.fps_history.len() > 120 {
                self.fps_history.remove(0);
            }

            let total_latency = s.capture_ms + s.encode_ms;
            self.latency_history.push(total_latency);
            if self.latency_history.len() > 120 {
                self.latency_history.remove(0);
            }

            // Frametime + jitter
            let ft = s.frame_total_ms;
            let jitter = if let Some(&prev) = self.frametime_history.last() {
                (ft - prev).abs()
            } else {
                0.0
            };
            self.frametime_history.push(ft);
            if self.frametime_history.len() > 300 {
                self.frametime_history.remove(0);
            }
            self.jitter_history.push(jitter);
            if self.jitter_history.len() > 300 {
                self.jitter_history.remove(0);
            }

            // Update target frame budget from status
            if let Some(ref st) = self.status {
                let fps = st.video.fps.max(1);
                self.target_frame_ms = 1000.0 / fps as f32;
            }

            let effective_kbps = if s.frame_total_ms > 0.0 {
                (s.nal_bytes as f32 * 8.0) / 1000.0 * (1000.0 / s.frame_total_ms)
            } else {
                0.0
            };
            self.bitrate_history.push(effective_kbps);
            if self.bitrate_history.len() > 120 {
                self.bitrate_history.remove(0);
            }

            self.stats = Some(s);
        }

        if self.config.is_none()
            && let Some(Response::Config(c)) = self.send_request(&Request::GetConfig)
        {
            self.config = Some(c);
        }
    }

    fn send_and_reload(&mut self, req: Request) {
        match self.send_request(&req) {
            Some(Response::Ok) => {
                self.config = None;
                self.poll();
            }
            Some(Response::Error { message }) => self.error = Some(message),
            _ => self.error = Some("No response from daemon".into()),
        }
    }

    fn start_bandwidth_test(&mut self) {
        let cfg = match &self.config {
            Some(c) => c.clone(),
            None => return,
        };
        let saved_bitrate = cfg.video.bitrate_kbps;
        let saved_auto = cfg.video.auto_bitrate;
        let start = self.bw_test_min;
        let step = self.bw_test_step.max(100);
        let max = self.bw_test_max.max(start);

        let test = BandwidthTest {
            saved_bitrate,
            saved_auto,
            step_kbps: step,
            max_kbps: max,
            current_bitrate: start,
            last_stable: 0,
            phase: BwTestPhase::Settling,
            phase_start: Instant::now(),
            frames_at_measure_start: 0,
            drops_at_measure_start: 0,
            log: Vec::new(),
            result: None,
        };

        self.send_request(&Request::SetVideo {
            width: None,
            height: None,
            fps: None,
            bitrate_kbps: Some(start),
            encode_scale: None,
            refresh_hz: None,
            auto_bitrate: Some(false),
            encoder: None,
            enabled: None,
        });
        self.bandwidth_test = Some(test);
    }

    fn cancel_bandwidth_test(&mut self) {
        if let Some(ref test) = self.bandwidth_test {
            self.send_request(&Request::SetVideo {
                width: None,
                height: None,
                fps: None,
                bitrate_kbps: Some(test.saved_bitrate),
                encode_scale: None,
                refresh_hz: None,
                auto_bitrate: Some(test.saved_auto),
                encoder: None,
                enabled: None,
            });
        }
        self.bandwidth_test = None;
    }

    fn tick_bandwidth_test(&mut self) {
        let now = Instant::now();

        let phase = self.bandwidth_test.as_ref().unwrap().phase.clone();

        match phase {
            BwTestPhase::Settling => {
                let test = self.bandwidth_test.as_ref().unwrap();
                let elapsed = now.duration_since(test.phase_start).as_millis() as u64;
                if elapsed >= BW_SETTLE_MS {
                    let (frames, drops) = self
                        .stats
                        .as_ref()
                        .map(|s| (s.frames_encoded, s.frames_dropped))
                        .unwrap_or((0, 0));
                    let test = self.bandwidth_test.as_mut().unwrap();
                    test.frames_at_measure_start = frames;
                    test.drops_at_measure_start = drops;
                    test.phase = BwTestPhase::Measuring;
                    test.phase_start = now;
                }
            }
            BwTestPhase::Measuring => {
                let elapsed = {
                    let test = self.bandwidth_test.as_ref().unwrap();
                    now.duration_since(test.phase_start).as_millis() as u64
                };
                if elapsed < BW_MEASURE_MS {
                    return;
                }

                let stats = match &self.stats {
                    Some(s) => s.clone(),
                    None => return,
                };

                let (current_bitrate, saved_br, saved_auto, test_step, test_max) = {
                    let test = self.bandwidth_test.as_ref().unwrap();
                    (
                        test.current_bitrate,
                        test.saved_bitrate,
                        test.saved_auto,
                        test.step_kbps,
                        test.max_kbps,
                    )
                };
                let (frames_start, drops_start) = {
                    let test = self.bandwidth_test.as_ref().unwrap();
                    (test.frames_at_measure_start, test.drops_at_measure_start)
                };

                let frame_delta = stats.frames_encoded - frames_start;
                let drop_delta = stats.frames_dropped - drops_start;
                let total = frame_delta + drop_delta;
                let drop_rate = if total > 0 {
                    drop_delta as f32 / total as f32 * 100.0
                } else {
                    0.0
                };
                let achieved_kbps = if stats.frame_total_ms > 0.0 {
                    (stats.nal_bytes as f32 * 8.0) / 1000.0 * (1000.0 / stats.frame_total_ms)
                } else {
                    0.0
                };

                let stable = drop_rate < BW_DROP_THRESHOLD;
                let at_max = current_bitrate >= test_max;

                {
                    let test = self.bandwidth_test.as_mut().unwrap();
                    test.log.push(BwTestEntry {
                        bitrate: current_bitrate,
                        drop_rate,
                        achieved_kbps,
                    });
                    if stable {
                        test.last_stable = current_bitrate;
                    }
                }

                if stable && !at_max {
                    let next_br = (current_bitrate + test_step).min(test_max);
                    {
                        let test = self.bandwidth_test.as_mut().unwrap();
                        test.current_bitrate = next_br;
                        test.phase = BwTestPhase::Settling;
                        test.phase_start = now;
                    }
                    self.send_request(&Request::SetVideo {
                        width: None,
                        height: None,
                        fps: None,
                        bitrate_kbps: Some(next_br),
                        encode_scale: None,
                        refresh_hz: None,
                        auto_bitrate: Some(false),
                        encoder: None,
                        enabled: None,
                    });
                } else {
                    {
                        let test = self.bandwidth_test.as_mut().unwrap();
                        test.result = Some(test.last_stable);
                        test.phase = BwTestPhase::Restoring;
                        test.phase_start = now;
                    }
                    self.send_request(&Request::SetVideo {
                        width: None,
                        height: None,
                        fps: None,
                        bitrate_kbps: Some(saved_br),
                        encode_scale: None,
                        refresh_hz: None,
                        auto_bitrate: Some(saved_auto),
                        encoder: None,
                        enabled: None,
                    });
                }
            }
            BwTestPhase::Restoring => {
                let test = self.bandwidth_test.as_ref().unwrap();
                let elapsed = now.duration_since(test.phase_start).as_millis() as u64;
                if elapsed >= 1_000 {
                    let test = self.bandwidth_test.as_mut().unwrap();
                    test.phase = BwTestPhase::Done;
                }
            }
            BwTestPhase::Done => {}
        }
    }

    fn render_bandwidth_test_ui(&mut self, ui: &mut egui::Ui, cfg: &mut DaemonConfig) {
        enum BwUi {
            Idle,
            Running {
                current_bitrate: u32,
                phase: BwTestPhase,
            },
            Done {
                result: Option<u32>,
            },
        }

        let ui_state = match &self.bandwidth_test {
            None => BwUi::Idle,
            Some(t) if t.phase != BwTestPhase::Done => BwUi::Running {
                current_bitrate: t.current_bitrate,
                phase: t.phase.clone(),
            },
            Some(t) => BwUi::Done { result: t.result },
        };

        match ui_state {
            BwUi::Idle => {
                let connected = self.status.as_ref().is_some_and(|s| s.connected);
                egui::Grid::new("bw_test_cfg")
                    .num_columns(2)
                    .spacing([8.0, 4.0])
                    .show(ui, |ui| {
                        ui.label("Bandwidth test:");
                        ui.horizontal(|ui| {
                            ui.add(
                                egui::DragValue::new(&mut self.bw_test_min)
                                    .range(500..=100_000)
                                    .suffix(" kbps"),
                            );
                            ui.label("to");
                            ui.add(
                                egui::DragValue::new(&mut self.bw_test_max)
                                    .range(500..=100_000)
                                    .suffix(" kbps"),
                            );
                            ui.label("step");
                            ui.add(
                                egui::DragValue::new(&mut self.bw_test_step)
                                    .range(100..=20_000)
                                    .suffix(" kbps"),
                            );
                            if ui
                                .add_enabled(connected, egui::Button::new("Test"))
                                .on_hover_text(
                                    "Sweeps bitrate from min to max in step increments.\n\
                                     Measures frame drops at each level to find the\n\
                                     maximum stable bitrate for auto-bitrate.",
                                )
                                .clicked()
                            {
                                self.start_bandwidth_test();
                            }
                        });
                        ui.end_row();
                    });
            }
            BwUi::Running {
                current_bitrate,
                phase,
            } => {
                ui.horizontal(|ui| {
                    ui.label("Bandwidth test:");
                    let phase_label = match phase {
                        BwTestPhase::Settling => "settling",
                        BwTestPhase::Measuring => "measuring",
                        _ => "",
                    };
                    ui.label(
                        egui::RichText::new(format!(
                            "{} kbps ({})\u{2026}",
                            current_bitrate, phase_label
                        ))
                        .color(egui::Color32::from_rgb(100, 180, 255)),
                    );
                    if ui.button("Cancel").clicked() {
                        self.cancel_bandwidth_test();
                    }
                });
            }
            BwUi::Done { result } => {
                ui.horizontal(|ui| {
                    ui.label("Bandwidth test:");
                    if let Some(max) = result {
                        if max > 0 {
                            ui.label(
                                egui::RichText::new(format!("Max stable: {} kbps", max))
                                    .color(egui::Color32::from_rgb(80, 200, 120))
                                    .strong(),
                            );
                            if ui.button("Apply + Auto").clicked() {
                                cfg.video.bitrate_kbps = max;
                                cfg.video.auto_bitrate = true;
                                self.send_and_reload(Request::SetVideo {
                                    width: None,
                                    height: None,
                                    fps: None,
                                    bitrate_kbps: Some(max),
                                    encode_scale: None,
                                    refresh_hz: None,
                                    auto_bitrate: Some(true),
                                    encoder: None,
                                    enabled: None,
                                });
                                self.bandwidth_test = None;
                            }
                            if ui.button("Apply bitrate").clicked() {
                                cfg.video.bitrate_kbps = max;
                                self.send_and_reload(Request::SetVideo {
                                    width: None,
                                    height: None,
                                    fps: None,
                                    bitrate_kbps: Some(max),
                                    encode_scale: None,
                                    refresh_hz: None,
                                    auto_bitrate: None,
                                    encoder: None,
                                    enabled: None,
                                });
                                self.bandwidth_test = None;
                            }
                        } else {
                            ui.label(
                                egui::RichText::new("No stable bitrate found")
                                    .color(egui::Color32::from_rgb(255, 140, 80)),
                            );
                        }
                        if ui.button("Dismiss").clicked() {
                            self.bandwidth_test = None;
                        }
                    }
                });
            }
        }

        // Show test log
        let log_to_show = self
            .bandwidth_test
            .as_ref()
            .filter(|t| !t.log.is_empty())
            .map(|t| t.log.clone());
        if let Some(log) = log_to_show {
            ui.add_space(2.0);
            egui::Grid::new("bw_log")
                .num_columns(3)
                .spacing([16.0, 2.0])
                .striped(true)
                .show(ui, |ui| {
                    ui.label(egui::RichText::new("Bitrate").weak().small());
                    ui.label(egui::RichText::new("Drop rate").weak().small());
                    ui.label(egui::RichText::new("Achieved").weak().small());
                    ui.end_row();
                    for entry in &log {
                        let unstable = entry.drop_rate >= BW_DROP_THRESHOLD;
                        let color = if unstable {
                            egui::Color32::from_rgb(255, 100, 80)
                        } else {
                            egui::Color32::from_rgb(150, 200, 150)
                        };
                        ui.label(egui::RichText::new(format!("{} k", entry.bitrate)).small());
                        ui.colored_label(
                            color,
                            egui::RichText::new(format!("{:.1}%", entry.drop_rate)).small(),
                        );
                        ui.label(
                            egui::RichText::new(format!("{:.0} kbps", entry.achieved_kbps)).small(),
                        );
                        ui.end_row();
                    }
                });
        }
    }

    fn render_monitor_layout_ui(&mut self, ui: &mut egui::Ui) {
        if self.monitors.is_empty() {
            ui.label(egui::RichText::new("No monitors found or not running Hyprland.").weak());
            return;
        }

        let target_name = self
            .config
            .as_ref()
            .map(|c| c.output.name.clone())
            .unwrap_or_else(|| "MEGADISPLAY".to_string());

        let target_monitor = self.monitors.iter().find(|m| m.name == target_name);

        if !self.pos_initialized {
            if let Some(m) = target_monitor {
                self.target_x = m.x;
                self.target_y = m.y;
                self.pos_initialized = true;
            }
        }

        let mut min_x = 0;
        let mut min_y = 0;
        let mut max_x = 0;
        let mut max_y = 0;

        let get_logical_w = |w: i32, scale: f32| -> i32 { (w as f32 / scale).round() as i32 };
        let get_logical_h = |h: i32, scale: f32| -> i32 { (h as f32 / scale).round() as i32 };

        let our_w = target_monitor.map(|m| m.width).unwrap_or(1920);
        let our_h = target_monitor.map(|m| m.height).unwrap_or(1200);
        let our_scale = target_monitor.map(|m| m.scale).unwrap_or(1.0);
        let our_logical_w = get_logical_w(our_w, our_scale);
        let our_logical_h = get_logical_h(our_h, our_scale);

        for m in &self.monitors {
            min_x = min_x.min(m.x);
            min_y = min_y.min(m.y);
            max_x = max_x.max(m.x + get_logical_w(m.width, m.scale));
            max_y = max_y.max(m.y + get_logical_h(m.height, m.scale));
        }

        if let Some(m) = target_monitor {
            min_x = min_x.min(self.target_x);
            min_y = min_y.min(self.target_y);
            max_x = max_x.max(self.target_x + get_logical_w(m.width, m.scale));
            max_y = max_y.max(self.target_y + get_logical_h(m.height, m.scale));
        } else {
            min_x = min_x.min(self.target_x);
            min_y = min_y.min(self.target_y);
            max_x = max_x.max(self.target_x + our_logical_w);
            max_y = max_y.max(self.target_y + our_logical_h);
        }

        let total_w = (max_x - min_x).max(1) as f32;
        let total_h = (max_y - min_y).max(1) as f32;

        let available_w = ui.available_width().min(500.0);
        let available_h = 400.0;
        let scale_w = available_w / total_w;
        let scale_h = available_h / total_h;
        let scale = scale_w.min(scale_h).min(1.0); // Don't scale up too much

        let canvas_w = (total_w * scale).max(100.0);
        let canvas_h = (total_h * scale).max(50.0);

        let (response, painter) =
            ui.allocate_painter(egui::vec2(canvas_w, canvas_h), egui::Sense::drag());
        let rect = response.rect;

        painter.rect_filled(rect, 4.0, egui::Color32::from_rgb(30, 30, 30));

        let map_to_screen = |x: i32, y: i32| -> egui::Pos2 {
            egui::pos2(
                rect.min.x + (x - min_x) as f32 * scale,
                rect.min.y + (y - min_y) as f32 * scale,
            )
        };

        let mut best_dx = i32::MAX;
        let mut best_dy = i32::MAX;
        let snap_thresh = 400; // Increased snapping distance

        for m in &self.monitors {
            if m.name == target_name { continue; }
            
            let m_lw = get_logical_w(m.width, m.scale);
            let m_lh = get_logical_h(m.height, m.scale);
            
            for dx in [
                m.x - self.target_x,
                (m.x + m_lw) - self.target_x,
                m.x - (self.target_x + our_logical_w),
                (m.x + m_lw) - (self.target_x + our_logical_w),
            ] {
                if dx.abs() < best_dx.abs() {
                    best_dx = dx;
                }
            }
            
            for dy in [
                m.y - self.target_y,
                (m.y + m_lh) - self.target_y,
                m.y - (self.target_y + our_logical_h),
                (m.y + m_lh) - (self.target_y + our_logical_h),
            ] {
                if dy.abs() < best_dy.abs() {
                    best_dy = dy;
                }
            }
        }
        
        let snap_x = if best_dx.abs() < snap_thresh { best_dx } else { 0 };
        let snap_y = if best_dy.abs() < snap_thresh { best_dy } else { 0 };

        for m in &self.monitors {
            let is_target = m.name == target_name;
            let (draw_x, draw_y) = if is_target {
                (self.target_x + snap_x, self.target_y + snap_y)
            } else {
                (m.x, m.y)
            };

            let p_min = map_to_screen(draw_x, draw_y);
            let p_max = map_to_screen(draw_x + m.width, draw_y + m.height);
            let m_rect = egui::Rect::from_min_max(p_min, p_max);

            let fill_color = if is_target {
                if snap_x != 0 || snap_y != 0 {
                    egui::Color32::from_rgb(120, 200, 150) // Turn green to indicate snapped!
                } else {
                    egui::Color32::from_rgb(100, 150, 250)
                }
            } else {
                egui::Color32::from_rgb(80, 80, 80)
            };

            painter.rect(
                m_rect,
                2.0,
                fill_color,
                egui::Stroke::new(1.0, egui::Color32::WHITE),
                egui::StrokeKind::Middle,
            );

            painter.text(
                m_rect.center(),
                egui::Align2::CENTER_CENTER,
                &m.name,
                egui::FontId::proportional(12.0),
                egui::Color32::WHITE,
            );
        }

        if response.dragged() {
            if let Some(_pos) = response.interact_pointer_pos() {
                let delta = response.drag_delta();
                self.target_x += (delta.x / scale) as i32;
                self.target_y += (delta.y / scale) as i32;
            }
        }

        if response.drag_stopped() {
            if snap_x != 0 {
                self.target_x += snap_x;
            } else {
                self.target_x = (self.target_x as f32 / 100.0).round() as i32 * 100;
            }
            if snap_y != 0 {
                self.target_y += snap_y;
            } else {
                self.target_y = (self.target_y as f32 / 100.0).round() as i32 * 100;
            }
        }

        ui.add_space(8.0);

        ui.horizontal(|ui| {
            ui.label("Position X:");
            ui.add(egui::DragValue::new(&mut self.target_x).speed(10.0));
            ui.label("Y:");
            ui.add(egui::DragValue::new(&mut self.target_y).speed(10.0));
        });

        ui.add_space(4.0);

        let target_mon_cloned = target_monitor.cloned();

        if ui.button("Apply Positioning").clicked() {
            let width = target_mon_cloned.as_ref().map(|m| m.width).unwrap_or(1920);
            let height = target_mon_cloned.as_ref().map(|m| m.height).unwrap_or(1200);
            let refresh = target_mon_cloned
                .as_ref()
                .map(|m| m.refresh_rate)
                .unwrap_or(120.0);
            let m_scale = target_mon_cloned.as_ref().map(|m| m.scale).unwrap_or(1.0);

            let arg = format!(
                "{},{}x{}@{},{}x{},{}",
                target_name, width, height, refresh, self.target_x, self.target_y, m_scale
            );

            if let Err(e) = std::process::Command::new("hyprctl")
                .args(&["keyword", "monitor", &arg])
                .spawn()
            {
                self.error = Some(format!("Failed to run hyprctl: {}", e));
            } else {
                self.last_monitors_fetch = None;
            }
        }
    }
}

impl eframe::App for MegaDisplayApp {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        let test_active = self.bandwidth_test.is_some()
            && self.bandwidth_test.as_ref().unwrap().phase != BwTestPhase::Done;
        let poll_ms = if test_active { 250 } else { 500 };
        ctx.request_repaint_after(Duration::from_millis(poll_ms));
        if test_active {
            self.last_poll = None;
        }
        self.poll();
        self.poll_monitors();

        if test_active {
            self.tick_bandwidth_test();
        }

        egui::TopBottomPanel::top("top").show(ctx, |ui| {
            ui.horizontal(|ui| {
                let (color, text) = if !self.connected {
                    (egui::Color32::RED, "Not connected")
                } else if self.status.as_ref().is_some_and(|s| s.connected) {
                    (egui::Color32::GREEN, "Connected")
                } else {
                    (egui::Color32::YELLOW, "Waiting for device...")
                };
                ui.label(egui::RichText::new("\u{25cf}").color(color).size(16.0));
                ui.label(text);

                ui.with_layout(egui::Layout::right_to_left(egui::Align::Center), |ui| {
                    ui.label(egui::RichText::new("megadisplayctl").weak());
                });
            });
        });

        if let Some(ref err) = self.error {
            egui::TopBottomPanel::top("error").show(ctx, |ui| {
                ui.colored_label(
                    egui::Color32::from_rgb(255, 100, 100),
                    format!("Error: {err}"),
                );
            });
        }

        egui::CentralPanel::default().show(ctx, |ui| {
            if !self.connected {
                ui.vertical_centered(|ui| {
                    ui.add_space(80.0);
                    ui.label(egui::RichText::new("Cannot reach megadisplayd").size(18.0));
                    ui.add_space(10.0);
                    ui.label(format!("Socket: {}", self.socket_path().display()));
                    ui.add_space(20.0);
                    ui.horizontal(|ui| {
                        ui.label("Socket path:");
                        ui.text_edit_singleline(&mut self.socket_path);
                    });
                });
                return;
            }

            egui::ScrollArea::vertical().show(ui, |ui| {

            // Stats section
            egui::CollapsingHeader::new("Live Stats").default_open(true).show(ui, |ui| {
            ui.add_space(4.0);

            if let Some(ref stats) = self.stats {
                let achieved_fps = if stats.frame_total_ms > 0.0 {
                    1000.0 / stats.frame_total_ms
                } else {
                    0.0
                };

                ui.columns(4, |cols| {
                    cols[0].vertical(|ui| {
                        ui.label(egui::RichText::new(format!("{:.0}", achieved_fps)).size(28.0).strong());
                        ui.label("FPS (actual)");
                    });
                    cols[1].vertical(|ui| {
                        ui.label(egui::RichText::new(format!("{:.1}ms", stats.frame_total_ms)).size(28.0).strong());
                        ui.label("Frame total");
                    });
                    cols[2].vertical(|ui| {
                        let bw_kbps = (stats.nal_bytes as f32 * 8.0) / 1000.0;
                        ui.label(egui::RichText::new(format!("{:.0}k", bw_kbps)).size(28.0).strong());
                        ui.label("Frame size");
                    });
                    cols[3].vertical(|ui| {
                        let input_lat = stats.input_latency_ms;
                        if input_lat > 0.0 {
                            ui.label(egui::RichText::new(format!("{:.1}ms", input_lat)).size(28.0).strong());
                            ui.label("Input latency");
                        } else {
                            ui.label(egui::RichText::new("--").size(28.0).strong());
                            ui.label("Input latency");
                        }
                    });
                });

                ui.add_space(6.0);

                egui::Grid::new("timing_grid").num_columns(3).spacing([16.0, 4.0]).show(ui, |ui| {
                    ui.label(egui::RichText::new("Pipeline breakdown").strong());
                    ui.label("");
                    ui.label("");
                    ui.end_row();

                    let wait_color = if stats.wait_ms > 20.0 { egui::Color32::from_rgb(255, 100, 100) } else { egui::Color32::from_rgb(150, 200, 150) };

                    ui.label("Compositor wait:");
                    ui.colored_label(wait_color, format!("{:.1} ms", stats.wait_ms));
                    ui.label("(blocking on frame ready)");
                    ui.end_row();

                    ui.label("SHM copy:");
                    ui.label(format!("{:.1} ms", stats.copy_ms));
                    ui.label("(memcpy from shm)");
                    ui.end_row();

                    ui.label("BGRA→YUV:");
                    ui.label(format!("{:.1} ms", stats.convert_ms));
                    ui.label("(color conversion)");
                    ui.end_row();

                    ui.label("H.264 encode:");
                    ui.label(format!("{:.1} ms", stats.encode_ms));
                    ui.label("(openh264)");
                    ui.end_row();

                    let work = stats.wait_ms + stats.copy_ms + stats.convert_ms + stats.encode_ms;
                    let idle = stats.frame_total_ms - work;
                    ui.label("Idle/sleep:");
                    let idle_color = if idle > 5.0 { egui::Color32::from_rgb(100, 200, 255) } else { egui::Color32::from_rgb(180, 180, 180) };
                    ui.colored_label(idle_color, format!("{:.1} ms", idle));
                    ui.label("(headroom)");
                    ui.end_row();

                    ui.end_row();
                    ui.label(egui::RichText::new(format!("Sum: {:.1} ms", work)).weak());
                    ui.label("");
                    ui.label("");
                    ui.end_row();
                });

                // Frametime + jitter section
                if !self.frametime_history.is_empty() {
                    ui.add_space(6.0);

                    let n = self.frametime_history.len();
                    let ft_avg = self.frametime_history.iter().sum::<f32>() / n as f32;
                    let ft_max = self.frametime_history.iter().cloned().fold(0.0f32, f32::max);
                    let ft_min = self.frametime_history.iter().cloned().fold(f32::INFINITY, f32::min);
                    let jitter_avg = self.jitter_history.iter().sum::<f32>() / n.max(1) as f32;
                    let jitter_max = self.jitter_history.iter().cloned().fold(0.0f32, f32::max);
                    let budget = self.target_frame_ms;
                    let over_budget = if budget > 0.0 {
                        self.frametime_history.iter().filter(|&&v| v > budget * 1.1).count()
                    } else { 0 };
                    let stability = if n > 0 && budget > 0.0 {
                        ((n - over_budget) as f32 / n as f32 * 100.0).round() as u32
                    } else { 100 };

                    // Header with stability badge
                    ui.horizontal(|ui| {
                        ui.label(egui::RichText::new("Frametime & Jitter").strong());
                        let (badge_color, badge_text) = if stability >= 98 {
                            (egui::Color32::from_rgb(80, 200, 120), "Stable")
                        } else if stability >= 90 {
                            (egui::Color32::from_rgb(240, 200, 60), "Uneven")
                        } else {
                            (egui::Color32::from_rgb(240, 100, 80), "Unstable")
                        };
                        ui.colored_label(badge_color, egui::RichText::new(format!(" {} ", badge_text)).strong());
                        ui.label(egui::RichText::new(
                            format!("{}% in budget", stability)).weak().small());
                    });

                    // Summary numbers
                    ui.horizontal(|ui| {
                        ui.label(egui::RichText::new(format!(
                            "{:.1}\u{2013}{:.1}ms avg {:.1}ms", ft_min, ft_max, ft_avg
                        )).weak().small());
                        ui.separator();
                        ui.label(egui::RichText::new(format!(
                            "jitter avg {:.1}ms  max {:.1}ms", jitter_avg, jitter_max
                        )).weak().small());
                        if stats.frames_dropped > 0 {
                            ui.separator();
                            ui.colored_label(
                                egui::Color32::from_rgb(255, 100, 80),
                                egui::RichText::new(format!("{} dropped", stats.frames_dropped)).small(),
                            );
                        }
                        if over_budget > 0 {
                            ui.separator();
                            ui.colored_label(
                                egui::Color32::from_rgb(255, 140, 60),
                                egui::RichText::new(format!("{} spikes", over_budget)).small(),
                            );
                        }
                    });

                    // Frametime plot
                    ui.allocate_ui(egui::vec2(ui.available_width(), 110.0), |ui| {
                        egui_plot::Plot::new("frametime_plot")
                            .height(110.0)
                            .auto_bounds([false, true])
                            .include_x(0.0)
                            .include_x(300.0)
                            .include_y(0.0)
                            .show(ui, |plot_ui| {
                                let ft_points: Vec<_> = self.frametime_history
                                    .iter().enumerate()
                                    .map(|(i, &v)| [i as f64, v as f64])
                                    .collect();
                                plot_ui.line(
                                    egui_plot::Line::new(ft_points)
                                        .color(egui::Color32::from_rgb(100, 200, 255))
                                        .width(1.2)
                                        .name("Frametime"),
                                );

                                if budget > 0.0 {
                                    let n = self.frametime_history.len();
                                    let budget_line: Vec<[f64; 2]> = (0..n)
                                        .map(|i| [i as f64, budget as f64])
                                        .collect();
                                    plot_ui.line(
                                        egui_plot::Line::new(budget_line)
                                            .color(egui::Color32::from_rgb(200, 80, 80))
                                            .width(1.0)
                                            .style(egui_plot::LineStyle::dashed_dense())
                                            .name("Budget"),
                                    );
                                }
                            });
                    });

                    // Jitter plot (separate, scaled independently)
                    ui.allocate_ui(egui::vec2(ui.available_width(), 80.0), |ui| {
                        egui_plot::Plot::new("jitter_plot")
                            .height(80.0)
                            .auto_bounds([false, true])
                            .include_x(0.0)
                            .include_x(300.0)
                            .include_y(0.0)
                            .show(ui, |plot_ui| {
                                let jitter_points: Vec<_> = self.jitter_history
                                    .iter().enumerate()
                                    .map(|(i, &v)| [i as f64, v as f64])
                                    .collect();
                                plot_ui.line(
                                    egui_plot::Line::new(jitter_points)
                                        .color(egui::Color32::from_rgb(255, 140, 60))
                                        .width(1.0)
                                        .fill(1.0)
                                        .name("Jitter"),
                                );
                            });
                    });
                }

                // Effective bitrate graph
                if !self.bitrate_history.is_empty() {
                    ui.add_space(4.0);
                    let auto = self.status.as_ref().is_some_and(|s| s.video.auto_bitrate);
                    let label = if auto { "Effective bitrate (auto):" } else { "Effective bitrate:" };
                    ui.horizontal(|ui| {
                        ui.label(label);
                        let cur = self.bitrate_history.last().copied().unwrap_or(0.0);
                        let cfg_br = self.configured_bitrate;
                        ui.label(egui::RichText::new(format!("{:.0} kbps", cur)).strong());
                        if cfg_br > 0.0 {
                            ui.label(egui::RichText::new(format!(" / {:.0} kbps configured", cfg_br)).weak().small());
                        }
                    });
                    ui.allocate_ui(egui::vec2(ui.available_width(), 100.0), |ui| {
                        egui_plot::Plot::new("bitrate_plot")
                            .height(100.0)
                            .auto_bounds([false, true])
                            .include_x(0.0)
                            .include_x(120.0)
                            .show(ui, |plot_ui| {
                                let br_points: Vec<_> = self.bitrate_history
                                    .iter()
                                    .enumerate()
                                    .map(|(i, &v)| [i as f64, v as f64])
                                    .collect();
                                plot_ui.line(
                                    egui_plot::Line::new(br_points)
                                        .color(egui::Color32::from_rgb(180, 100, 255))
                                        .width(1.5)
                                        .name("Effective"),
                                );

                                if self.configured_bitrate > 0.0 {
                                    let n = self.bitrate_history.len();
                                    let cfg_line: Vec<[f64; 2]> = (0..n)
                                        .map(|i| [i as f64, self.configured_bitrate as f64])
                                        .collect();
                                    plot_ui.line(
                                        egui_plot::Line::new(cfg_line)
                                            .color(egui::Color32::from_rgb(120, 120, 120))
                                            .width(1.0)
                                            .style(egui_plot::LineStyle::dashed_dense())
                                            .name("Configured"),
                                    );
                                }
                            });
                    });
                }
            }
            }); // end Live Stats

            ui.add_space(8.0);
            ui.separator();

            // Settings
            if self.config.is_some() {
                let cfg_clone = self.config.as_ref().unwrap().clone();
                let mut cfg = cfg_clone;
                egui::CollapsingHeader::new("Video").default_open(true).show(ui, |ui| {
                egui::Grid::new("video_grid").num_columns(2).show(ui, |ui| {
                    ui.label("Width:");
                    ui.add(egui::DragValue::new(&mut cfg.video.width).range(320..=3840));
                    ui.end_row();

                    ui.label("Height:");
                    ui.add(egui::DragValue::new(&mut cfg.video.height).range(240..=2160));
                    ui.end_row();

                    ui.label("FPS:");
                    let fps_dv = egui::DragValue::new(&mut cfg.video.fps)
                        .range(0..=240)
                        .custom_formatter(|n, _| if n == 0.0 { "Uncapped".into() } else { format!("{} FPS", n) });
                    ui.add(fps_dv)
                        .on_hover_text("Streaming FPS cap: Limits how fast frames are encoded and transmitted to the device.\n\nSet to 'Uncapped' (0) to encode as fast as the screen refreshes.");
                    ui.end_row();

                    ui.label("Bitrate (kbps):");
                    if cfg.video.auto_bitrate {
                        ui.add_enabled(false, egui::DragValue::new(&mut cfg.video.bitrate_kbps).range(500..=50000));
                        ui.label(egui::RichText::new("auto").weak().small());
                    } else {
                        ui.add(egui::DragValue::new(&mut cfg.video.bitrate_kbps).range(500..=50000));
                    }
                    ui.end_row();

                    ui.label("Encode scale:");
                    ui.add(egui::Slider::new(&mut cfg.video.encode_scale, 0.25..=1.0).step_by(0.05).text("x"));
                    ui.end_row();

                    ui.label("Refresh rate:");
                    ui.add(egui::DragValue::new(&mut cfg.video.refresh_hz).range(10..=240).suffix(" Hz"))
                        .on_hover_text("Headless Refresh Rate: The hardware rendering rate of the virtual monitor in Hyprland.\n\nHigher values reduce input latency but increase compositor load.\n(Changing this will momentarily drop the USB connection to reconfigure the output).");
                    ui.end_row();

                    ui.label("Auto bitrate:");
                    ui.checkbox(&mut cfg.video.auto_bitrate, "Enabled");
                    ui.end_row();

                    ui.label("Encoder:");
                    egui::ComboBox::from_id_salt("encoder_cb")
                        .selected_text(&cfg.video.encoder)
                        .show_ui(ui, |ui| {
                            ui.selectable_value(&mut cfg.video.encoder, "vaapi".into(), "vaapi (Intel/AMD)");
                            ui.selectable_value(&mut cfg.video.encoder, "amf".into(), "amf (AMD)");
                            ui.selectable_value(&mut cfg.video.encoder, "nvenc".into(), "nvenc (NVIDIA)");
                            ui.selectable_value(&mut cfg.video.encoder, "software".into(), "software (libx264)");
                        });
                    ui.end_row();
                });

                ui.add_space(4.0);
                let bw_test_running = self.bandwidth_test.is_some()
                    && self.bandwidth_test.as_ref().unwrap().phase != BwTestPhase::Done;
                if ui.add_enabled(!bw_test_running, egui::Button::new("Apply")).clicked() {
                    let v = cfg.video.clone();
                    self.send_and_reload(Request::SetVideo {
                        width: Some(v.width),
                        height: Some(v.height),
                        fps: Some(v.fps),
                        bitrate_kbps: Some(v.bitrate_kbps),
                        encode_scale: Some(v.encode_scale),
                        refresh_hz: Some(v.refresh_hz),
                        auto_bitrate: Some(v.auto_bitrate),
                        encoder: Some(v.encoder.clone()),
                        enabled: None,
                    });
                }

                // Bandwidth test section
                ui.add_space(4.0);
                self.render_bandwidth_test_ui(ui, &mut cfg);
                }); // end Video

                ui.add_space(8.0);
                ui.separator();

                egui::CollapsingHeader::new("Input").default_open(true).show(ui, |ui| {
                egui::Grid::new("input_grid").num_columns(2).show(ui, |ui| {
                    ui.label("Touch:");
                    ui.checkbox(&mut cfg.input.touch, "Enabled");
                    ui.end_row();
                    ui.label("Pen / Stylus:");
                    ui.checkbox(&mut cfg.input.pen, "Enabled");
                    ui.end_row();
                    ui.label("Keyboard:");
                    ui.checkbox(&mut cfg.input.keyboard, "Enabled");
                    ui.end_row();
                    ui.label("Pen cursor:");
                    ui.checkbox(&mut cfg.input.pen_cursor, "Move mouse to pen position");
                    ui.end_row();
                });

                ui.add_space(4.0);
                if ui.button("Apply Input").clicked() {
                    let i = cfg.input.clone();
                    self.send_and_reload(Request::SetInput {
                        touch: Some(i.touch),
                        pen: Some(i.pen),
                        keyboard: Some(i.keyboard),
                        pen_cursor: Some(i.pen_cursor),
                    });
                }
                }); // end Input
                self.config = Some(cfg);
            }

            ui.add_space(8.0);
            ui.separator();

            egui::CollapsingHeader::new("Monitor Layout").default_open(true).show(ui, |ui| {
                self.render_monitor_layout_ui(ui);
            });

            ui.add_space(8.0);
            ui.separator();

            // Socket path
            ui.horizontal(|ui| {
                ui.label("Socket:");
                ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
            });
            }); // end ScrollArea
        });
    }
}
