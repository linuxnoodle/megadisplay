package com.megadisplay.client.protocol

import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.ReadableByteChannel
import java.nio.charset.StandardCharsets

object Handshake {

    fun build(version: Int): ByteArray {
        val versionStr = String.format("%03d", version)
        val msg = (Protocol.HANDSHAKE_BASE + versionStr).toByteArray(StandardCharsets.US_ASCII) + 0.toByte()
        check(msg.size == 18) { "handshake must be 18 bytes, got ${msg.size}" }
        return msg
    }

    fun parse(data: ByteArray): Int {
        require(data.size >= 18) { "handshake too short: ${data.size}" }

        val first4 = String(data, 0, 4, StandardCharsets.US_ASCII)
        if (first4 == "MIRR") throw HandshakeException(HandshakeError.OLD_HOST)

        val base = String(data, 0, Protocol.HANDSHAKE_BASE.length, StandardCharsets.US_ASCII)
        if (base != Protocol.HANDSHAKE_BASE) {
            android.util.Log.e("Handshake", "WRONG_PROTOCOL: expected '${Protocol.HANDSHAKE_BASE}', got '${base}', full: ${data.contentToString()}")
            throw HandshakeException(HandshakeError.WRONG_PROTOCOL)
        }

        val versionStr = String(
            data,
            Protocol.HANDSHAKE_BASE.length,
            Protocol.HANDSHAKE_VERSION_LENGTH,
            StandardCharsets.US_ASCII,
        )
        val version = versionStr.toIntOrNull()
            ?: throw HandshakeException(HandshakeError.WRONG_PROTOCOL)

        require(data[Protocol.HANDSHAKE_BASE.length + Protocol.HANDSHAKE_VERSION_LENGTH] == 0.toByte()) {
            "missing NUL terminator"
        }

        val maxSupported = Protocol.SUPPORTED_HOST_VERSIONS[0]
        if (version > maxSupported) throw HandshakeException(HandshakeError.OLD_CLIENT)
        if (version < maxSupported && version !in Protocol.SUPPORTED_HOST_VERSIONS) {
            throw HandshakeException(HandshakeError.OLD_HOST)
        }

        return version
    }

    fun readHandshake(channel: ReadableByteChannel): Int {
        val buf = ByteBuffer.allocate(16384)
        var totalRead = 0
        while (totalRead < 18) {
            val n = channel.read(buf)
            if (n < 0) throw java.io.EOFException("channel closed during handshake")
            totalRead += n
        }
        
        buf.flip()
        val data = ByteArray(18)
        buf.get(data)
        
        return parse(data)
    }
}

enum class HandshakeError { WRONG_PROTOCOL, OLD_HOST, OLD_CLIENT }

class HandshakeException(val error: HandshakeError) : Exception(error.name)
