//! USB AOAP transport using nusb.
//!
//! Implements the Android Open Accessory Protocol for direct USB bulk
//! communication without ADB overhead. The PC sends USB control transfers
//! to switch the Android device into accessory mode, then uses bulk
//! endpoints for all data.
//!
//! Wire protocol:
//! - PC→Android: fragmented streams [1B stream_id][2B LE frag_len][data]
//! - Android→PC: simple [4B LE length][payload]
//! - Payload starts with 1-byte DataType

use anyhow::{anyhow, bail, Context, Result};
use megadisplay_protocol::{
    build_handshake, parse_handshake, DataType, SUPPORTED_HOST_VERSIONS,
};
use nusb::transfer::{Bulk, ControlIn, ControlOut, ControlType, In, Out};
use nusb::MaybeFuture;
use std::time::Duration;
use tracing::{debug, info, warn};

// Transport traits for abstracting over USB/TCP

/// Transport reader — receives raw bytes from the remote end.
pub trait TransportRead: Send {
    fn recv(&mut self, max_len: usize) -> Result<Vec<u8>>;
}

/// Transport writer — sends raw bytes to the remote end.
pub trait TransportWrite: Send {
    fn send(&mut self, data: &[u8]) -> Result<()>;
}

const TIMEOUT: Duration = Duration::from_secs(5);

const AOAP_ACCESSORY_GET_PROTOCOL: u8 = 51;
const AOAP_ACCESSORY_SEND_STRING: u8 = 52;
const AOAP_ACCESSORY_START: u8 = 53;

const AOAP_STRING_MANUFACTURER: u16 = 0;
const AOAP_STRING_MODEL: u16 = 1;
const AOAP_STRING_TYPE: u16 = 2;
const AOAP_STRING_VERSION: u16 = 3;
const AOAP_STRING_URI: u16 = 4;
const AOAP_STRING_SERIAL: u16 = 5;

const AOAP_VID: u16 = 0x18D1;
const AOAP_PID_ACCESSORY: u16 = 0x2D00;
const AOAP_PID_ACCESSORY_ADB: u16 = 0x2D01;

const MAX_FRAGMENT_DATA: usize = 16384;

pub struct AoapConnection {
    device: nusb::Device,
    interface: nusb::Interface,
    ep_out: nusb::Endpoint<Bulk, Out>,
    ep_in: nusb::Endpoint<Bulk, In>,
}

pub struct AoapReader {
    ep_in: nusb::Endpoint<Bulk, In>,
}

pub struct AoapWriter {
    ep_out: nusb::Endpoint<Bulk, Out>,
}

impl AoapConnection {
    pub fn device(&self) -> &nusb::Device {
        &self.device
    }

    pub fn interface(&self) -> &nusb::Interface {
        &self.interface
    }

    pub fn send(&mut self, data: &[u8]) -> Result<()> {
        self.ep_out.transfer_blocking(data.to_vec().into(), TIMEOUT).into_result()?;
        Ok(())
    }

    pub fn recv(&mut self, max_len: usize) -> Result<Vec<u8>> {
        let buf = nusb::transfer::Buffer::new(max_len);
        let buffer = self.ep_in.transfer_blocking(buf, TIMEOUT).into_result()?;
        Ok(buffer.to_vec())
    }

    pub fn split(self) -> (AoapReader, AoapWriter) {
        (
            AoapReader { ep_in: self.ep_in },
            AoapWriter { ep_out: self.ep_out },
        )
    }
}

impl AoapReader {
    pub fn recv(&mut self, max_len: usize) -> Result<Vec<u8>> {
        let buf = nusb::transfer::Buffer::new(max_len);
        let buffer = self.ep_in.transfer_blocking(buf, TIMEOUT).into_result()?;
        Ok(buffer.to_vec())
    }
}

impl TransportRead for AoapReader {
    fn recv(&mut self, max_len: usize) -> Result<Vec<u8>> {
        self.recv(max_len)
    }
}

