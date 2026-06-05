package com.megadisplay.client.protocol

import java.nio.ByteBuffer
import java.nio.ByteOrder

data class ConfigureResponse(
    val width: Int,
    val height: Int,
    val hostWidth: Int,
    val hostHeight: Int,
    val encoderId: Int,
) {
    companion object {
        fun decode(payload: ByteBuffer): ConfigureResponse {
            payload.order(ByteOrder.LITTLE_ENDIAN)
            return ConfigureResponse(
                width = payload.int,
                height = payload.int,
                hostWidth = payload.int,
                hostHeight = payload.int,
                encoderId = payload.int,
            )
        }
    }
}

object ConfigureRequestEncoder {
    fun encode(width: Int, height: Int): ByteArray {
        val nameBytes = "Android Client".toByteArray(Charsets.UTF_8)
        val buf = ByteBuffer.allocate(1 + nameBytes.size + 1 + 4 + 4 + 1).order(ByteOrder.LITTLE_ENDIAN)
        buf.put(DataType.Configure.id)
        buf.put(nameBytes)
        buf.put(0)
        buf.putInt(width)
        buf.putInt(height)
        buf.put(1) // tablet
        return buf.array()
    }
}

data class PointerMove(val x: Short, val y: Short) {
    companion object {
        fun decode(payload: ByteBuffer): PointerMove {
            payload.order(ByteOrder.LITTLE_ENDIAN)
            return PointerMove(payload.short, payload.short)
        }
    }
}

data class PointerShape(
    val width: Short,
    val height: Short,
    val hotX: Short,
    val hotY: Short,
    val rgba: ByteArray,
)

object PointerShapeDecoder {
    fun decode(payload: ByteBuffer): PointerShape {
        payload.order(ByteOrder.LITTLE_ENDIAN)
        val w = payload.short
        val h = payload.short
        val hotX = payload.short
        val hotY = payload.short
        val compressed = ByteArray(payload.remaining())
        payload.get(compressed)
        val decompressed = lz4Decompress(compressed, w.toInt() * h.toInt() * 4)
        return PointerShape(w, h, hotX, hotY, decompressed)
    }

    private fun lz4Decompress(data: ByteArray, expectedSize: Int): ByteArray {
        val decompressor = net.jpountz.lz4.LZ4Factory.fastestInstance().fastDecompressor()
        val out = ByteArray(expectedSize)
        decompressor.decompress(data, out)
        return out
    }
}

object TouchEncoder {
    fun encode(pointers: List<TouchPointer>): ByteArray {
        val buf = ByteBuffer.allocate(2 + pointers.size * 8)
            .order(ByteOrder.LITTLE_ENDIAN)
        buf.put(DataType.Touch.id)
        buf.put(pointers.size.toByte())
        for (p in pointers) {
            buf.put(p.id.toByte())
            buf.put(p.state.toByte())
            buf.putShort(p.x)
            buf.putShort(p.y)
            buf.putShort(p.size)
        }
        return buf.array().copyOfRange(0, buf.position())
    }
}

data class TouchPointer(
    val id: Int,
    val state: Int,
    val x: Short,
    val y: Short,
    val size: Short,
)

object PenEncoder {
    fun encode(pen: PenData): ByteArray {
        val buf = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN)
        buf.put(DataType.Pen.id)
        buf.put(pen.flags)
        buf.putShort(pen.x)
        buf.putShort(pen.y)
        buf.putShort(pen.pressure)
        buf.putShort(pen.orientation)
        buf.putShort(pen.tilt)
        return buf.array()
    }
}

data class PenData(
    val flags: Byte,
    val x: Short,
    val y: Short,
    val pressure: Short,
    val orientation: Short,
    val tilt: Short,
)

object KeyboardEncoder {
    fun encode(pressed: Boolean, keyCodeIndex: Int): ByteArray {
        val buf = ByteBuffer.allocate(6).order(ByteOrder.LITTLE_ENDIAN)
        buf.put(DataType.Keyboard.id)
        buf.put(if (pressed) 1.toByte() else 0.toByte())
        buf.putInt(keyCodeIndex)
        return buf.array()
    }
}

object Normalization {
    fun saturateToI16(v: Float): Short = (v.coerceIn(0f, 1f) * 32767f).toInt().toShort()
    fun penOrientation(axis: Float): Short = saturateToI16(axis / (2 * Math.PI).toFloat() + 0.5f)
    fun penTilt(axis: Float): Short = saturateToI16(axis / (Math.PI / 2).toFloat())
}
