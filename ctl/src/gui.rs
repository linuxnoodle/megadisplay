use eframe::egui;
use megadisplay_ctl_lib::{default_socket_path, send_request, DaemonStatus, DaemonConfig, Request, Response, StatsSnapshot};
use std::path::PathBuf;
use std::time::{Duration, Instant};

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

#[derive(Default)]
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
}

impl MegaDisplayApp {
    fn socket_path(&self) -> PathBuf {
        if self.socket_path.is_empty() {
            default_socket_path()
        } else {
            PathBuf::from(&self.socket_path)
        }
    }

    fn send_request(&mut self, req: &Request) -> Option<Response> {
        let path = self.socket_path();
        send_request(&path, req).ok()
    }

    fn poll(&mut self) {
        let now = Instant::now();
        let should_poll = self.last_poll.is_none() || now.duration_since(self.last_poll.unwrap()) > Duration::from_millis(500);
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
            && let Some(Response::Config(c)) = self.send_request(&Request::GetConfig) {
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
}

impl eframe::App for MegaDisplayApp {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        ctx.request_repaint_after(Duration::from_millis(500));
        self.poll();

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
                    ui.label(
                        egui::RichText::new("megadisplayctl")
                            .weak(),
                    );
                });
            });
        });

        if let Some(ref err) = self.error {
            egui::TopBottomPanel::top("error").show(ctx, |ui| {
                ui.colored_label(egui::Color32::from_rgb(255, 100, 100), format!("Error: {err}"));
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

            // Stats section
            ui.heading("Live Stats");
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

            ui.add_space(8.0);
            ui.separator();

            // Settings
            ui.heading("Video");
            if self.config.is_some() {
                let cfg_clone = self.config.as_ref().unwrap().clone();
                let mut cfg = cfg_clone;
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
                if ui.button("Apply").clicked() {
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

                ui.add_space(8.0);
                ui.separator();

                ui.heading("Input");
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
                self.config = Some(cfg);
            }

            ui.add_space(8.0);
            ui.separator();

            // Socket path
            ui.horizontal(|ui| {
                ui.label("Socket:");
                ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
            });
        });
    }
}
