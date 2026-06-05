package com.megadisplay.client.transport

import java.nio.channels.SocketChannel

class TcpTransport(
    private val channel: SocketChannel
) : Transport(channel, channel) {
    override fun doClose() {
        try {
            channel.close()
        } catch (e: Exception) {
            // Ignored
        }
    }
}
