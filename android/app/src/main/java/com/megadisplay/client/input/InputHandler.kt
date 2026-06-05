package com.megadisplay.client.input

import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.view.MotionEvent
import android.view.View
import com.megadisplay.client.protocol.DataType
import com.megadisplay.client.protocol.Normalization
import com.megadisplay.client.protocol.PenData
import com.megadisplay.client.protocol.Protocol
import com.megadisplay.client.protocol.TouchEncoder
import com.megadisplay.client.protocol.TouchPointer
import com.megadisplay.client.protocol.PenEncoder
import com.megadisplay.client.protocol.KeyboardEncoder
import com.megadisplay.client.transport.Transport
import kotlin.math.PI

class InputHandler(
    private val transport: Transport,
) : View.OnTouchListener, View.OnHoverListener {

    private val handler = Handler(Looper.getMainLooper())
    private var areaWidth: Int = 1
    private var areaHeight: Int = 1
    private var lastTouchData: ByteArray? = null
    private var lastTouchTime: Long = 0

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
        return true
    }

    override fun onHover(v: View, event: MotionEvent): Boolean {
        sendPen(event)
        return true
    }

    private fun sendTouch(event: MotionEvent, forceUp: Boolean) {
        val count = event.pointerCount
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

    fun sendPen(event: MotionEvent) {
        val x = Normalization.saturateToI16(event.x / areaWidth)
        val y = Normalization.saturateToI16(event.y / areaHeight)
        val pressure = Normalization.saturateToI16(event.pressure)
        val orientation = Normalization.penOrientation(event.getAxisValue(MotionEvent.AXIS_ORIENTATION))
        val tilt = Normalization.penTilt(event.getAxisValue(MotionEvent.AXIS_TILT))

        var flags = 0
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_MOVE -> flags = flags or Protocol.PEN_FLAG_CONTACT
            MotionEvent.ACTION_HOVER_ENTER, MotionEvent.ACTION_HOVER_MOVE -> flags = flags or Protocol.PEN_FLAG_HOVER
            MotionEvent.ACTION_BUTTON_PRESS -> flags = flags or Protocol.PEN_FLAG_BUTTON
        }
        if (event.buttonState and MotionEvent.BUTTON_STYLUS_PRIMARY != 0) {
            flags = flags or Protocol.PEN_FLAG_BUTTON
        }

        val data = PenEncoder.encode(PenData(flags.toByte(), x, y, pressure, orientation, tilt))
        transport.send(data)
    }

    fun sendKeyboard(pressed: Boolean, keyCodeIndex: Int) {
        transport.send(KeyboardEncoder.encode(pressed, keyCodeIndex))
    }

    private fun startKeepalive() {
        handler.postDelayed(touchKeepalive, Protocol.TOUCH_KEEPALIVE_MS)
    }

    private fun stopKeepalive() {
        handler.removeCallbacks(touchKeepalive)
        lastTouchData = null
    }
}
