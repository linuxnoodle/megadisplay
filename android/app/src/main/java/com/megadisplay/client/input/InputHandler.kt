package com.megadisplay.client.input

import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import android.view.MotionEvent
import android.view.View
import com.megadisplay.client.protocol.Normalization
import com.megadisplay.client.protocol.PenData
import com.megadisplay.client.protocol.Protocol
import com.megadisplay.client.protocol.TouchEncoder
import com.megadisplay.client.protocol.TouchPointer
import com.megadisplay.client.protocol.PenEncoder
import com.megadisplay.client.protocol.DataType
import com.megadisplay.client.transport.Transport
import java.nio.ByteBuffer
import java.nio.ByteOrder

class InputHandler(
    private val transport: Transport,
) : View.OnTouchListener, View.OnHoverListener {

    private val handler = Handler(Looper.getMainLooper())
    private var areaWidth: Int = 1
    private var areaHeight: Int = 1
    private var lastTouchData: ByteArray? = null
    private var lastTouchTime: Long = 0

    // Input latency tracking
    private var latencySampleSum: Long = 0L  // nanoseconds
    private var latencySampleCount: Int = 0
    private val LATENCY_REPORT_INTERVAL = 60

    private val touchKeepalive = object : Runnable {
        override fun run() {
            val data = lastTouchData ?: return
            val now = SystemClock.elapsedRealtime()
            if (now - lastTouchTime >= Protocol.TOUCH_KEEPALIVE_MS) {
                transport.send(data)
            }
            handler.postDelayed(this, Protocol.TOUCH_KEEPALIVE_MS)
        }
    }

    fun setArea(width: Int, height: Int) {
        areaWidth = width.coerceAtLeast(1)
        areaHeight = height.coerceAtLeast(1)
    }

    override fun onTouch(v: View, event: MotionEvent): Boolean {
        val t0 = System.nanoTime()
        val toolType = if (event.pointerCount > 0) event.getToolType(0) else MotionEvent.TOOL_TYPE_FINGER

        when (toolType) {
            MotionEvent.TOOL_TYPE_STYLUS, MotionEvent.TOOL_TYPE_ERASER -> {
                when (event.actionMasked) {
                    MotionEvent.ACTION_DOWN,
                    MotionEvent.ACTION_MOVE -> sendPen(event, contact = true, eraser = toolType == MotionEvent.TOOL_TYPE_ERASER)

                    MotionEvent.ACTION_UP,
                    MotionEvent.ACTION_CANCEL -> sendPen(event, contact = false, eraser = toolType == MotionEvent.TOOL_TYPE_ERASER)

                    MotionEvent.ACTION_POINTER_DOWN,
                    MotionEvent.ACTION_POINTER_UP -> sendPen(event, contact = true, eraser = toolType == MotionEvent.TOOL_TYPE_ERASER)
                }
            }
            else -> {
                when (event.actionMasked) {
                    MotionEvent.ACTION_DOWN -> {
                        sendTouch(event, forceUp = false)
                        startKeepalive()
                    }
                    MotionEvent.ACTION_MOVE -> sendTouch(event, forceUp = false)
                    MotionEvent.ACTION_UP -> {
                        sendTouch(event, forceUp = true)
                        stopKeepalive()
                    }
                    MotionEvent.ACTION_CANCEL -> {
                        sendTouch(event, forceUp = true)
                        stopKeepalive()
                    }
                    MotionEvent.ACTION_POINTER_DOWN,
                    MotionEvent.ACTION_POINTER_UP -> sendTouch(event, forceUp = false)
                }
            }
        }
        recordLatency(t0)
        return true
    }

    override fun onHover(v: View, event: MotionEvent): Boolean {
        val t0 = System.nanoTime()
        val toolType = if (event.pointerCount > 0) event.getToolType(0) else MotionEvent.TOOL_TYPE_FINGER
        when (toolType) {
            MotionEvent.TOOL_TYPE_STYLUS, MotionEvent.TOOL_TYPE_ERASER -> {
                sendPen(event, contact = false, eraser = toolType == MotionEvent.TOOL_TYPE_ERASER)
            }
            else -> { }
        }
        recordLatency(t0)
        return true
    }

    private fun recordLatency(startNs: Long) {
        val elapsed = System.nanoTime() - startNs
        latencySampleSum += elapsed
        latencySampleCount++
        if (latencySampleCount >= LATENCY_REPORT_INTERVAL) {
            sendLatencyReport()
        }
    }

    private fun sendLatencyReport() {
        if (latencySampleCount == 0) return
        val avgMs = (latencySampleSum.toDouble() / latencySampleCount / 1_000_000.0).toFloat()
        val count = latencySampleCount
        latencySampleSum = 0L
        latencySampleCount = 0

        val buf = ByteBuffer.allocate(5).order(ByteOrder.LITTLE_ENDIAN)
        buf.put(DataType.LatencyReport.id)
        buf.putFloat(avgMs)
        // count sent implicitly via the report frequency
        try {
            transport.send(buf.array())
        } catch (e: Exception) {
            Log.w(TAG, "Failed to send latency report", e)
        }
        Log.d(TAG, "Latency report: avg=${"%.2f".format(avgMs)}ms over $count events")
    }

    private fun sendTouch(event: MotionEvent, forceUp: Boolean) {
        val count = event.pointerCount
        val historySize = event.historySize

        for (h in 0 until historySize) {
            val pointers = mutableListOf<TouchPointer>()
            for (i in 0 until count) {
                val id = event.getPointerId(i)
                val x = event.getHistoricalX(i, h)
                val y = event.getHistoricalY(i, h)
                val size = event.getHistoricalSize(i, h)
                val state = if (forceUp || i == event.actionIndex && event.actionMasked == MotionEvent.ACTION_POINTER_UP) 0 else 1
                pointers.add(
                    TouchPointer(
                        id = id,
                        state = state,
                        x = Normalization.saturateToI16(x / areaWidth),
                        y = Normalization.saturateToI16(y / areaHeight),
                        size = Normalization.saturateToI16(size),
                    ),
                )
            }
            val data = TouchEncoder.encode(pointers)
            transport.send(data)
        }

        val pointers = mutableListOf<TouchPointer>()
        for (i in 0 until count) {
            val id = event.getPointerId(i)
            val x = event.getX(i)
            val y = event.getY(i)
            val size = event.getSize(i)
            val state = if (forceUp || i == event.actionIndex && event.actionMasked == MotionEvent.ACTION_POINTER_UP) 0 else 1
            pointers.add(
                TouchPointer(
                    id = id,
                    state = state,
                    x = Normalization.saturateToI16(x / areaWidth),
                    y = Normalization.saturateToI16(y / areaHeight),
                    size = Normalization.saturateToI16(size),
                ),
            )
        }
        val data = TouchEncoder.encode(pointers)
        transport.send(data)
        lastTouchData = data
        lastTouchTime = SystemClock.elapsedRealtime()
    }

    private fun sendPen(event: MotionEvent, contact: Boolean, eraser: Boolean) {
        var flags = 0
        if (contact) flags = flags or Protocol.PEN_FLAG_CONTACT
        if (!contact) flags = flags or Protocol.PEN_FLAG_HOVER
        if (eraser) flags = flags or Protocol.PEN_FLAG_ERASER
        if (event.buttonState and MotionEvent.BUTTON_STYLUS_PRIMARY != 0) {
            flags = flags or Protocol.PEN_FLAG_BUTTON
        }

        val historySize = event.historySize
        for (h in 0 until historySize) {
            val hX = Normalization.saturateToI16(event.getHistoricalX(0, h) / areaWidth)
            val hY = Normalization.saturateToI16(event.getHistoricalY(0, h) / areaHeight)
            val hPressure = if (contact) Normalization.saturateToI16(event.getHistoricalPressure(0, h)) else 0
            val hOrientation = Normalization.penOrientation(event.getHistoricalAxisValue(MotionEvent.AXIS_ORIENTATION, 0, h))
            val hTilt = Normalization.penTilt(event.getHistoricalAxisValue(MotionEvent.AXIS_TILT, 0, h))
            
            val data = PenEncoder.encode(PenData(flags.toByte(), hX, hY, hPressure, hOrientation, hTilt))
            transport.send(data)
        }

        val x = Normalization.saturateToI16(event.x / areaWidth)
        val y = Normalization.saturateToI16(event.y / areaHeight)
        val pressure = if (contact) Normalization.saturateToI16(event.pressure) else 0
        val orientation = Normalization.penOrientation(event.getAxisValue(MotionEvent.AXIS_ORIENTATION))
        val tilt = Normalization.penTilt(event.getAxisValue(MotionEvent.AXIS_TILT))

        val data = PenEncoder.encode(PenData(flags.toByte(), x, y, pressure, orientation, tilt))
        transport.send(data)

        if (DEBUG) {
            Log.d(TAG, "pen: ${if (contact) "CONTACT" else "HOVER"} ${if (eraser) "ERASER" else "PEN"} " +
                "x=$x y=$y p=$pressure orient=$orientation tilt=$tilt flags=$flags hist=$historySize")
        }
    }

    private fun startKeepalive() {
        handler.postDelayed(touchKeepalive, Protocol.TOUCH_KEEPALIVE_MS)
    }

    private fun stopKeepalive() {
        handler.removeCallbacks(touchKeepalive)
        lastTouchData = null
    }

    companion object {
        private const val TAG = "InputHandler"
        private const val DEBUG = true
    }
}
