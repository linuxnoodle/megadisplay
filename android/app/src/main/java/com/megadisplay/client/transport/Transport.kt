package com.megadisplay.client.transport

import android.os.Trace
import android.util.Log
import com.megadisplay.client.protocol.DataType
import com.megadisplay.client.protocol.Handshake
import com.megadisplay.client.protocol.Protocol
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.ReadableByteChannel
import java.nio.channels.WritableByteChannel
import java.util.ArrayDeque
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.locks.ReentrantLock

abstract class Transport(
    private val readChannel: ReadableByteChannel,
    private val writeChannel: WritableByteChannel,
) {
    var onReady: (() -> Unit)? = null
    var onData: ((DataType, ByteBuffer) -> Unit)? = null
    var onError: ((Throwable) -> Unit)? = null

    @Volatile var running: Boolean = false; private set

    private val sendLock = ReentrantLock()
    private val sendCondition = sendLock.newCondition()
    private val sendQueue = ArrayDeque<ByteArray>()

    private val readBuffer = ByteBuffer.allocateDirect(65536)
    init {
        readBuffer.flip()
    }

    private fun readExact(buf: ByteArray, offset: Int, length: Int) {
        var read = 0
        while (read < length) {
            if (!readBuffer.hasRemaining()) {
                readBuffer.clear()
                val n = readChannel.read(readBuffer)
                if (n < 0) throw java.io.EOFException("channel closed")
                readBuffer.flip()
            }
            val toRead = minOf(length - read, readBuffer.remaining())
            readBuffer.get(buf, offset + read, toRead)
            read += toRead
        }
    }

    private val timeoutTicks = AtomicInteger(Protocol.TIMEOUT_TICKS)

    private val streamData = arrayOf(ByteArray(Protocol.READ_BUFFER_VIDEO), ByteArray(Protocol.READ_BUFFER_VIDEO))
    private val streamWritePos = intArrayOf(0, 0)
    private val streamMsgLen = intArrayOf(-1, -1)

    fun start() {
        running = true
        Thread({ readLoop() }, "transport-read").start()
        Thread({ sendLoop() }, "transport-send").start()
        Thread({ timeoutLoop() }, "transport-timeout").start()
    }

    private fun timeoutLoop() {
        while (running) {
            try {
                Thread.sleep(1000)
            } catch (e: InterruptedException) {
                break
            }
            if (!running) break
            if (timeoutTicks.decrementAndGet() <= 0) {
                Log.e("Transport", "Timeout ticks reached 0! Disconnecting.")
                onError?.invoke(java.io.IOException("Timeout waiting for keepalives"))
                running = false
                break
            }
        }
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
            sendQueue.addLast(data)
            sendCondition.signal()
        } finally {
            sendLock.unlock()
        }
    }

    private fun sendLoop() {
        while (running) {
            val batch = mutableListOf<ByteArray>()
            sendLock.lock()
            try {
                while (sendQueue.isEmpty() && running) {
                    sendCondition.await()
                }
                if (!running) break
                // Drain everything currently queued into one write
                while (!sendQueue.isEmpty()) {
                    batch.add(sendQueue.removeFirst())
                }
            } finally {
                sendLock.unlock()
            }

            try {
                val totalSize = batch.sumOf { 4 + it.size }
                val framed = ByteBuffer.allocate(totalSize).order(ByteOrder.LITTLE_ENDIAN)
                for (pkt in batch) {
                    framed.putInt(pkt.size)
                    framed.put(pkt)
                }
                framed.flip()
                while (framed.hasRemaining()) {
                    writeChannel.write(framed)
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
            Handshake.readHandshake(readChannel)
            val ourHandshake = Handshake.build(Protocol.HOST_VERSION)
            val hsBuf = ByteBuffer.wrap(ourHandshake)
            while (hsBuf.hasRemaining()) {
                writeChannel.write(hsBuf)
            }
            onReady?.invoke()

            val fragHeader = ByteArray(3)

            while (running) {
                timeoutTicks.set(Protocol.TIMEOUT_TICKS)
                Trace.beginSection("USB Read Wait Header")
                readExact(fragHeader, 0, 3)
                Trace.endSection()
                if (!running) break

                val streamId = fragHeader[0].toInt()
                val fragLen = (fragHeader[1].toInt() and 0xFF) or
                    ((fragHeader[2].toInt() and 0xFF) shl 8)

                if (streamId !in 0..1) {
                    if (fragLen > 0) {
                        val skip = ByteArray(fragLen)
                        Trace.beginSection("USB Read Wait Skip")
                        readExact(skip, 0, fragLen)
                        Trace.endSection()
                    }
                    continue
                }

                val fragData = ByteArray(fragLen)
                Trace.beginSection("USB Read Wait Data")
                readExact(fragData, 0, fragLen)
                Trace.endSection()

                Trace.beginSection("USB Process Fragment")
                processFragment(streamId, fragData)
                Trace.endSection()
            }
        } catch (e: Exception) {
            Log.e("Transport", "readLoop exception", e)
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

            if (writePos < 4 + msgLen) {
                break
            }

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
            try {
                onData?.invoke(dataType, payloadBuf)
            } catch (e: Exception) {
                Log.e("Transport", "Error in onData for $dataType", e)
            }
        }

        streamWritePos[streamId] = writePos
        streamMsgLen[streamId] = msgLen
    }
}
