package com.megadisplay.client

import android.app.Notification
import android.app.Service
import android.content.Intent
import android.os.IBinder

class MirrorService : Service() {
    override fun onCreate() {
        super.onCreate()
        startForeground(NOTIFICATION_ID, createNotification())
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    private fun createNotification(): Notification {
        return Notification.Builder(this, MegaApp.CHANNEL_ID)
            .setContentTitle(getString(R.string.mirror_notification_title))
            .setContentText(getString(R.string.mirror_notification_text))
            .setSmallIcon(android.R.drawable.ic_dialog_info)
            .setOngoing(true)
            .build()
    }

    companion object {
        private const val NOTIFICATION_ID = 1
    }
}
