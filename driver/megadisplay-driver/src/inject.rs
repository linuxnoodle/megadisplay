//! Input injection via evdev/uinput.
//!
//! Creates virtual input devices (touchscreen, pen/stylus, keyboard)
//! and injects events received from the Android tablet into the Linux
//! input subsystem.

#[cfg(feature = "input-inject")]
pub mod uinput {
    use anyhow::{Context, Result};
    use evdev::{
        AbsoluteAxisCode, AttributeSet, EventType, InputEvent, KeyCode,
        PropType, SynchronizationCode, UinputAbsSetup,
        uinput::{VirtualDevice, VirtualDeviceBuilder},
    };
    use evdev::AbsInfo;
    use tracing::{debug, info, warn};

    /// Touch screen injector using Type-B multi-touch protocol.
    pub struct TouchInjector {
        dev: VirtualDevice,
        width: i32,
        height: i32,
    }

    impl TouchInjector {
        pub fn new(width: u32, height: u32) -> Result<Self> {
            let mut keys = AttributeSet::<KeyCode>::new();
            keys.insert(KeyCode::BTN_TOUCH);

            let mut props = AttributeSet::<PropType>::new();
            props.insert(PropType::DIRECT);

            let dev = VirtualDevice::builder()?
                .name("MegaDisplay Touch")
                .input_id(evdev::InputId::new(evdev::BusType::BUS_USB, 0x1234, 0x5678, 0x0001))
                .with_properties(&props)?
                .with_keys(&keys)?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_X,
                    AbsInfo::new(0, 0, width as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_Y,
                    AbsInfo::new(0, 0, height as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_MT_SLOT,
                    AbsInfo::new(0, 0, 9, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_MT_TRACKING_ID,
                    AbsInfo::new(0, 0, 65535, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_MT_POSITION_X,
                    AbsInfo::new(0, 0, width as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_MT_POSITION_Y,
                    AbsInfo::new(0, 0, height as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_MT_TOUCH_MAJOR,
                    AbsInfo::new(0, 0, 255, 0, 0, 0),
                ))?
                .build()?;

            info!(
                "Created virtual touchscreen: {}x{} (uinput)",
                width, height
            );

            Ok(Self {
                dev,
                width: width as i32,
                height: height as i32,
            })
        }

        /// Inject touch events. Each tuple is (id, state, x_normalized, y_normalized, size).
        /// Coordinates are in normalized int16 range [-32767, 32767].
        pub fn emit(
            &mut self,
            touches: &[(u8, u8, i16, i16, i16)],
            any_active: bool,
        ) -> Result<()> {
            let mut events = Vec::with_capacity(touches.len() * 5 + 2);

            for &(id, state, x_raw, y_raw, size_raw) in touches {
                let slot = (id as i32).min(9);
                let x = ((x_raw as f32 / 32767.0) * self.width as f32) as i32;
                let y = ((y_raw as f32 / 32767.0) * self.height as f32) as i32;
                let size = ((size_raw.max(0) as u16) as i32).min(255);

                events.push(InputEvent::new_now(
                    EventType::ABSOLUTE.0,
                    AbsoluteAxisCode::ABS_MT_SLOT.0,
                    slot,
                ));

                if state != 0 {
                    events.push(InputEvent::new_now(
                        EventType::ABSOLUTE.0,
                        AbsoluteAxisCode::ABS_MT_TRACKING_ID.0,
                        id as i32,
                    ));
                } else {
                    events.push(InputEvent::new_now(
                        EventType::ABSOLUTE.0,
                        AbsoluteAxisCode::ABS_MT_TRACKING_ID.0,
                        -1,
                    ));
                }

                events.push(InputEvent::new_now(
                    EventType::ABSOLUTE.0,
                    AbsoluteAxisCode::ABS_MT_POSITION_X.0,
                    x,
                ));
                events.push(InputEvent::new_now(
                    EventType::ABSOLUTE.0,
                    AbsoluteAxisCode::ABS_MT_POSITION_Y.0,
                    y,
                ));
                events.push(InputEvent::new_now(
                    EventType::ABSOLUTE.0,
                    AbsoluteAxisCode::ABS_MT_TOUCH_MAJOR.0,
                    size,
                ));
            }

            // Update BTN_TOUCH
            events.push(InputEvent::new_now(
                EventType::KEY.0,
                KeyCode::BTN_TOUCH.0,
                if any_active { 1 } else { 0 },
            ));

            // SYN_REPORT
            events.push(InputEvent::new_now(
                EventType::SYNCHRONIZATION.0,
                SynchronizationCode::SYN_REPORT.0,
                0,
            ));

            self.dev
                .emit(&events)
                .context("Failed to emit touch events")?;
            Ok(())
        }
    }

    /// Pen/stylus injector with pressure, tilt, and buttons.
    pub struct PenInjector {
        dev: VirtualDevice,
        width: i32,
        height: i32,
        pen_in_range: bool,
    }

    impl PenInjector {
        pub fn new(width: u32, height: u32) -> Result<Self> {
            let mut keys = AttributeSet::<KeyCode>::new();
            keys.insert(KeyCode::BTN_TOOL_PEN);
            keys.insert(KeyCode::BTN_TOUCH);
            keys.insert(KeyCode::BTN_STYLUS);
            keys.insert(KeyCode::BTN_STYLUS2);

            let mut props = AttributeSet::<PropType>::new();
            props.insert(PropType::POINTER);

            let dev = VirtualDevice::builder()?
                .name("MegaDisplay Pen")
                .input_id(evdev::InputId::new(evdev::BusType::BUS_USB, 0x1234, 0x5679, 0x0002))
                .with_properties(&props)?
                .with_keys(&keys)?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_X,
                    AbsInfo::new(0, 0, width as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_Y,
                    AbsInfo::new(0, 0, height as i32, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_PRESSURE,
                    AbsInfo::new(0, 0, 65535, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_TILT_X,
                    AbsInfo::new(0, -9000, 9000, 0, 0, 0),
                ))?
                .with_absolute_axis(&UinputAbsSetup::new(
                    AbsoluteAxisCode::ABS_TILT_Y,
                    AbsInfo::new(0, -9000, 9000, 0, 0, 0),
                ))?
                .build()?;

            info!(
                "Created virtual pen/stylus: {}x{} (uinput)",
                width, height
            );

            Ok(Self {
                dev,
                width: width as i32,
                height: height as i32,
                pen_in_range: false,
            })
        }

        /// Inject a pen event.
        ///
        /// - `flags`: PEN_FLAG_CONTACT, PEN_FLAG_HOVER, PEN_FLAG_BUTTON
        /// - `x_raw`, `y_raw`: normalized int16 coordinates
        /// - `pressure_raw`: normalized int16 pressure
        /// - `tilt_x`, `tilt_y`: tilt in degrees * 100 (-9000 to 9000)
        pub fn emit(
            &mut self,
            flags: u8,
            x_raw: i16,
            y_raw: i16,
            pressure_raw: i16,
            tilt_x: i32,
            tilt_y: i32,
        ) -> Result<()> {
            use megadisplay_protocol::{PEN_FLAG_BUTTON, PEN_FLAG_CONTACT, PEN_FLAG_HOVER};

            let x = ((x_raw as f32 / 32767.0) * self.width as f32) as i32;
            let y = ((y_raw as f32 / 32767.0) * self.height as f32) as i32;
            let pressure = if flags & PEN_FLAG_CONTACT != 0 {
                ((pressure_raw.max(0) as u32 * 65535) / 32767) as i32
            } else {
                0
            };

            let in_range = flags & (PEN_FLAG_CONTACT | PEN_FLAG_HOVER) != 0;
            let touching = flags & PEN_FLAG_CONTACT != 0;
            let button = flags & PEN_FLAG_BUTTON != 0;

            let mut events = Vec::with_capacity(8);

            // Tool pen state change
            if in_range != self.pen_in_range {
                events.push(InputEvent::new_now(
                    EventType::KEY.0,
                    KeyCode::BTN_TOOL_PEN.0,
                    if in_range { 1 } else { 0 },
                ));
                self.pen_in_range = in_range;
            }

            if !in_range {
                if !events.is_empty() {
                    events.push(InputEvent::new_now(
                        EventType::SYNCHRONIZATION.0,
                        SynchronizationCode::SYN_REPORT.0,
                        0,
                    ));
                    self.dev.emit(&events)?;
                }
                return Ok(());
            }

            // Position
            events.push(InputEvent::new_now(
                EventType::ABSOLUTE.0,
                AbsoluteAxisCode::ABS_X.0,
                x,
            ));
            events.push(InputEvent::new_now(
                EventType::ABSOLUTE.0,
                AbsoluteAxisCode::ABS_Y.0,
                y,
            ));
            events.push(InputEvent::new_now(
                EventType::ABSOLUTE.0,
                AbsoluteAxisCode::ABS_PRESSURE.0,
                pressure,
            ));
            events.push(InputEvent::new_now(
                EventType::ABSOLUTE.0,
                AbsoluteAxisCode::ABS_TILT_X.0,
                tilt_x,
            ));
            events.push(InputEvent::new_now(
                EventType::ABSOLUTE.0,
                AbsoluteAxisCode::ABS_TILT_Y.0,
                tilt_y,
            ));

            // Touch state
            events.push(InputEvent::new_now(
                EventType::KEY.0,
                KeyCode::BTN_TOUCH.0,
                if touching { 1 } else { 0 },
            ));

            // Barrel button
            events.push(InputEvent::new_now(
                EventType::KEY.0,
                KeyCode::BTN_STYLUS.0,
                if button { 1 } else { 0 },
            ));

            events.push(InputEvent::new_now(
                EventType::SYNCHRONIZATION.0,
                SynchronizationCode::SYN_REPORT.0,
                0,
            ));

            self.dev.emit(&events)?;
            Ok(())
        }
    }

    /// Keyboard injector.
    pub struct KeyboardInjector {
        dev: VirtualDevice,
    }

    impl KeyboardInjector {
        pub fn new() -> Result<Self> {
            let mut keys = AttributeSet::<KeyCode>::new();
            // Register common keys
            for code in 1..256u16 {
                if let Some(kc) = keycode_from_linux(code) {
                    keys.insert(kc);
                }
            }

            let dev = VirtualDevice::builder()?
                .name("MegaDisplay Keyboard")
                .input_id(evdev::InputId::new(evdev::BusType::BUS_USB, 0x1234, 0x567A, 0x0003))
                .with_keys(&keys)?
                .build()?;

            info!("Created virtual keyboard (uinput)");
            Ok(Self { dev })
        }

        /// Inject a key event.
        /// `key_index` is an Android key code (from the tablet).
        /// `pressed` is true for key-down, false for key-up.
        pub fn emit(&mut self, key_index: i32, pressed: bool) -> Result<()> {
            if let Some(linux_key) = android_to_linux_keycode(key_index) {
                let value = if pressed { 1 } else { 0 };
                let events = vec![
                    InputEvent::new_now(EventType::KEY.0, linux_key, value),
                    InputEvent::new_now(
                        EventType::SYNCHRONIZATION.0,
                        SynchronizationCode::SYN_REPORT.0,
                        0,
                    ),
                ];
                self.dev.emit(&events)?;
                debug!("Key: code={} pressed={}", key_index, pressed);
            } else {
                warn!("Unknown Android key code: {}", key_index);
            }
            Ok(())
        }
    }

    fn keycode_from_linux(code: u16) -> Option<KeyCode> {
        if code < 0x300 {
            Some(KeyCode(code))
        } else {
            None
        }
    }

    /// Map Android key codes to Linux evdev key codes.
    /// Based on Android KeyEvent constants and Linux input-event-codes.h.
    fn android_to_linux_keycode(android_key: i32) -> Option<u16> {
        Some(match android_key {
            7 => KeyCode::KEY_0.0,       // KEYCODE_0
            8 => KeyCode::KEY_1.0,       // KEYCODE_1
            9 => KeyCode::KEY_2.0,
            10 => KeyCode::KEY_3.0,
            11 => KeyCode::KEY_4.0,
            12 => KeyCode::KEY_5.0,
            13 => KeyCode::KEY_6.0,
            14 => KeyCode::KEY_7.0,
            15 => KeyCode::KEY_8.0,
            16 => KeyCode::KEY_9.0,
            29 => KeyCode::KEY_A.0,      // KEYCODE_A
            30 => KeyCode::KEY_B.0,
            31 => KeyCode::KEY_C.0,
            32 => KeyCode::KEY_D.0,
            33 => KeyCode::KEY_E.0,
            34 => KeyCode::KEY_F.0,
            35 => KeyCode::KEY_G.0,
            36 => KeyCode::KEY_H.0,
            37 => KeyCode::KEY_I.0,
            38 => KeyCode::KEY_J.0,
            39 => KeyCode::KEY_K.0,
            40 => KeyCode::KEY_L.0,
            41 => KeyCode::KEY_M.0,
            42 => KeyCode::KEY_N.0,
            43 => KeyCode::KEY_O.0,
            44 => KeyCode::KEY_P.0,
            45 => KeyCode::KEY_Q.0,
            46 => KeyCode::KEY_R.0,
            47 => KeyCode::KEY_S.0,
            48 => KeyCode::KEY_T.0,
            49 => KeyCode::KEY_U.0,
            50 => KeyCode::KEY_V.0,
            51 => KeyCode::KEY_W.0,
            52 => KeyCode::KEY_X.0,
            53 => KeyCode::KEY_Y.0,
            54 => KeyCode::KEY_Z.0,
            55 => KeyCode::KEY_COMMA.0,
            56 => KeyCode::KEY_DOT.0,
            57 => KeyCode::KEY_SPACE.0,  // KEYCODE_SPACE
            58 => KeyCode::KEY_ENTER.0,  // KEYCODE_ENTER
            59 => KeyCode::KEY_BACKSPACE.0, // KEYCODE_DEL
            61 => KeyCode::KEY_TAB.0,    // KEYCODE_TAB
            62 => KeyCode::KEY_SPACE.0,  // KEYCODE_SPACE (shift)
            66 => KeyCode::KEY_ENTER.0,  // KEYCODE_ENTER (np)
            67 => KeyCode::KEY_BACKSPACE.0,
            69 => KeyCode::KEY_MINUS.0,  // KEYCODE_MINUS
            70 => KeyCode::KEY_EQUAL.0,  // KEYCODE_EQUALS
            71 => KeyCode::KEY_LEFTBRACE.0, // KEYCODE_LEFT_BRACKET
            72 => KeyCode::KEY_RIGHTBRACE.0, // KEYCODE_RIGHT_BRACKET
            73 => KeyCode::KEY_BACKSLASH.0, // KEYCODE_BACKSLASH
            74 => KeyCode::KEY_SEMICOLON.0, // KEYCODE_SEMICOLON
            75 => KeyCode::KEY_APOSTROPHE.0, // KEYCODE_APOSTROPHE
            76 => KeyCode::KEY_SLASH.0,  // KEYCODE_SLASH
            77 => KeyCode::KEY_GRAVE.0,  // KEYCODE_AT
            81 => KeyCode::KEY_KPPLUS.0, // KEYCODE_PLUS
            82 => KeyCode::KEY_MENU.0,   // KEYCODE_MENU
            85 => KeyCode::KEY_PLAYPAUSE.0, // KEYCODE_MEDIA_PLAY_PAUSE
            86 => KeyCode::KEY_STOPCD.0, // KEYCODE_MEDIA_STOP
            87 => KeyCode::KEY_NEXTSONG.0, // KEYCODE_MEDIA_NEXT
            88 => KeyCode::KEY_PREVIOUSSONG.0, // KEYCODE_MEDIA_PREVIOUS
            89 => KeyCode::KEY_REWIND.0, // KEYCODE_MEDIA_REWIND
            90 => KeyCode::KEY_FASTFORWARD.0, // KEYCODE_MEDIA_FAST_FORWARD
            113 => KeyCode::KEY_MUTE.0, // KEYCODE_VOLUME_MUTE
            114 => KeyCode::KEY_VOLUMEUP.0, // KEYCODE_VOLUME_UP
            115 => KeyCode::KEY_VOLUMEDOWN.0, // KEYCODE_VOLUME_DOWN
            116 => KeyCode::KEY_POWER.0, // KEYCODE_POWER
            122 => KeyCode::KEY_HOME.0,  // KEYCODE_HOME (or KEY_HOMEPAGE)
            123 => KeyCode::KEY_MENU.0,  // KEYCODE_MENU
            124 => KeyCode::KEY_BACK.0,  // KEYCODE_BACK
            143 => KeyCode::KEY_CALC.0,  // KEYCODE_CALCULATOR
            164 => KeyCode::KEY_BRIGHTNESSDOWN.0, // KEYCODE_BRIGHTNESS_DOWN
            165 => KeyCode::KEY_BRIGHTNESSUP.0,   // KEYCODE_BRIGHTNESS_UP
            169 => KeyCode::KEY_FN.0,    // KEYCODE_FUNCTION
            170 => KeyCode::KEY_BREAK.0, // KEYCODE_BREAK
            172 => KeyCode::KEY_HOMEPAGE.0, // KEYCODE_EXPLORER
            185 => KeyCode::KEY_PROG1.0, // KEYCODE_TV
            186 => KeyCode::KEY_PROG2.0, // KEYCODE_TV_POWER
            187 => KeyCode::KEY_PROG3.0, // KEYCODE_TV_INPUT
            _ => return None,
        })
    }

    /// Combined input injector.
    pub struct InputInjector {
        pub touch: TouchInjector,
        pub pen: PenInjector,
        pub keyboard: KeyboardInjector,
    }

    impl InputInjector {
        pub fn new(width: u32, height: u32) -> Result<Self> {
            Ok(Self {
                touch: TouchInjector::new(width, height)?,
                pen: PenInjector::new(width, height)?,
                keyboard: KeyboardInjector::new()?,
            })
        }
    }

    
}
