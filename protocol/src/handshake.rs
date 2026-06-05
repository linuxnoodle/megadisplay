//! Protocol handshake constants and logic.

pub const HANDSHAKE_BASE: &str = "KELOCUBE_MIRR_";
pub const HANDSHAKE_VERSION_LENGTH: usize = 3;
pub const SUPPORTED_HOST_VERSIONS: &[u32] = &[4, 3];

/// The handshake message sent by both sides: `"KELOCUBE_MIRR_" + 3-digit version + NUL`.
///
/// Total length: 18 bytes (14 base + 3 version + 1 NUL).
pub fn build_handshake(version: u32) -> Vec<u8> {
    let version_str = format!("{version:03}");
    let mut msg = HANDSHAKE_BASE.as_bytes().to_vec();
    msg.extend(version_str.as_bytes());
    msg.push(0);
    assert_eq!(msg.len(), 18);
    msg
}

/// Parse a received handshake, returning the peer's version.
///
/// Returns `Err` if the handshake is invalid or the version is unsupported.
pub fn parse_handshake(data: &[u8]) -> Result<u32, HandshakeError> {
    if data.len() < 18 {
        return Err(HandshakeError::TooShort);
    }

    // Legacy V1 check: first 4 bytes "MIRR" → reject
    if &data[..4] == b"MIRR" {
        return Err(HandshakeError::OldHostVersion);
    }

    // Check base string
    if &data[..HANDSHAKE_BASE.len()] != HANDSHAKE_BASE.as_bytes() {
        return Err(HandshakeError::WrongProtocol);
    }

    // Parse version
    let version_str = std::str::from_utf8(
        &data[HANDSHAKE_BASE.len()..HANDSHAKE_BASE.len() + HANDSHAKE_VERSION_LENGTH],
    )
    .map_err(|_| HandshakeError::WrongProtocol)?;
    let version: u32 = version_str
        .parse()
        .map_err(|_| HandshakeError::WrongProtocol)?;

    // Check NUL terminator
    if data[HANDSHAKE_BASE.len() + HANDSHAKE_VERSION_LENGTH] != 0 {
        return Err(HandshakeError::WrongProtocol);
    }

    // Version validation
    let max_supported = SUPPORTED_HOST_VERSIONS[0];
    if version > max_supported {
        return Err(HandshakeError::OldClientVersion);
    }
    if version < max_supported && !SUPPORTED_HOST_VERSIONS.contains(&version) {
        return Err(HandshakeError::OldHostVersion);
    }

    Ok(version)
}

#[derive(Debug, Clone, thiserror::Error)]
pub enum HandshakeError {
    #[error("handshake too short")]
    TooShort,
    #[error("wrong protocol")]
    WrongProtocol,
    #[error("client version is too old for this host")]
    OldClientVersion,
    #[error("host version is too old")]
    OldHostVersion,
}
