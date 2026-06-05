package com.megadisplay.client

import android.app.Activity
import android.content.Intent
import android.hardware.usb.UsbAccessory
import android.hardware.usb.UsbManager
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.widget.LinearLayout
import android.widget.TextView

class MainActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val tv = TextView(this).apply {
            text = getString(R.string.status_disconnected)
            textSize = 20f
            gravity = android.view.Gravity.CENTER
        }

        val btnTcp = android.widget.Button(this).apply {
            text = "Connect TCP (Debug)"
            setOnClickListener {
                val mirrorIntent = Intent(this@MainActivity, MirrorActivity::class.java).apply {
                    putExtra("IS_TCP", true)
                }
                startActivity(mirrorIntent)
            }
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = android.view.Gravity.CENTER
            addView(tv)
            addView(btnTcp)
        }
        setContentView(root)

        checkForUsbAccessory(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        checkForUsbAccessory(intent)
    }

    private fun checkForUsbAccessory(intent: Intent?) {
        val accessory = intent?.getUsbAccessory(UsbManager.EXTRA_ACCESSORY)
        if (accessory != null) {
            Log.i(TAG, "USB accessory attached: ${accessory.model}")
            val mirrorIntent = Intent(this, MirrorActivity::class.java).apply {
                putExtra(UsbManager.EXTRA_ACCESSORY, accessory)
            }
            startActivity(mirrorIntent)
        }
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}

@Suppress("DEPRECATION")
fun android.content.Intent.getUsbAccessory(key: String): UsbAccessory? =
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
        getParcelableExtra(key, UsbAccessory::class.java)
    } else {
        getParcelableExtra(key)
    }
