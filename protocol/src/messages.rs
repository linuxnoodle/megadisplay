//! DataType enum and message payload structures.

/// Message type identifiers (matches MirrorClient.DataType in the original app).
#[repr(u8)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum DataType {
    State = 0,
    Configure = 1,
    Stop = 2,
    Frame = 3,
    FrameDone = 4,
    PointerMove = 5,
    PointerShape = 6,
    TakeScreenshot = 7,
    Touch = 8,
    Pen = 9,
    Unlock = 10,
    Scale = 11,
    InputConfig = 12,
    InputKey = 13,
    Error = 14,
    Keyboard = 15,
    Command = 16,
}

impl DataType {
    pub fn from_u8(v: u8) -> Option<Self> {
        match v {
            0 => Some(Self::State),
            1 => Some(Self::Configure),
            2 => Some(Self::Stop),
            3 => Some(Self::Frame),
            4 => Some(Self::FrameDone),
            5 => Some(Self::PointerMove),
            6 => Some(Self::PointerShape),
            7 => Some(Self::TakeScreenshot),
            8 => Some(Self::Touch),
            9 => Some(Self::Pen),
            10 => Some(Self::Unlock),
            11 => Some(Self::Scale),
            12 => Some(Self::InputConfig),
            13 => Some(Self::InputKey),
            14 => Some(Self::Error),
            15 => Some(Self::Keyboard),
            16 => Some(Self::Command),
            _ => None,
        }
    }
}

// ── Pen flags ───────────────────────────────────────────────────────────────

pub const PEN_FLAG_CONTACT: u8 = 0x01;
pub const PEN_FLAG_HOVER: u8 = 0x02;
pub const PEN_FLAG_BUTTON: u8 = 0x04;
pub const PEN_FLAG_ERASER: u8 = 0x08;

pub const TOUCH_KEEPALIVE_MS: u64 = 50;

// ── Error codes (PC → Android) ──────────────────────────────────────────────

pub const ERROR_DRIVER: u8 = 0;
pub const ERROR_LICENSE: u8 = 2;
pub const ERROR_TRIAL_EXPIRED: u8 = 3;
pub const ERROR_WARN_BAD_RESOLUTION: u8 = 4;
pub const ERROR_GPU_DRIVER: u8 = 5;
pub const ERROR_NO_ENCODER: u8 = 6;
pub const ERROR_WARN_SOFTWARE_ENCODER: u8 = 7;

// ── Normalization ───────────────────────────────────────────────────────────

#[inline]
pub fn saturate_f32_to_i16(v: f32) -> i16 {
    (v.clamp(0.0, 1.0) * 32767.0) as i16
}

#[inline]
pub fn normalize_pen_orientation(axis: f32) -> i16 {
    saturate_f32_to_i16(axis / std::f32::consts::TAU + 0.5)
}

#[inline]
pub fn normalize_pen_tilt(axis: f32) -> i16 {
    saturate_f32_to_i16(axis / std::f32::consts::FRAC_PI_2)
}
