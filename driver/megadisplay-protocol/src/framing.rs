//! Protocol framing — fragment layer (PC→Android) and message layer (both directions).
//!
//! PC→Android uses two multiplexed streams with fragment headers:
//!   `[1B stream_id] [2B LE fragment_length] [data...]`
//!
//! Each reassembled message has a 4-byte LE length prefix:
//!   `[4B LE payload_length] [payload...]`
//!
//! Android→PC is simpler:
//!   `[4B LE length] [payload...]`
//!
//! In both directions, payload starts with a 1-byte DataType.

use bytes::{Buf, BufMut, BytesMut};

/// Stream IDs for PC→Android multiplexing.
pub const STREAM_CONTROL: u8 = 0;
pub const STREAM_VIDEO: u8 = 1;

/// Maximum outgoing payload size (matches original: 10,000 byte send buffer).
pub const MAX_OUTGOING_PAYLOAD: usize = 10_000;

/// Read buffer sizes matching the original Android client.
pub const CONTROL_BUFFER_SIZE: usize = 100_000;
pub const VIDEO_BUFFER_SIZE: usize = 10_000_000;

/// A reassembled message from either direction.
#[derive(Debug)]
pub struct Message {
    pub data_type: super::messages::DataType,
    pub payload: BytesMut,
}

/// Encoder for outgoing messages (Android→PC direction, or our driver→Android).
pub struct MessageEncoder {
    buf: BytesMut,
}

impl MessageEncoder {
    pub fn new() -> Self {
        Self {
            buf: BytesMut::with_capacity(MAX_OUTGOING_PAYLOAD + 5),
        }
    }

    /// Encode a message into the internal buffer.
    ///
    /// The callback receives a `&mut BytesMut` to write the payload into
    /// (after the DataType byte).
    pub fn encode<F>(
        &mut self,
        data_type: super::messages::DataType,
        payload_len: usize,
        write_payload: F,
    ) -> &[u8]
    where
        F: FnOnce(&mut BytesMut),
    {
        let total = 4 + 1 + payload_len;
        assert!(total <= MAX_OUTGOING_PAYLOAD, "outgoing message too large");

        self.buf.clear();
        self.buf.reserve(total);

        // 4-byte LE length prefix (includes DataType byte + payload)
        self.buf.put_u32_le(1 + payload_len as u32);

        // DataType byte
        self.buf.put_u8(data_type as u8);

        // Payload
        write_payload(&mut self.buf);

        assert_eq!(self.buf.len(), total);
        &self.buf
    }

    #[inline]
    pub fn output(&self) -> &[u8] {
        &self.buf
    }
}

/// Decoder for incoming messages (handles PC→Android fragmented streams).
pub struct StreamReassembler {
    buffers: [BytesMut; 2],
    lengths: [usize; 2],
}

impl StreamReassembler {
    pub fn new() -> Self {
        Self {
            buffers: [
                BytesMut::with_capacity(CONTROL_BUFFER_SIZE),
                BytesMut::with_capacity(VIDEO_BUFFER_SIZE),
            ],
            lengths: [0; 2],
        }
    }

    /// Feed a fragment into the reassembler.
    ///
    /// Returns completed messages if any are ready.
    pub fn feed_fragment(&mut self, stream_id: u8, data: &[u8]) -> Vec<Message> {
        let stream_idx = stream_id as usize;
        assert!(stream_idx < 2, "invalid stream id");

        let mut messages = Vec::new();
        let buf = &mut self.buffers[stream_idx];
        let length = &mut self.lengths[stream_idx];

        buf.extend_from_slice(data);

        loop {
            if *length == 0 {
                // Still reading the 4-byte length prefix
                if buf.len() < 4 {
                    break;
                }
                let mut tmp = buf.clone();
                *length = tmp.get_u32_le() as usize;
                // Remove the 4 bytes from the buffer and reset for payload
                buf.advance(4);
                buf.clear();
            }

            if *length > 0 && buf.len() >= *length {
                // Complete message
                let payload = buf.split_to(*length);
                let data_type = super::messages::DataType::from_u8(payload[0])
                    .unwrap_or(super::messages::DataType::State);
                let msg = Message {
                    data_type,
                    payload: payload.freeze()[1..].into(),
                };
                messages.push(msg);
                *length = 0;
            } else {
                break;
            }
        }

        messages
    }
}
