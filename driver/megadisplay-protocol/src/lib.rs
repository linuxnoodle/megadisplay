//! Wire protocol for MegaDisplay, compatible with SuperDisplay v1.2.25.
//!
//! See `REVERSE_ENGINEER.md` for the full protocol documentation.

pub mod handshake;
pub mod framing;
pub mod messages;

pub use handshake::{build_handshake, parse_handshake, HandshakeError, HANDSHAKE_BASE, HANDSHAKE_VERSION_LENGTH, SUPPORTED_HOST_VERSIONS};
pub use messages::DataType;
pub use messages::{PEN_FLAG_CONTACT, PEN_FLAG_HOVER, PEN_FLAG_BUTTON};
