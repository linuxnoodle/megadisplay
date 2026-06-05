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

const AOAP_VID: u16 = 0x18D1;
const AOAP_PID_ACCESSORY: u16 = 0x2D00;
const AOAP_PID_ACCESSORY_ADB: u16 = 0x2D01;

pub struct AoapConnection {
    device: nusb::Device,
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

    pub fn send(&mut self, data: &[u8]) -> Result<()> {
        self.ep_out.transfer_blocking(data.to_vec().into(), TIMEOUT).into_result()?;
        Ok(())
    }

    pub fn recv(&mut self, _max_len: usize) -> Result<Vec<u8>> {
        let buf = nusb::transfer::Buffer::new(65_536);
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
    pub fn recv(&mut self, _max_len: usize) -> Result<Vec<u8>> {
        let buf = nusb::transfer::Buffer::new(1_048_576); // 1MB — large enough for full keyframes
        let buffer = self.ep_in.transfer_blocking(buf, Duration::from_secs(3600)).into_result()?;
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

    drop(interface);

    Ok(AoapConnection {
        device,
        ep_out,
        ep_in,
    })
}

pub fn do_handshake(conn: &mut AoapConnection) -> Result<u32> {
    info!("Sending protocol handshake...");

    let our_handshake = build_handshake(SUPPORTED_HOST_VERSIONS[0]);
    conn.send(&our_handshake).context("Failed to send handshake")?;
    info!("Handshake sent successfully, waiting for response...");

    let mut response = vec![0u8; 18];
    let mut read = 0;
    while read < 18 {
        info!("Receiving handshake bytes, currently read: {}", read);
        let data = conn.recv(16384).context("Failed to recv handshake response")?;
        if data.is_empty() {
            bail!("Device closed connection during handshake");
        }
        let n = data.len().min(18 - read);
        response[read..read + n].copy_from_slice(&data[..n]);
        read += n;
    }

    let peer_version = match parse_handshake(&response) {
        Ok(v) => v,
        Err(e) => {
            warn!("Handshake parse failed: {}. Raw bytes received: {:?}", e, response);
            return Err(e.into());
        }
    };
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
        self.buf.clear();
        let _total = 4 + payload.len();
        let mut msg_header = Vec::new();
        msg_header.extend_from_slice(&(payload.len() as u32).to_le_bytes());
        
        let mut remaining_payload = payload;
        let mut remaining_header = msg_header.as_slice();
        
        while !remaining_header.is_empty() || !remaining_payload.is_empty() {
            let space_for_header = remaining_header.len().min(65535);
            let space_for_payload = (65535 - space_for_header).min(remaining_payload.len());
            let frag_data_len = space_for_header + space_for_payload;
            
            self.buf.push(stream_id);
            self.buf.push((frag_data_len & 0xFF) as u8);
            self.buf.push(((frag_data_len >> 8) & 0xFF) as u8);
            
            if space_for_header > 0 {
                self.buf.extend_from_slice(&remaining_header[..space_for_header]);
                remaining_header = &remaining_header[space_for_header..];
            }
            if space_for_payload > 0 {
                self.buf.extend_from_slice(&remaining_payload[..space_for_payload]);
                remaining_payload = &remaining_payload[space_for_payload..];
            }
        }
        &self.buf
    }

    pub fn build_frame_fragment(&mut self, stream_id: u8, nal_data: &[u8]) -> &[u8] {
        self.buf.clear();
        let payload_len = 1 + 1 + nal_data.len();
        let _total = 4 + payload_len;
        
        let mut msg_header = Vec::new();
        msg_header.extend_from_slice(&(payload_len as u32).to_le_bytes());
        msg_header.push(DataType::Frame as u8);
        msg_header.push(0); // flags
        
        let mut remaining_payload = nal_data;
        let mut remaining_header = msg_header.as_slice();
        
        while !remaining_header.is_empty() || !remaining_payload.is_empty() {
            let space_for_header = remaining_header.len().min(65535);
            let space_for_payload = (65535 - space_for_header).min(remaining_payload.len());
            let frag_data_len = space_for_header + space_for_payload;
            
            self.buf.push(stream_id);
            self.buf.push((frag_data_len & 0xFF) as u8);
            self.buf.push(((frag_data_len >> 8) & 0xFF) as u8);
            
            if space_for_header > 0 {
                self.buf.extend_from_slice(&remaining_header[..space_for_header]);
                remaining_header = &remaining_header[space_for_header..];
            }
            if space_for_payload > 0 {
                self.buf.extend_from_slice(&remaining_payload[..space_for_payload]);
                remaining_payload = &remaining_payload[space_for_payload..];
            }
        }
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

pub fn connect_and_handshake() -> Result<(AoapConnection, u32)> {
    info!("Scanning for AOAP devices...");

    loop {
        if let Ok(dev) = find_android_device() {
            info!("Attempting to connect to AOAP bulk endpoints...");
            match open_aoap_connection(&dev) {
                Ok(mut conn) => {
                    match do_handshake(&mut conn) {
                        Ok(version) => return Ok((conn, version)),
                        Err(e) => {
                            warn!("Handshake failed: {}. Issuing USB reset to force Android accessory mode recovery...", e);
                            let _ = conn.device().reset().wait();
                        }
                    }
                }
                Err(e) => {
                    warn!("Failed to open AOAP connection: {}. Retrying in 1s...", e);
                }
            }
        } else if let Ok(dev_info) = find_any_android_device() {
            let vid = dev_info.vendor_id();
            let pid = dev_info.product_id();
            info!("No AOAP device found, trying to switch Android device {:04x}:{:04x} to accessory mode...", vid, pid);
            match try_enter_accessory_mode(&dev_info) {
                Ok(true) => {
                    info!("Waiting for AOAP re-enumeration...");
                    std::thread::sleep(Duration::from_secs(2));
                }
                Ok(false) => {
                    warn!("Device doesn't support AOAP");
                }
                Err(e) => {
                    warn!("AOAP mode entry failed: {}", e);
                }
            }
        } else {
            info!("Waiting for Android device...");
        }
        std::thread::sleep(Duration::from_millis(1000));
    }
}
