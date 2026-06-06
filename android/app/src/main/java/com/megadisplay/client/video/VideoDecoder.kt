package com.megadisplay.client.video

import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.Trace
import android.util.Log
import android.view.Surface
import java.util.concurrent.locks.ReentrantLock

class VideoDecoder {
    private var codec: MediaCodec? = null
    private val handler = Handler(Looper.getMainLooper())
    private val bufferLock = ReentrantLock()
    private val bufferCondition = bufferLock.newCondition()
    private val availableBuffers = ArrayDeque<Int>()
    @Volatile private var running = false
    @Volatile private var acceptBuffers = false
    @Volatile private var paused = false

    var onFrame: (() -> Unit)? = null
    var onFormatChanged: ((Int, Int) -> Unit)? = null

    fun start(surface: Surface, width: Int, height: Int) {
        Log.i(TAG, "Starting decoder: ${width}x${height}")

        val format = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC, width, height)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            try {
                val c = codec ?: MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC)
                codec = c
                val caps = c.codecInfo
                    .getCapabilitiesForType(MediaFormat.MIMETYPE_VIDEO_AVC)
                    .videoCapabilities
                val maxRate = caps.supportedFrameRates.upper
                format.setInteger("operating-rate", maxRate.toInt())
            } catch (e: Exception) {
                Log.w(TAG, "Could not set operating rate", e)
            }
        }

        format.setInteger("max-input-size", 0)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                val c = codec ?: MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC)
                codec = c
                val supported = c.codecInfo
                    .getCapabilitiesForType(MediaFormat.MIMETYPE_VIDEO_AVC)
                    .isFeatureSupported(MediaCodecInfo.CodecCapabilities.FEATURE_LowLatency)
                if (supported) {
                    format.setFeatureEnabled(MediaCodecInfo.CodecCapabilities.FEATURE_LowLatency, true)
                    Log.i(TAG, "Low-latency mode enabled")
                }
            } catch (e: Exception) {
                Log.w(TAG, "Could not enable low-latency", e)
            }
        }

        val c = codec ?: run {
            codec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC)
            codec!!
        }

        c.setCallback(object : MediaCodec.Callback() {
            override fun onInputBufferAvailable(codec: MediaCodec, index: Int) {
                if (!acceptBuffers || paused) return
                bufferLock.lock()
                try {
                    availableBuffers.add(index)
                    bufferCondition.signal()
                } finally {
                    bufferLock.unlock()
                }
            }

            override fun onOutputBufferAvailable(
                codec: MediaCodec,
                index: Int,
                info: MediaCodec.BufferInfo,
            ) {
                // Always release the output buffer to prevent decoder stall.
                // When paused, drop the frame (don't render to Surface).
                Trace.beginSection("MediaCodec Dequeue")
                try {
                    codec.releaseOutputBuffer(index, !paused)
                } catch (e: Exception) {
                    Log.w(TAG, "Error releasing output buffer", e)
                }
                if (!paused && acceptBuffers) {
                    onFrame?.invoke()
                }
                Trace.endSection()
            }

            override fun onOutputFormatChanged(codec: MediaCodec, format: MediaFormat) {
                val w = format.getInteger("width")
                val h = format.getInteger("height")
                Log.i(TAG, "Output format changed: ${w}x${h}")
                onFormatChanged?.invoke(w, h)
            }

            override fun onError(codec: MediaCodec, e: MediaCodec.CodecException) {
                Log.e(TAG, "Decoder error", e)
            }
        }, handler)

        c.configure(format, surface, null, 0)
        c.start()
        running = true
        acceptBuffers = true
        paused = false
    }

    fun processInput(nalData: ByteArray) {
        if (!running || paused) return

        Trace.beginSection("MediaCodec Enqueue Wait")
        val c = codec ?: run { Trace.endSection(); return }
        val index = waitForBuffer()
        Trace.endSection()
        
        if (index < 0) return

        Trace.beginSection("MediaCodec Enqueue Data")
        val buf = c.getInputBuffer(index) ?: run { Trace.endSection(); return }
        buf.clear()
        buf.put(nalData)
        c.queueInputBuffer(index, 0, nalData.size, 0, 0)
        Trace.endSection()
    }

    /**
     * Wait for an input buffer with a 50ms timeout.
     * Returns -1 if no buffer available (frame should be dropped).
     * This prevents blocking the transport read thread.
     */
    private fun waitForBuffer(): Int {
        bufferLock.lock()
        try {
            val deadlineNanos = System.nanoTime() + 50_000_000L
            while (acceptBuffers && !paused && availableBuffers.isEmpty()) {
                val remaining = deadlineNanos - System.nanoTime()
                if (remaining <= 0) return -1
                bufferCondition.awaitNanos(remaining)
            }
            return availableBuffers.removeFirstOrNull() ?: -1
        } catch (e: InterruptedException) {
            return -1
        } finally {
            bufferLock.unlock()
        }
    }

    /**
     * Pause decoding — drops all incoming frames without blocking.
     * Output buffers are still released to prevent decoder stall.
     */
    fun pause() {
        Log.i(TAG, "Pausing decoder")
        paused = true
        bufferLock.lock()
        try {
            availableBuffers.clear()
            bufferCondition.signalAll()
        } finally {
            bufferLock.unlock()
        }
    }

    /**
     * Resume decoding after pause.
     */
    fun resume() {
        Log.i(TAG, "Resuming decoder")
        paused = false
    }

    fun stop() {
        running = false
        acceptBuffers = false
        paused = true
        bufferLock.lock()
        try {
            bufferCondition.signalAll()
        } finally {
            bufferLock.unlock()
        }
        
        val c = codec
        codec = null
        if (c != null) {
            Thread {
                try {
                    c.stop()
                } catch (e: Exception) {
                    Log.w(TAG, "Error stopping codec", e)
                }
                try {
                    c.release()
                } catch (e: Exception) {
                    Log.w(TAG, "Error releasing codec", e)
                }
            }.start()
        }
    }

    companion object {
        private const val TAG = "VideoDecoder"
    }
}
