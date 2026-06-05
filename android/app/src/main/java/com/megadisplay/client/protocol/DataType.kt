package com.megadisplay.client.protocol

enum class DataType(val id: Byte) {
    State(0),
    Configure(1),
    Stop(2),
    Frame(3),
    FrameDone(4),
    PointerMove(5),
    PointerShape(6),
    TakeScreenshot(7),
    Touch(8),
    Pen(9),
    Unlock(10),
    Scale(11),
    InputConfig(12),
    InputKey(13),
    Error(14),
    Keyboard(15),
    Command(16);

    companion object {
        fun fromId(id: Byte): DataType? = entries.find { it.id == id }
    }
}

object Protocol {
    const val HANDSHAKE_BASE = "KELOCUBE_MIRR_"
    const val HANDSHAKE_VERSION_LENGTH = 3
    val SUPPORTED_HOST_VERSIONS = intArrayOf(4, 3)
    val HOST_VERSION: Int get() = SUPPORTED_HOST_VERSIONS[0]

    const val READ_BUFFER_CONTROL = 100_000
    const val READ_BUFFER_VIDEO = 10_000_000
    const val SEND_BUFFER_SIZE = 10_000

    const val TIMEOUT_TICKS = 10
    const val TIMEOUT_TICK_MS = 1000L

    const val STREAM_CONTROL: Byte = 0
    const val STREAM_VIDEO: Byte = 1

    const val PEN_FLAG_CONTACT = 0x01
    const val PEN_FLAG_HOVER = 0x02
    const val PEN_FLAG_BUTTON = 0x04

    const val TOUCH_KEEPALIVE_MS = 50L

    const val FLAG_SOFTWARE_ENCODING = 0x01
    const val OUT_RES_COPY_SOURCE = -1
    const val OUT_RES_SCALE_TO_SOURCE = -2

    const val ERROR_DRIVER: Byte = 0
    const val ERROR_LICENSE: Byte = 2
    const val ERROR_TRIAL_EXPIRED: Byte = 3
    const val ERROR_WARN_BAD_RESOLUTION: Byte = 4
    const val ERROR_GPU_DRIVER: Byte = 5
    const val ERROR_NO_ENCODER: Byte = 6
    const val ERROR_WARN_SOFTWARE_ENCODER: Byte = 7

    const val MS_DELAY_USB_CONNECT = 2000L
    const val MS_DELAY_USB_DISCONNECT = 500L
}
