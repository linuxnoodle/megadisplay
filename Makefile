PREFIX      ?= /usr/local
BINDIR      ?= $(PREFIX)/bin
SYSCONFDIR  ?= /etc
SYSTEMD_DIR ?= $(SYSCONFDIR)/systemd/system
UDEV_DIR    ?= $(SYSCONFDIR)/udev/rules.d
APPS_DIR    ?= $(PREFIX)/share/applications

.PHONY: install uninstall build release clean

build:
	cargo build

release:
	cargo build --release

install: release
	@echo "Installing binaries..."
	mkdir -p $(DESTDIR)$(BINDIR)
	install -m 755 target/release/megadisplayd $(DESTDIR)$(BINDIR)/megadisplayd
	install -m 755 target/release/megadisplayctl $(DESTDIR)$(BINDIR)/megadisplayctl
	install -m 755 target/release/megadisplayctl-gui $(DESTDIR)$(BINDIR)/megadisplayctl-gui

	@echo "Installing systemd service..."
	mkdir -p $(DESTDIR)$(SYSTEMD_DIR)
	install -m 644 systemd/megadisplayd@.service $(DESTDIR)$(SYSTEMD_DIR)/megadisplayd@.service

	@echo "Installing udev rules..."
	mkdir -p $(DESTDIR)$(UDEV_DIR)
	install -m 644 udev/99-megadisplay.rules $(DESTDIR)$(UDEV_DIR)/99-megadisplay.rules

	@echo "Installing desktop entry..."
	mkdir -p $(DESTDIR)$(APPS_DIR)
	install -m 644 desktop/megadisplayctl.desktop $(DESTDIR)$(APPS_DIR)/megadisplayctl.desktop

	@echo ""
	@if [ -z "$(DESTDIR)" ]; then \
		echo "Reloading systemd and udev..."; \
		systemctl daemon-reload; \
		udevadm control --reload-rules; \
		udevadm trigger; \
	fi
	@echo "Done! Enable and start with:"
	@echo "  sudo systemctl enable --now megadisplayd@\$$USER"

uninstall:
	@echo "Uninstalling..."
	systemctl disable --now megadisplayd@* 2>/dev/null || true
	rm -f $(DESTDIR)$(SYSTEMD_DIR)/megadisplayd@.service
	rm -f $(DESTDIR)$(UDEV_DIR)/99-megadisplay.rules
	rm -f $(DESTDIR)$(APPS_DIR)/megadisplayctl.desktop
	rm -f $(DESTDIR)$(BINDIR)/megadisplayd
	rm -f $(DESTDIR)$(BINDIR)/megadisplayctl
	rm -f $(DESTDIR)$(BINDIR)/megadisplayctl-gui
	@if [ -z "$(DESTDIR)" ]; then \
		systemctl daemon-reload; \
		udevadm control --reload-rules; \
	fi

clean:
	cargo clean
