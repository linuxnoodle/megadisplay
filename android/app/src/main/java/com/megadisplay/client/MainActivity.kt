package com.megadisplay.client

import android.app.Activity
import android.content.Intent
import android.hardware.usb.UsbAccessory
import android.hardware.usb.UsbManager
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

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = android.view.Gravity.CENTER
            addView(tv)
        }
        setContentView(root)

        checkForUsbAccessory(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        checkForUsbAccessory(intent)
    }

    private fun checkForUsbAccessory(intent: Intent?) {
        val accessory = intent?.getParcelableExtra<UsbAccessory>(UsbManager.EXTRA_ACCESSORY)
        if (accessory != null) {
            Log.i(TAG, "USB accessory attached: ${accessory.model}")
            val mirrorIntent = Intent(this, MirrorActivity::class.java).apply {
                putExtra(UsbManager.EXTRA_ACCESSORY, accessory)
            }
            startActivity(mirrorIntent)
            finish()
        }
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}
