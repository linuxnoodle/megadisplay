import re

with open("ctl/src/gui.rs", "r") as f:
    text = f.read()

# 1. auto_sized() issue
text = text.replace("egui::ScrollArea::vertical().auto_sized().show(ui, |ui| {", "egui::ScrollArea::vertical().show(ui, |ui| {")

# 2. cfg scope issue
old_cfg = """            if self.config.is_some() {
                egui::CollapsingHeader::new("Video").default_open(true).show(ui, |ui| {
                let cfg_clone = self.config.as_ref().unwrap().clone();
                let mut cfg = cfg_clone;"""

new_cfg = """            if self.config.is_some() {
                let cfg_clone = self.config.as_ref().unwrap().clone();
                let mut cfg = cfg_clone;
                egui::CollapsingHeader::new("Video").default_open(true).show(ui, |ui| {"""
text = text.replace(old_cfg, new_cfg)

# 3. trait impl method
# I need to move render_monitor_layout_ui out of `impl eframe::App for MegaDisplayApp`
# It's currently at the very end. The end of the file looks like:
#             // Socket path
#             ui.horizontal(|ui| {
#                 ui.label("Socket:");
#                 ui.add(egui::TextEdit::singleline(&mut self.socket_path).desired_width(200.0));
#             });
#             }); // end ScrollArea
#         });
#     }
#
#     fn render_monitor_layout_ui(&mut self, ui: &mut egui::Ui) {
# ...
#     }
# }

# I will move it to just before `impl eframe::App for MegaDisplayApp`!
# Let's find `impl eframe::App for MegaDisplayApp {` and insert it there.
method_match = re.search(r'    fn render_monitor_layout_ui.*?\n}\n', text, re.DOTALL)
if method_match:
    method_str = method_match.group(0)
    # Remove it from the end
    text = text.replace(method_str, "")
    # Insert it before `impl eframe::App`
    text = text.replace("impl eframe::App for MegaDisplayApp {", method_str + "\nimpl eframe::App for MegaDisplayApp {")

# 4. painter.rect issue
text = text.replace("painter.rect(m_rect, 2.0, fill_color, egui::Stroke::new(1.0, egui::Color32::WHITE));",
                    "painter.rect(m_rect, 2.0, fill_color, egui::Stroke::new(1.0, egui::Color32::WHITE), egui::StrokeKind::Middle);")

# 5. drag_released issue
text = text.replace("response.drag_released()", "response.drag_stopped()")

with open("ctl/src/gui.rs", "w") as f:
    f.write(text)