impl AoapWriter {
    pub fn send(&mut self, data: &[u8]) -> Result<()> {
        self.ep_out.transfer_blocking(data.to_vec().into(), TIMEOUT).into_result()?;
        Ok(())
    }
}

impl TransportWrite for AoapWriter {
    fn send(&mut self, data: &[u8]) -> Result<()> {
        self.send(data)
    }
}

pub fn find_android_device() -> Result<nusb::DeviceInfo> {
    let devices = nusb::list_devices().wait()
        .context("Failed to enumerate USB devices")?;

    for dev in devices {
        let is_aoap = dev.vendor_id() == AOAP_VID &&
            (dev.product_id() == AOAP_PID_ACCESSORY || dev.product_id() == AOAP_PID_ACCESSORY_ADB);

        if is_aoap {
            info!(
                "Found AOAP accessory: {:04x}:{:04x} on bus {} dev {}",
                dev.vendor_id(), dev.product_id(),
                dev.bus_id(), dev.device_address()
            );
            return Ok(dev);
        }
    }
    bail!("No Android device found in AOAP mode. Connect device and ensure USB debugging is enabled.")
}

pub fn find_any_android_device() -> Result<nusb::DeviceInfo> {
    let devices = nusb::list_devices().wait()
        .context("Failed to enumerate USB devices")?;

    for dev in devices {
        let cls = dev.class();
        let is_android = dev.vendor_id() == AOAP_VID ||
            (cls == 0x00 && dev.subclass() == 0x00);

        if is_android {
            debug!(
                "Found potential Android device: {:04x}:{:04x}",
                dev.vendor_id(), dev.product_id()
            );
            return Ok(dev);
        }
    }
    bail!("No Android device found")
}

pub fn try_enter_accessory_mode(dev_info: &nusb::DeviceInfo) -> Result<bool> {
    let device = dev_info.open().wait()
        .context("Failed to open USB device")?;

    match device.control_in(
        ControlIn {
            control_type: ControlType::Vendor,
            recipient: nusb::transfer::Recipient::Device,
            request: AOAP_ACCESSORY_GET_PROTOCOL,
            value: 0,
            index: 0,
            length: 2,
        },
        TIMEOUT,
    ).wait() {
        Ok(data) if data.len() >= 2 => {
            let version = u16::from_le_bytes([data[0], data[1]]);
            info!("AOAP protocol version: {}", version);
        }
        Ok(_) => {
            warn!("AOAP GET_PROTOCOL returned short response");
            return Ok(false);
        }
        Err(e) => {
            debug!("Device doesn't support AOAP: {}", e);
            return Ok(false);
        }
    }

    send_aoap_string(&device, AOAP_STRING_MANUFACTURER, "MegaDisplay")?;
    send_aoap_string(&device, AOAP_STRING_MODEL, "superDisplay")?;
    send_aoap_string(&device, AOAP_STRING_TYPE, "1.0")?;
    send_aoap_string(&device, AOAP_STRING_VERSION, "1.0")?;

    info!("Sending AOAP START...");
    device.control_out(
        ControlOut {
            control_type: ControlType::Vendor,
            recipient: nusb::transfer::Recipient::Device,
            request: AOAP_ACCESSORY_START,
            value: 0,
            index: 0,
            data: &[],
        },
        TIMEOUT,
    ).wait()?;

    info!("AOAP START sent, device will re-enumerate");
    Ok(true)
}

fn send_aoap_string(device: &nusb::Device, index: u16, s: &str) -> Result<()> {
    let mut data = s.as_bytes().to_vec();
    data.push(0);
    device.control_out(
        ControlOut {
            control_type: ControlType::Vendor,
            recipient: nusb::transfer::Recipient::Device,
            request: AOAP_ACCESSORY_SEND_STRING,
            value: 0,
            index,
            data: &data,
        },
        TIMEOUT,
    ).wait()?;
    Ok(())
}

