package com.megadisplay.client.transport

import android.os.ParcelFileDescriptor
import android.util.Log
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.channels.Channels

class AoapTransport private constructor(
    pfd: ParcelFileDescriptor,
) : Transport(
    Channels.newChannel(FileInputStream(pfd.fileDescriptor)),
    Channels.newChannel(FileOutputStream(pfd.fileDescriptor)),
) {
    private val pfd: ParcelFileDescriptor = pfd

    override fun doClose() {
        try {
            pfd.close()
        } catch (e: Exception) {
            Log.w(TAG, "Error closing PFD", e)
        }
    }

    companion object {
        private const val TAG = "AoapTransport"

        fun fromParcelFileDescriptor(pfd: ParcelFileDescriptor): AoapTransport {
            return AoapTransport(pfd)
        }
    }
}
