import re

with open("ctl/src/gui.rs", "r") as f:
    text = f.read()

# Replace CentralPanel start
old_central = """        egui::CentralPanel::default().show(ctx, |ui| {
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
            ui.heading("Live Stats");"""

new_central = """        egui::CentralPanel::default().show(ctx, |ui| {
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
            
            egui::ScrollArea::vertical().auto_sized().show(ui, |ui| {

            // Stats section
            egui::CollapsingHeader::new("Live Stats").default_open(true).show(ui, |ui| {"""
text = text.replace(old_central, new_central)

# Replace Video heading
old_video = """            ui.add_space(8.0);
            ui.separator();

            // Settings
            ui.heading("Video");
            if self.config.is_some() {"""

new_video = """            }); // end Live Stats
            ui.add_space(8.0);
            ui.separator();

            // Settings
            if self.config.is_some() {
                egui::CollapsingHeader::new("Video").default_open(true).show(ui, |ui| {"""
text = text.replace(old_video, new_video)

# Replace Input heading
old_input = """                ui.add_space(8.0);
                ui.separator();

                ui.heading("Input");"""

new_input = """                }); // end Video
                ui.add_space(8.0);
                ui.separator();

                egui::CollapsingHeader::new("Input").default_open(true).show(ui, |ui| {"""
text = text.replace(old_input, new_input)

# Replace end of Input and append Layout
old_end = """                self.config = Some(cfg);
            }

            ui.add_space(8.0);
            ui.separator();

            // Socket path
            ui.horizontal(|ui| {
                ui.label("Socket:");
                ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
            });
        });"""

new_end = """                }); // end Input
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
        });"""
text = text.replace(old_end, new_end)

with open("ctl/src/gui.rs", "w") as f:
    f.write(text)