pub fn open_aoap_connection(dev_info: &nusb::DeviceInfo) -> Result<AoapConnection> {
    let device = dev_info.open().wait()
        .context("Failed to open AOAP device")?;

    let config = device.active_configuration()
        .context("Failed to get active configuration")?;

    let interface_desc = config.interface_alt_settings()
        .find(|intf| {
            intf.endpoints().any(|ep| {
                ep.transfer_type() == nusb::descriptors::TransferType::Bulk
            })
        })
        .ok_or_else(|| anyhow!("No interface with bulk endpoints found"))?;

    let interface_num = interface_desc.interface_number();

    let bulk_endpoints: Vec<_> = interface_desc.endpoints()
        .filter(|ep| ep.transfer_type() == nusb::descriptors::TransferType::Bulk)
        .collect();

    let ep_out_addr = bulk_endpoints.iter()
        .find(|ep| ep.address() & 0x80 == 0)
        .map(|ep| ep.address())
        .ok_or_else(|| anyhow!("No bulk OUT endpoint found"))?;

    let ep_in_addr = bulk_endpoints.iter()
        .find(|ep| ep.address() & 0x80 != 0)
        .map(|ep| ep.address())
        .ok_or_else(|| anyhow!("No bulk IN endpoint found"))?;

    info!(
        "AOAP interface={}, bulk OUT=0x{:02x}, bulk IN=0x{:02x}",
        interface_num, ep_out_addr, ep_in_addr
    );

    let interface = device.detach_and_claim_interface(interface_num).wait()?;

    let ep_out = interface.endpoint::<Bulk, Out>(ep_out_addr)?;
    let ep_in = interface.endpoint::<Bulk, In>(ep_in_addr)?;

    Ok(AoapConnection {
        device,
        interface,
        ep_out,
        ep_in,
    })
}

pub fn do_handshake(conn: &mut AoapConnection) -> Result<u32> {
    info!("Sending protocol handshake...");

    let our_handshake = build_handshake(SUPPORTED_HOST_VERSIONS[0]);
    conn.send(&our_handshake)?;

    let mut response = vec![0u8; 18];
    let mut read = 0;
    while read < 18 {
        let data = conn.recv(18 - read)?;
        if data.is_empty() {
            bail!("Device closed connection during handshake");
        }
        let n = data.len().min(18 - read);
        response[read..read + n].copy_from_slice(&data[..n]);
        read += n;
    }

    let peer_version = parse_handshake(&response)?;
    info!("Handshake complete, peer version: {}", peer_version);
    Ok(peer_version)
}

pub struct FragmentWriter {
    buf: Vec<u8>,
}

impl FragmentWriter {
    pub fn new() -> Self {
        Self { buf: Vec::with_capacity(65536) }
    }

    pub fn build_fragment(&mut self, stream_id: u8, payload: &[u8]) -> &[u8] {
        let msg_len = 4 + payload.len();
        self.buf.clear();
        self.buf.reserve(3 + msg_len);

        self.buf.push(stream_id);

        let frag_data_len = msg_len.min(MAX_FRAGMENT_DATA);
        self.buf.push((frag_data_len & 0xFF) as u8);
        self.buf.push(((frag_data_len >> 8) & 0xFF) as u8);

        let remaining = msg_len;
        let _offset = 0;

        let first_chunk = remaining.min(MAX_FRAGMENT_DATA);
        self.buf.extend_from_slice(&payload[..first_chunk.saturating_sub(4).min(payload.len())]);

        // Actually, let's simplify: one fragment for the whole message
        // when it fits in MAX_FRAGMENT_DATA, otherwise split.
        // For now, just write the full message.
        self.buf.clear();
        self.buf.push(stream_id);
        let total = 4 + payload.len();
        assert!(total <= 65535, "message too large for single fragment");
        self.buf.push((total & 0xFF) as u8);
        self.buf.push(((total >> 8) & 0xFF) as u8);
        self.buf.extend_from_slice(&(payload.len() as u32).to_le_bytes());
        self.buf.extend_from_slice(payload);

        &self.buf
    }

