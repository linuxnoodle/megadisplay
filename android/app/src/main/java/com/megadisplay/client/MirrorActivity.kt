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
import android.view.Surface
import com.megadisplay.client.transport.AoapTransport
import com.megadisplay.client.video.VideoDecoder
import com.megadisplay.client.video.FsrSurfaceView

import android.view.MotionEvent

class MirrorActivity : Activity(), MirrorClient.Callbacks {

    private var mirrorClient: MirrorClient? = null
    private var decoder: VideoDecoder? = null
    private lateinit var fsrView: FsrSurfaceView
    private var inputHandler: InputHandler? = null
    private var overlayView: View? = null

    private var configureResponse: ConfigureResponse? = null
    private var activeSurface: Surface? = null
    private lateinit var loadingText: android.widget.TextView
    private var usbReceiverRegistered = false

    @Volatile private var isDestroyed = false
    @Volatile private var isPaused = false
    private var reconnectThread: Thread? = null
    private val reconnectLock = Object()

    private var currentAccessory: UsbAccessory? = null
    private var isTcp = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)

        fsrView = FsrSurfaceView(this)
        fsrView.setOnSurfaceReadyListener { surface ->
            activeSurface = surface
            tryStartDecoder()
        }

        loadingText = android.widget.TextView(this).apply {
            text = "Waiting for video stream..."
            textSize = 24f
            setTextColor(android.graphics.Color.WHITE)
            gravity = android.view.Gravity.CENTER
            layoutParams = FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
            )
        }

        val root = FrameLayout(this).apply {
            setBackgroundColor(android.graphics.Color.BLACK)
            addView(fsrView, FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT,
            ))
            addView(loadingText)
        }
        setContentView(root)

        overlayView = View(this).apply {
            setWillNotDraw(true)
            isClickable = false
            isFocusable = false
        }
        root.addView(overlayView, FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT,
        ))

        isTcp = intent.getBooleanExtra("IS_TCP", false)

        if (isTcp) {
            Log.i(TAG, "Connecting via TCP to 127.0.0.1:8000")
            Thread {
                try {
                    val address = java.net.InetSocketAddress("127.0.0.1", 8000)
                    val channel = java.nio.channels.SocketChannel.open(address)
                    channel.socket().tcpNoDelay = true
                    val transport = com.megadisplay.client.transport.TcpTransport(channel)
                    runOnUiThread {
                        initMirrorClient(transport)
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "TCP connect failed", e)
                    runOnUiThread { finish() }
                }
            }.start()
        } else {
            val usbManager = getSystemService(USB_SERVICE) as UsbManager
            var accessory = intent.getUsbAccessory(UsbManager.EXTRA_ACCESSORY)
            if (accessory == null) {
                Log.w(TAG, "No USB accessory in intent, checking accessoryList...")
                val list = usbManager.accessoryList
                Log.w(TAG, "accessoryList is ${if (list == null) "null" else "size ${list.size}"}")
                accessory = list?.firstOrNull()
            }

            if (accessory == null) {
                Log.e(TAG, "No USB accessory found at all!")
                finish()
                return
            }

            currentAccessory = accessory
            Log.i(TAG, "Found accessory: ${accessory.model}, hasPermission=${usbManager.hasPermission(accessory)}")

            try {
                val pfd = usbManager.openAccessory(accessory)
                if (pfd == null) {
                    Log.e(TAG, "Failed to open accessory (pfd is null)")
                    finish()
                    return
                }

                Log.i(TAG, "Opened accessory successfully!")
                val transport = AoapTransport.fromParcelFileDescriptor(pfd)
                initMirrorClient(transport)
            } catch (e: Exception) {
                Log.e(TAG, "Exception opening accessory", e)
            }
        }

        if (!isTcp) {
            usbReceiverRegistered = true
            val filter = android.content.IntentFilter(UsbManager.ACTION_USB_ACCESSORY_DETACHED)
            registerReceiver(usbReceiver, filter)
        }
    }

    private fun initMirrorClient(transport: com.megadisplay.client.transport.Transport) {
        // Clean up previous client if any
        mirrorClient?.stop()
        decoder?.stop()

        val handler = InputHandler(transport)
        inputHandler = handler
        decoder = VideoDecoder()

        fsrView.viewTreeObserver.addOnGlobalLayoutListener {
            handler.setArea(fsrView.width, fsrView.height)
        }

        mirrorClient = MirrorClient(transport, this)
        mirrorClient?.start()

        // If we already have a surface and config, restart decoder
        if (isPaused) {
            decoder?.pause()
        }
        tryStartDecoder()
    }

    override fun dispatchTouchEvent(ev: MotionEvent): Boolean {
        val handler = inputHandler
        if (handler != null) {
            val tool = if (ev.pointerCount > 0) ev.getToolType(0) else MotionEvent.TOOL_TYPE_FINGER
            if (tool == MotionEvent.TOOL_TYPE_STYLUS || tool == MotionEvent.TOOL_TYPE_ERASER) {
                Log.d(TAG, "dispatchTouchEvent: tool=$tool action=${ev.actionMasked} x=${ev.x} y=${ev.y}")
            }
            handler.onTouch(overlayView ?: fsrView, ev)
        }
        return super.dispatchTouchEvent(ev)
    }

    override fun dispatchGenericMotionEvent(ev: MotionEvent): Boolean {
        val handler = inputHandler
        if (handler != null) {
            val tool = if (ev.pointerCount > 0) ev.getToolType(0) else MotionEvent.TOOL_TYPE_FINGER
            if (tool == MotionEvent.TOOL_TYPE_STYLUS || tool == MotionEvent.TOOL_TYPE_ERASER) {
                Log.d(TAG, "dispatchGenericMotion: tool=$tool action=${ev.actionMasked} x=${ev.x} y=${ev.y}")
                when (ev.actionMasked) {
                    MotionEvent.ACTION_HOVER_MOVE -> handler.onHover(overlayView ?: fsrView, ev)
                    MotionEvent.ACTION_HOVER_ENTER, MotionEvent.ACTION_HOVER_EXIT -> handler.onHover(overlayView ?: fsrView, ev)
                    else -> handler.onTouch(overlayView ?: fsrView, ev)
                }
                return true
            }
        }
        return super.dispatchGenericMotionEvent(ev)
    }

    private val usbReceiver = object : android.content.BroadcastReceiver() {
        override fun onReceive(context: android.content.Context, intent: android.content.Intent) {
            val action = intent.action
            if (UsbManager.ACTION_USB_ACCESSORY_DETACHED == action) {
                Log.i(TAG, "USB accessory detached, ending session")
                finish()
            }
        }
    }

    override fun onDestroy() {
        isDestroyed = true
        super.onDestroy()
        if (usbReceiverRegistered) {
            unregisterReceiver(usbReceiver)
        }
        mirrorClient?.stop()
        decoder?.stop()
    }

    override fun onPause() {
        super.onPause()
        isPaused = true
        Log.i(TAG, "onPause — pausing decoder")
        decoder?.pause()
        fsrView.onPause()
    }

    override fun onResume() {
        super.onResume()
        isPaused = false
        Log.i(TAG, "onResume — resuming decoder")
        fsrView.onResume()
        decoder?.resume()
    }

    override fun onConfigure(response: ConfigureResponse) {
        runOnUiThread {
            configureResponse = response
            tryStartDecoder()
        }
    }

    private fun tryStartDecoder() {
        val surface = activeSurface
        val config = configureResponse
        if (surface != null && config != null) {
            Log.i(TAG, "Starting decoder: ${config.width}x${config.height}")
            fsrView.setEncodeSize(config.width, config.height)
            decoder?.start(surface, config.width, config.height)
        }
    }

    override fun onFrame(nalData: ByteArray) {
        runOnUiThread {
            if (loadingText.visibility != View.GONE && !isPaused) {
                loadingText.visibility = View.GONE
            }
        }
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
        if (isDestroyed) return

        Log.i(TAG, "onDisconnect — attempting reconnection")

        runOnUiThread {
            loadingText.text = "Reconnecting..."
            loadingText.visibility = View.VISIBLE
        }

        // Clean up current connection
        mirrorClient?.stop()

        // Try to reconnect
        startReconnection()
    }

    private fun startReconnection() {
        synchronized(reconnectLock) {
            if (reconnectThread != null && reconnectThread!!.isAlive) {
                Log.d(TAG, "Reconnection already in progress")
                return
            }

            reconnectThread = Thread({
                Log.i(TAG, "Reconnection thread started")
                while (!isDestroyed && !Thread.currentThread().isInterrupted) {
                    try {
                        Thread.sleep(1000)
                    } catch (e: InterruptedException) {
                        break
                    }
                    if (isDestroyed) break

                    if (isTcp) {
                        // TCP reconnection
                        try {
                            val address = java.net.InetSocketAddress("127.0.0.1", 8000)
                            val channel = java.nio.channels.SocketChannel.open(address)
                            channel.socket().tcpNoDelay = true
                            val transport = com.megadisplay.client.transport.TcpTransport(channel)
                            Log.i(TAG, "TCP reconnected!")
                            runOnUiThread {
                                loadingText.text = "Waiting for video stream..."
                                initMirrorClient(transport)
                            }
                            break
                        } catch (e: Exception) {
                            Log.d(TAG, "TCP reconnect failed: ${e.message}")
                        }
                    } else {
                        // USB accessory reconnection
                        try {
                            val usbManager = getSystemService(USB_SERVICE) as UsbManager
                            val accessory = usbManager.accessoryList?.firstOrNull()
                            if (accessory != null && usbManager.hasPermission(accessory)) {
                                val pfd = usbManager.openAccessory(accessory)
                                if (pfd != null) {
                                    currentAccessory = accessory
                                    val transport = AoapTransport.fromParcelFileDescriptor(pfd)
                                    Log.i(TAG, "USB accessory reconnected!")
                                    runOnUiThread {
                                        loadingText.text = "Waiting for video stream..."
                                        initMirrorClient(transport)
                                    }
                                    break
                                }
                            }
                        } catch (e: Exception) {
                            Log.d(TAG, "USB reconnect attempt: ${e.message}")
                        }
                    }
                }
                Log.i(TAG, "Reconnection thread ending")
            }, "reconnect").also { it.start() }
        }
    }

    companion object {
        private const val TAG = "MirrorActivity"
    }
}
