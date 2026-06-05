package com.megadisplay.client

import android.util.Log
import com.megadisplay.client.protocol.ConfigureResponse
import com.megadisplay.client.protocol.DataType
import com.megadisplay.client.protocol.PointerMove
import com.megadisplay.client.protocol.PointerShapeDecoder
import com.megadisplay.client.transport.Transport
import java.nio.ByteBuffer

class MirrorClient(
    private val transport: Transport,
    private val callbacks: Callbacks,
) {
    interface Callbacks {
        fun onConfigure(response: ConfigureResponse)
        fun onFrame(nalData: ByteArray)
        fun onPointerMove(move: PointerMove)
        fun onPointerShape(shape: com.megadisplay.client.protocol.PointerShape)
        fun onError(errorCode: Byte, fatal: Boolean)
        fun onDisconnect()
    }

    init {
        transport.onData = ::onData
        transport.onError = ::onError
        transport.onReady = ::onReady
    }

    fun start() {
        Log.i(TAG, "Starting transport")
        transport.start()
    }

    fun stop() {
        Log.i(TAG, "Stopping transport")
        transport.stop()
        callbacks.onDisconnect()
    }

    private fun onReady() {
        Log.i(TAG, "Transport ready")
    }

    private fun onData(type: DataType, payload: ByteBuffer) {
        when (type) {
            DataType.Configure -> {
                val resp = ConfigureResponse.decode(payload)
                Log.i(TAG, "Configure: ${resp.width}x${resp.height} host=${resp.hostWidth}x${resp.hostHeight}")
                callbacks.onConfigure(resp)
            }
            DataType.Frame -> {
                payload.position(1)
                val nalData = ByteArray(payload.remaining())
                payload.get(nalData)
                callbacks.onFrame(nalData)
            }
            DataType.PointerMove -> {
                callbacks.onPointerMove(PointerMove.decode(payload))
            }
            DataType.PointerShape -> {
                try {
                    callbacks.onPointerShape(PointerShapeDecoder.decode(payload))
                } catch (e: Exception) {
                    Log.w(TAG, "Failed to decode pointer shape", e)
                }
            }
            DataType.Error -> {
                val code = if (payload.hasRemaining()) payload.get() else 0
                val fatal = code != ProtocolConstants.ERROR_WARN_BAD_RESOLUTION &&
                    code != ProtocolConstants.ERROR_WARN_SOFTWARE_ENCODER
                callbacks.onError(code, fatal)
            }
            DataType.State -> { /* keepalive */ }
            else -> Log.d(TAG, "Unhandled DataType: $type")
        }
    }

    private fun onError(error: Throwable) {
        Log.e(TAG, "Transport error", error)
        callbacks.onDisconnect()
    }

    companion object {
        private const val TAG = "MirrorClient"
    }
}

private object ProtocolConstants {
    const val ERROR_WARN_BAD_RESOLUTION: Byte = 4
    const val ERROR_WARN_SOFTWARE_ENCODER: Byte = 7
}