    pub fn build_frame_fragment(&mut self, stream_id: u8, nal_data: &[u8]) -> &[u8] {
        let payload_len = 1 + 1 + nal_data.len();
        let total = 4 + payload_len;

        self.buf.clear();
        self.buf.reserve(3 + total);
        self.buf.push(stream_id);
        self.buf.push((total & 0xFF) as u8);
        self.buf.push(((total >> 8) & 0xFF) as u8);
        self.buf.extend_from_slice(&(payload_len as u32).to_le_bytes());
        self.buf.push(DataType::Frame as u8);
        self.buf.push(0);
        self.buf.extend_from_slice(nal_data);

        &self.buf
    }
}

pub struct MessageReader {
    buf: Vec<u8>,
    msg_len: usize,
}

impl MessageReader {
    pub fn new() -> Self {
        Self {
            buf: Vec::with_capacity(100_000),
            msg_len: 0,
        }
    }

    pub fn feed(&mut self, data: &[u8]) -> Vec<(DataType, Vec<u8>)> {
        self.buf.extend_from_slice(data);
        let mut messages = Vec::new();

        loop {
            if self.msg_len == 0 {
                if self.buf.len() < 4 {
                    break;
                }
                self.msg_len = u32::from_le_bytes([
                    self.buf[0], self.buf[1], self.buf[2], self.buf[3],
                ]) as usize;
                self.buf.drain(0..4);
            }

            if self.buf.len() < self.msg_len {
                break;
            }

            let payload: Vec<u8> = self.buf.drain(0..self.msg_len).collect();
            let data_type = DataType::from_u8(payload.first().copied().unwrap_or(0))
                .unwrap_or(DataType::State);
            let msg_data = if payload.len() > 1 {
                payload[1..].to_vec()
            } else {
                Vec::new()
            };
            messages.push((data_type, msg_data));
            self.msg_len = 0;
        }

        messages
    }
}

pub fn wait_for_aoap_reenumerate(timeout: Duration) -> Result<nusb::DeviceInfo> {
    let start = std::time::Instant::now();
    while start.elapsed() < timeout {
        std::thread::sleep(Duration::from_millis(500));
        if let Ok(dev) = find_android_device() {
            return Ok(dev);
        }
    }
    bail!("Timed out waiting for AOAP re-enumeration")
}

pub fn connect_and_handshake() -> Result<(AoapConnection, u32)> {
    info!("Scanning for AOAP devices...");

    match find_android_device() {
        Ok(dev_info) => {
            info!("Found device already in AOAP mode");
            let mut conn = open_aoap_connection(&dev_info)?;
            let version = do_handshake(&mut conn)?;
            return Ok((conn, version));
        }
        Err(_) => {
            info!("No AOAP device found, trying to switch Android device to accessory mode...");
        }
    }

    if let Ok(dev_info) = find_any_android_device() {
        let vid = dev_info.vendor_id();
        let pid = dev_info.product_id();
        info!("Trying AOAP on {:04x}:{:04x}...", vid, pid);

        match try_enter_accessory_mode(&dev_info) {
            Ok(true) => {
                drop(dev_info);
                info!("Waiting for AOAP re-enumeration...");
                std::thread::sleep(Duration::from_secs(2));
                let aoap_dev = wait_for_aoap_reenumerate(Duration::from_secs(10))?;
                let mut conn = open_aoap_connection(&aoap_dev)?;
                let version = do_handshake(&mut conn)?;
                return Ok((conn, version));
            }
            Ok(false) => {
                warn!("Device doesn't support AOAP");
            }
            Err(e) => {
                warn!("AOAP mode entry failed: {}", e);
            }
        }
    }

    bail!("Could not establish AOAP connection. Ensure device is connected with USB debugging enabled.")
}
