package com.megadisplay.client.video

import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.os.Build
import android.os.Handler
import android.os.Looper
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
                if (!acceptBuffers) return
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
                if (!acceptBuffers) return
                codec.releaseOutputBuffer(index, System.nanoTime())
                onFrame?.invoke()
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
    }

    fun processInput(nalData: ByteArray) {
        if (!running) return

        val c = codec ?: return
        val index = waitForBuffer()
        if (index < 0) return

        val buf = c.getInputBuffer(index) ?: return
        buf.clear()
        buf.put(nalData)
        c.queueInputBuffer(index, 0, nalData.size, 0, 0)
    }

    private fun waitForBuffer(): Int {
        bufferLock.lock()
        try {
            while (acceptBuffers && availableBuffers.isEmpty()) {
                bufferCondition.await()
            }
            return availableBuffers.removeFirstOrNull() ?: -1
        } catch (e: InterruptedException) {
            return -1
        } finally {
            bufferLock.unlock()
        }
    }

    fun stop() {
        running = false
        acceptBuffers = false
        bufferLock.lock()
        try {
            bufferCondition.signalAll()
        } finally {
            bufferLock.unlock()
        }
        try {
            codec?.stop()
        } catch (e: Exception) {
            Log.w(TAG, "Error stopping codec", e)
        }
        try {
            codec?.release()
        } catch (e: Exception) {
            Log.w(TAG, "Error releasing codec", e)
        }
        codec = null
    }

    companion object {
        private const val TAG = "VideoDecoder"
    }
}
