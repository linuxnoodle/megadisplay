//! TCP transport for development/testing without USB.
//!
//! Uses the same message framing as the USB transport but over a TCP socket.
//! The driver listens on a configurable port and waits for the Android client
//! (or a test client) to connect.

use anyhow::{Context, Result};
use megadisplay_protocol::{build_handshake, parse_handshake, SUPPORTED_HOST_VERSIONS};
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream};
use std::time::Duration;
use tracing::info;

use crate::transport::{TransportRead, TransportWrite};

pub struct TcpReader {
    stream: TcpStream,
}

pub struct TcpWriter {
    stream: TcpStream,
}

impl TransportRead for TcpReader {
    fn recv(&mut self, max_len: usize) -> Result<Vec<u8>> {
        let mut buf = vec![0u8; max_len];
        self.stream.set_nonblocking(false)?;
        match self.stream.read(&mut buf) {
            Ok(0) => Ok(Vec::new()),
            Ok(n) => {
                buf.truncate(n);
                Ok(buf)
            }
            Err(e) => Err(anyhow::anyhow!("TCP read error: {}", e)),
        }
    }
}

impl TransportWrite for TcpWriter {
    fn send(&mut self, data: &[u8]) -> Result<()> {
        self.stream.write_all(data)?;
        Ok(())
    }
}

pub struct TcpConnection {
    reader: TcpReader,
    writer: TcpWriter,
}

impl TcpConnection {
    pub fn split(self) -> (TcpReader, TcpWriter) {
        (self.reader, self.writer)
    }
}

/// Listen on the given port and wait for a client to connect.
pub fn listen_and_accept(port: u16) -> Result<TcpConnection> {
    let addr = format!("0.0.0.0:{}", port);
    let listener = TcpListener::bind(&addr)
        .context(format!("Failed to bind TCP listener on {}", addr))?;

    info!("TCP transport listening on {} (waiting for connection...)", addr);

    let (stream, peer) = listener.accept()
        .context("Failed to accept TCP connection")?;

    info!("TCP client connected from {}", peer);

    stream.set_nodelay(true)?;
    stream.set_read_timeout(Some(Duration::from_secs(30)))?;
    stream.set_write_timeout(Some(Duration::from_secs(30)))?;

    let writer_stream = stream.try_clone()
        .context("Failed to clone TCP stream")?;

    Ok(TcpConnection {
        reader: TcpReader { stream },
        writer: TcpWriter { stream: writer_stream },
    })
}

/// Perform the protocol handshake over TCP.
pub fn do_handshake(conn: &mut TcpConnection) -> Result<u32> {
    info!("Sending protocol handshake (TCP)...");

    let our_handshake = build_handshake(SUPPORTED_HOST_VERSIONS[0]);
    conn.writer.send(&our_handshake)?;

    let mut response = vec![0u8; 18];
    conn.reader.stream.read_exact(&mut response)?;

    let peer_version = parse_handshake(&response)?;
    info!("Handshake complete, peer version: {}", peer_version);
    Ok(peer_version)
}
