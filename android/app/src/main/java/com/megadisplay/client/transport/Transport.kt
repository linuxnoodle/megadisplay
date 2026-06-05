package com.megadisplay.client.transport

import com.megadisplay.client.protocol.DataType
import com.megadisplay.client.protocol.Handshake
import com.megadisplay.client.protocol.Protocol
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.GatheringByteChannel
import java.nio.channels.ScatteringByteChannel
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.locks.ReentrantLock

abstract class Transport(
    private val readChannel: ScatteringByteChannel,
    private val writeChannel: GatheringByteChannel,
) {
    var onReady: (() -> Unit)? = null
    var onData: ((DataType, ByteBuffer) -> Unit)? = null
    var onError: ((Throwable) -> Unit)? = null

    @Volatile var hostVersion: Int = 0; private set
    @Volatile var clientVersion: Int = 0; private set
    @Volatile var running: Boolean = false; private set

    private val sendLock = ReentrantLock()
    private val sendCondition = sendLock.newCondition()
    private var sendBuffer: ByteBuffer =
        ByteBuffer.allocate(Protocol.SEND_BUFFER_SIZE).order(ByteOrder.LITTLE_ENDIAN)
    private var sendingBuffer: ByteBuffer =
        ByteBuffer.allocate(Protocol.SEND_BUFFER_SIZE).order(ByteOrder.LITTLE_ENDIAN)
    @Volatile private var pendingSend: Boolean = false

    private val timeoutTicks = AtomicInteger(Protocol.TIMEOUT_TICKS)

    private val streamData = arrayOf(ByteArray(Protocol.READ_BUFFER_VIDEO), ByteArray(Protocol.READ_BUFFER_VIDEO))
    private val streamWritePos = intArrayOf(0, 0)
    private val streamMsgLen = intArrayOf(-1, -1)

    fun start() {
        running = true
        Thread({ readLoop() }, "transport-read").start()
        Thread({ sendLoop() }, "transport-send").start()
    }

    fun stop() {
        running = false
        doClose()
        sendLock.lock()
        try {
            sendCondition.signalAll()
        } finally {
            sendLock.unlock()
        }
    }

    protected abstract fun doClose()

    fun send(data: ByteArray) {
        sendLock.lock()
        try {
            while (pendingSend && running) {
                sendCondition.await()
            }
            sendBuffer.clear()
            sendBuffer.putInt(data.size)
            sendBuffer.put(data)
            sendBuffer.flip()
            pendingSend = true
            sendCondition.signal()
        } finally {
            sendLock.unlock()
        }
    }

    private fun sendLoop() {
        val localBuf = sendingBuffer
        while (running) {
            sendLock.lock()
            try {
                while (!pendingSend && running) {
                    sendCondition.await()
                }
                if (!running) break
                localBuf.clear()
                localBuf.put(sendBuffer)
                localBuf.flip()
                pendingSend = false
                sendCondition.signal()
            } finally {
                sendLock.unlock()
            }

            try {
                while (localBuf.hasRemaining()) {
                    writeChannel.write(localBuf)
                }
            } catch (e: Exception) {
                onError?.invoke(e)
                running = false
                return
            }
        }
    }

    private fun readLoop() {
        try {
            clientVersion = Handshake.readHandshake(readChannel)
            val ourHandshake = Handshake.build(Protocol.HOST_VERSION)
            writeChannel.write(ByteBuffer.wrap(ourHandshake))
            hostVersion = clientVersion
            onReady?.invoke()

            val fragHeader = ByteArray(3)

            while (running) {
                timeoutTicks.set(Protocol.TIMEOUT_TICKS)
                readExact(readChannel, fragHeader, 0, 3)
                if (!running) break

                val streamId = fragHeader[0].toInt()
                val fragLen = (fragHeader[1].toInt() and 0xFF) or
                    ((fragHeader[2].toInt() and 0xFF) shl 8)

                if (streamId !in 0..1) {
                    if (fragLen > 0) {
                        val skip = ByteArray(fragLen)
                        readExact(readChannel, skip, 0, fragLen)
                    }
                    continue
                }

                val fragData = ByteArray(fragLen)
                readExact(readChannel, fragData, 0, fragLen)
                processFragment(streamId, fragData)
            }
        } catch (e: Exception) {
            if (running) onError?.invoke(e)
        } finally {
            running = false
        }
    }

    private fun processFragment(streamId: Int, data: ByteArray) {
        val buf = streamData[streamId]
        var writePos = streamWritePos[streamId]
        var msgLen = streamMsgLen[streamId]

        System.arraycopy(data, 0, buf, writePos, data.size)
        writePos += data.size

        while (true) {
            if (msgLen < 0) {
                if (writePos < 4) break
                msgLen = (buf[0].toInt() and 0xFF) or
                    ((buf[1].toInt() and 0xFF) shl 8) or
                    ((buf[2].toInt() and 0xFF) shl 16) or
                    ((buf[3].toInt() and 0xFF) shl 24)
            }

            if (writePos < 4 + msgLen) break

            val payload = ByteArray(msgLen)
            System.arraycopy(buf, 4, payload, 0, msgLen)

            val remaining = writePos - (4 + msgLen)
            if (remaining > 0) {
                System.arraycopy(buf, 4 + msgLen, buf, 0, remaining)
            }
            writePos = remaining
            msgLen = -1

            val dataType = DataType.fromId(payload[0]) ?: DataType.State
            val payloadBuf = ByteBuffer.wrap(payload, 1, payload.size - 1)
                .order(ByteOrder.LITTLE_ENDIAN)
            onData?.invoke(dataType, payloadBuf)
        }

        streamWritePos[streamId] = writePos
        streamMsgLen[streamId] = msgLen
    }

    companion object {
        fun readExact(channel: ScatteringByteChannel, buf: ByteArray, offset: Int, length: Int) {
            val nioBuf = ByteBuffer.wrap(buf, offset, length)
            while (nioBuf.hasRemaining()) {
                val n = channel.read(nioBuf)
                if (n < 0) throw java.io.EOFException("channel closed")
            }
        }
    }
}
