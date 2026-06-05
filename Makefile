PREFIX     ?= /usr/local
BINDIR     ?= $(PREFIX)/bin
SYSCONFDIR ?= $(HOME)/.config
SYSTEMD_DIR = $(SYSCONFDIR)/systemd/user
CONFIG_DIR  = $(SYSCONFDIR)/megadisplay
APPS_DIR    = $(HOME)/.local/share/applications

.PHONY: install uninstall build release clean

build:
	cargo build

release:
	cargo build --release

install: release
	@echo "Installing binaries..."
	cargo install --path daemon --force
	cargo install --path ctl --force

	@echo "Installing config..."
	mkdir -p $(CONFIG_DIR)
	@if [ ! -f $(CONFIG_DIR)/config.toml ]; then \
		cp config/megadisplay.toml $(CONFIG_DIR)/config.toml; \
		echo "  Created $(CONFIG_DIR)/config.toml"; \
	else \
		echo "  $(CONFIG_DIR)/config.toml already exists, skipping"; \
	fi

	@echo "Installing systemd service..."
	mkdir -p $(SYSTEMD_DIR)
	cp systemd/megadisplayd.service $(SYSTEMD_DIR)/megadisplayd.service
	systemctl --user daemon-reload

	@echo "Installing desktop entry..."
	mkdir -p $(APPS_DIR)
	cp desktop/megadisplayctl.desktop $(APPS_DIR)/megadisplayctl.desktop

	@echo ""
	@echo "Done! Enable and start with:"
	@echo "  systemctl --user enable --now megadisplayd"
	@echo ""
	@echo "Launch the control panel from your app menu or:"
	@echo "  megadisplayctl-gui"
	@echo ""
	@echo "CLI usage:"
	@echo "  megadisplayctl status | stats | config | set | bench | shutdown"

uninstall:
	@echo "Uninstalling..."
	systemctl --user disable --now megadisplayd 2>/dev/null || true
	rm -f $(SYSTEMD_DIR)/megadisplayd.service
	rm -f $(APPS_DIR)/megadisplayctl.desktop
	systemctl --user daemon-reload
	cargo uninstall megadisplay-ctl 2>/dev/null || true
	cargo uninstall megadisplay-daemon 2>/dev/null || true
	@echo "Config left at $(CONFIG_DIR)/ — remove manually if desired"

clean:
	cargo clean
