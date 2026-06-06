import re

with open("ctl/src/gui.rs", "r") as f:
    content = f.read()

content = content.replace('ui.heading("Live Stats");\n            ui.add_space(4.0);', 
                          'egui::CollapsingHeader::new("Live Stats").default_open(true).show(ui, |ui| {\n            ui.add_space(4.0);')

content = content.replace('ui.add_space(8.0);\n            ui.separator();\n\n            // Settings\n            ui.heading("Video");',
                          '});\n            ui.add_space(8.0);\n            ui.separator();\n\n            // Settings\n            if self.config.is_some() {\n                egui::CollapsingHeader::new("Video").default_open(true).show(ui, |ui| {')

content = content.replace('ui.heading("Input");',
                          '});\n                ui.add_space(8.0);\n                ui.separator();\n                egui::CollapsingHeader::new("Input").default_open(true).show(ui, |ui| {')


end_str = """                self.config = Some(cfg);
            }

            ui.add_space(8.0);
            ui.separator();

            // Socket path
            ui.horizontal(|ui| {
                ui.label("Socket:");
                ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
            });
        });"""

new_end_str = """                self.config = Some(cfg);
                });
                
                ui.add_space(8.0);
                ui.separator();
                egui::CollapsingHeader::new("Monitor Layout").default_open(true).show(ui, |ui| {
                    self.render_monitor_layout_ui(ui);
                });
            }

            ui.add_space(8.0);
            ui.separator();

            // Socket path
            ui.horizontal(|ui| {
                ui.label("Socket:");
                ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
            });
            });
        });"""

content = content.replace(end_str, new_end_str)

scroll_start_orig = """            if !self.connected {
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

            // Stats section"""

scroll_start_new = """            if !self.connected {
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

            // Stats section"""

content = content.replace(scroll_start_orig, scroll_start_new)

with open("ctl/src/gui.rs", "w") as f:
    f.write(content)
