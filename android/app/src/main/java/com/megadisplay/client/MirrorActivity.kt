package com.megadisplay.client

import android.app.Activity
import android.hardware.usb.UsbAccessory
import android.hardware.usb.UsbManager
import android.os.Bundle
import android.util.Log
import android.view.View
import android.view.WindowManager
import android.widget.FrameLayout
import com.megadisplay.client.input.InputHandler
import com.megadisplay.client.protocol.ConfigureResponse
import com.megadisplay.client.protocol.PointerMove
import com.megadisplay.client.protocol.PointerShape
import com.megadisplay.client.transport.AoapTransport
import com.megadisplay.client.video.VideoDecoder
import com.megadisplay.client.video.VideoSurfaceView

class MirrorActivity : Activity(), MirrorClient.Callbacks {

    private var mirrorClient: MirrorClient? = null
    private var decoder: VideoDecoder? = null
    private lateinit var surfaceView: VideoSurfaceView
    private lateinit var inputHandler: InputHandler

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        window.addFlags(
            WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON or
                WindowManager.LayoutParams.FLAG_FULLSCREEN,
        )

        surfaceView = VideoSurfaceView(this)

        val root = FrameLayout(this).apply {
            addView(surfaceView, FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
            ))
        }
        setContentView(root)

        val accessory = intent.getParcelableExtra<UsbAccessory>(UsbManager.EXTRA_ACCESSORY)
        if (accessory == null) {
            Log.e(TAG, "No USB accessory in intent")
            finish()
            return
        }

        val usbManager = getSystemService(USB_SERVICE) as UsbManager
        val pfd = usbManager.openAccessory(accessory)
        if (pfd == null) {
            Log.e(TAG, "Failed to open accessory")
            finish()
            return
        }

        Log.i(TAG, "Opened accessory: ${accessory.model}")

        val transport = AoapTransport.fromParcelFileDescriptor(pfd)
        inputHandler = InputHandler(transport)
        decoder = VideoDecoder()

        surfaceView.viewTreeObserver.addOnGlobalLayoutListener {
            inputHandler.setArea(surfaceView.width, surfaceView.height)
        }

        surfaceView.setOnTouchListener(inputHandler)
        surfaceView.setOnHoverListener(inputHandler)

        mirrorClient = MirrorClient(transport, this)
        mirrorClient?.start()
    }

    override fun onDestroy() {
        super.onDestroy()
        mirrorClient?.stop()
        decoder?.stop()
    }

    override fun onConfigure(response: ConfigureResponse) {
        runOnUiThread {
            decoder?.start(surfaceView.surface!!, response.width, response.height)
        }
    }

    override fun onFrame(nalData: ByteArray) {
        decoder?.processInput(nalData)
    }

    override fun onPointerMove(move: PointerMove) {
        // TODO: render hardware cursor overlay
    }

    override fun onPointerShape(shape: PointerShape) {
        // TODO: update cursor bitmap
    }

    override fun onError(errorCode: Byte, fatal: Boolean) {
        Log.e(TAG, "Error from host: code=$errorCode fatal=$fatal")
        if (fatal) runOnUiThread { finish() }
    }

    override fun onDisconnect() {
        runOnUiThread { finish() }
    }

    companion object {
        private const val TAG = "MirrorActivity"
    }
}
