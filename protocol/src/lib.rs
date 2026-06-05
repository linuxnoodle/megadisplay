//! Wire protocol for MegaDisplay, compatible with SuperDisplay v1.2.25.
//!
//! See `REVERSE_ENGINEER.md` for the full protocol documentation.

pub mod handshake;
pub mod messages;

pub use handshake::{build_handshake, parse_handshake, HandshakeError, SUPPORTED_HOST_VERSIONS};
pub use messages::DataType;
pub use messages::{PEN_FLAG_CONTACT, PEN_FLAG_HOVER, PEN_FLAG_BUTTON, PEN_FLAG_ERASER};
pub use messages::{ERROR_WARN_BAD_RESOLUTION, ERROR_WARN_SOFTWARE_ENCODER};
