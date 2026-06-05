pub mod ipc_types;

pub use ipc_types::*;

use std::io::{BufRead, BufReader, Write};
use std::os::unix::net::UnixStream;
use std::path::PathBuf;

pub fn default_socket_path() -> PathBuf {
    let xdg = std::env::var("XDG_RUNTIME_DIR")
        .map(PathBuf::from)
        .unwrap_or_else(|_| {
            let home = std::env::var("HOME").unwrap_or_else(|_| "/tmp".into());
            PathBuf::from(home).join(".cache")
        });
    xdg.join("megadisplay.sock")
}

pub fn send_request(socket: &std::path::Path, req: &Request) -> anyhow::Result<Response> {
    let mut stream = UnixStream::connect(socket)
        .map_err(|e| anyhow::anyhow!("Cannot connect to daemon at {}: {e}", socket.display()))?;
    let json = serde_json::to_string(req)?;
    writeln!(stream, "{json}")?;

    let mut reader = BufReader::new(stream);
    let mut line = String::new();
    reader.read_line(&mut line)?;
    let resp: Response = serde_json::from_str(&line)
        .map_err(|e| anyhow::anyhow!("Invalid daemon response: {e}"))?;
    Ok(resp)
}
