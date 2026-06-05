//! Input pipeline — touch/pen/keyboard parsing + injection.
//!
//! Receives input messages from the transport, parses them, and (when
//! the `input-inject` feature is enabled) injects them into the Linux
//! input subsystem via evdev/uinput.

#[cfg(feature = "input-inject")]
use crate::inject::uinput::InputInjector;
use anyhow::Result;
use megadisplay_protocol::{PEN_FLAG_BUTTON, PEN_FLAG_CONTACT, PEN_FLAG_HOVER};
use std::collections::HashMap;
use tracing::{debug, info, warn};

pub struct InputEmitter {
    output_width: u32,
    output_height: u32,
    touch_slots: HashMap<u8, bool>,
    #[cfg(feature = "input-inject")]
    injector: Option<InputInjector>,
}

impl InputEmitter {
    pub fn new(output_width: u32, output_height: u32) -> Result<Self> {
        info!(
            "Creating input emitter for {output_width}x{output_height}"
        );

        #[cfg(feature = "input-inject")]
        {
            match InputInjector::new(output_width, output_height) {
                Ok(inj) => {
                    return Ok(Self {
                        output_width,
                        output_height,
                        touch_slots: HashMap::new(),
                        injector: Some(inj),
                    });
                }
                Err(e) => {
                    warn!("uinput unavailable ({}), input will be logged only", e);
                }
            }
            return Ok(Self {
                output_width,
                output_height,
                touch_slots: HashMap::new(),
                injector: None,
            });
        }

        #[cfg(not(feature = "input-inject"))]
        Ok(Self {
            output_width,
            output_height,
            touch_slots: HashMap::new(),
        })
    }

    pub fn process_touch(&mut self, payload: &[u8]) -> Result<()> {
        if payload.len() < 1 {
            return Ok(());
        }
        let count = payload[0] as usize;
        let expected = 1 + count * 8;
        if payload.len() < expected {
            warn!("Touch payload too short: {} < {}", payload.len(), expected);
            return Ok(());
        }

        let mut touches = Vec::with_capacity(count);
        for i in 0..count {
            let off = 1 + i * 8;
            let id = payload[off];
            let state = payload[off + 1];
            let x_raw = i16::from_le_bytes([payload[off + 2], payload[off + 3]]);
            let y_raw = i16::from_le_bytes([payload[off + 4], payload[off + 5]]);
            let size = i16::from_le_bytes([payload[off + 6], payload[off + 7]]);

            let x = (x_raw as f32 / 32767.0) * self.output_width as f32;
            let y = (y_raw as f32 / 32767.0) * self.output_height as f32;

            if state != 0 {
                self.touch_slots.insert(id, true);
            } else {
                self.touch_slots.remove(&id);
            }

            debug!(
                "Touch[{}]: {} at ({:.0}, {:.0}) — {} active",
                id,
                if state != 0 { "DOWN" } else { "UP" },
                x,
                y,
                self.touch_slots.len()
            );

            touches.push((id, state, x_raw, y_raw, size));
        }

        #[cfg(feature = "input-inject")]
        {
            if let Some(inj) = &mut self.injector {
                let any_active = !self.touch_slots.is_empty();
                if let Err(e) = inj.touch.emit(&touches, any_active) {
                    warn!("Touch injection error: {}", e);
                }
            }
        }

        Ok(())
    }

    pub fn process_pen(&mut self, payload: &[u8]) -> Result<()> {
        if payload.len() < 11 {
            return Ok(());
        }

        let flags = payload[0];
        let x_raw = i16::from_le_bytes([payload[1], payload[2]]);
        let y_raw = i16::from_le_bytes([payload[3], payload[4]]);
        let pressure_raw = i16::from_le_bytes([payload[5], payload[6]]);
        let orient_raw = i16::from_le_bytes([payload[7], payload[8]]);
        let tilt_raw = i16::from_le_bytes([payload[9], payload[10]]);

        let x = (x_raw as f32 / 32767.0) * self.output_width as f32;
        let y = (y_raw as f32 / 32767.0) * self.output_height as f32;
        let pressure = pressure_raw as f32 / 32767.0;
        let orientation = (orient_raw as f32 / 32767.0 - 0.5) * std::f32::consts::TAU;
        let tilt = (tilt_raw as f32 / 32767.0) * std::f32::consts::FRAC_PI_2;

        let state = if flags & PEN_FLAG_CONTACT != 0 {
            "CONTACT"
        } else if flags & PEN_FLAG_HOVER != 0 {
            "HOVER"
        } else {
            "UP"
        };
        let button = flags & PEN_FLAG_BUTTON != 0;

        debug!(
            "Pen: {} {} at ({:.0}, {:.0}) pressure={:.3} orient={:.2} tilt={:.2} button={}",
            state,
            if button { "[BTN]" } else { "" },
            x,
            y,
            pressure,
            orientation,
            tilt,
            button
        );

        #[cfg(feature = "input-inject")]
        {
            if let Some(inj) = &mut self.injector {
                let tilt_x = ((tilt.cos() * orientation.cos()) * 9000.0) as i32;
                let tilt_y = ((tilt.cos() * orientation.sin()) * 9000.0) as i32;
                if let Err(e) = inj.pen.emit(flags, x_raw, y_raw, pressure_raw, tilt_x, tilt_y) {
                    warn!("Pen injection error: {}", e);
                }
            }
        }

        Ok(())
    }

    pub fn process_keyboard(&mut self, payload: &[u8]) -> Result<()> {
        if payload.len() < 5 {
            return Ok(());
        }
        let pressed = payload[0] != 0;
        let key_index = i32::from_le_bytes([payload[1], payload[2], payload[3], payload[4]]);
        debug!("Keyboard: key_index={} pressed={}", key_index, pressed);

        #[cfg(feature = "input-inject")]
        {
            if let Some(inj) = &mut self.injector {
                if let Err(e) = inj.keyboard.emit(key_index, pressed) {
                    warn!("Keyboard injection error: {}", e);
                }
            }
        }

        Ok(())
    }

    pub fn process_frame_done(&mut self, payload: &[u8]) -> Result<()> {
        if payload.len() >= 4 {
            let encoder_id = i32::from_le_bytes([payload[0], payload[1], payload[2], payload[3]]);
            debug!("FrameDone: encoder_id={}", encoder_id);
        }
        Ok(())
    }
}
