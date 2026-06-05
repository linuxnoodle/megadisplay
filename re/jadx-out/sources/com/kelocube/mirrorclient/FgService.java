package com.kelocube.mirrorclient;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FgService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\b\u0010\u0014\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/kelocube/mirrorclient/FgService;", "Landroid/app/Service;", "()V", "mediaProjection", "Landroid/media/projection/MediaProjection;", "started", "", "createNotificationChannel", "", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onDestroy", "onStartCommand", "", "flags", "startId", "onTimeout", "fgServiceType", "showTimeoutNotification", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FgService extends Service {
    public static final String ACTION_DISCONNECT = "com.kelocube.mirrorclient.ACTION_DISCONNECT";
    public static final int BROADCAST_ID = 1;
    public static final String CHANNEL_ID = "FgServiceChannel";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static int running;
    private MediaProjection mediaProjection;
    private boolean started;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX INFO: compiled from: FgService.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\b\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/kelocube/mirrorclient/FgService$Companion;", "", "()V", "ACTION_DISCONNECT", "", "BROADCAST_ID", "", "CHANNEL_ID", "isRunning", "", "()Z", "running", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isRunning() {
            return FgService.running > 0;
        }
    }

    private final void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            FgService$$ExternalSyntheticApiModelOutline0.m();
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(FgService$$ExternalSyntheticApiModelOutline0.m(CHANNEL_ID, getString(R.string.service_channel_name), 3));
        }
        stopForeground(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Intent intent2;
        Intrinsics.checkNotNullParameter(intent, "intent");
        int intExtra = intent.getIntExtra("media_projection_result_code", 0);
        if (Build.VERSION.SDK_INT >= 33) {
            intent2 = (Intent) intent.getParcelableExtra("media_projection_result_data", Intent.class);
        } else {
            intent2 = (Intent) intent.getParcelableExtra("media_projection_result_data");
        }
        if (intExtra != -1 || intent2 == null) {
            Log.e("FgService", "Media projection permission not granted");
            stopSelf();
            return 2;
        }
        Object systemService = getSystemService("media_projection");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.projection.MediaProjectionManager");
        MediaProjection mediaProjection = ((MediaProjectionManager) systemService).getMediaProjection(intExtra, intent2);
        this.mediaProjection = mediaProjection;
        if (mediaProjection == null) {
            Log.e("FgService", "Failed to get media projection");
            stopSelf();
            return 2;
        }
        createNotificationChannel();
        FgService fgService = this;
        Notification notificationBuild = new NotificationCompat.Builder(fgService, CHANNEL_ID).setContentTitle(getString(R.string.service_running)).setContentText(getString(R.string.service_running_text)).setSmallIcon(R.drawable.ic_info_outline_32dp).setContentIntent(PendingIntent.getActivity(fgService, 0, new Intent(fgService, (Class<?>) MirrorActivity.class), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)).setColorized(true).setColor(ContextCompat.getColor(fgService, R.color.colorAccent)).addAction(new NotificationCompat.Action.Builder(0, getString(R.string.service_exit), PendingIntent.getBroadcast(fgService, 1, new Intent(), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL)).build()).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        if (Build.VERSION.SDK_INT >= 29) {
            startForeground(1, notificationBuild, 32);
        } else {
            startForeground(1, notificationBuild);
        }
        if (!this.started) {
            this.started = true;
            running++;
        }
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        running--;
    }

    public void onTimeout(int startId, int fgServiceType) {
        Log.w("FgService", "Foreground service timeout reached for startId: " + startId + ", type: " + fgServiceType);
        showTimeoutNotification();
        stopSelf(startId);
    }

    private final void showTimeoutNotification() {
        NotificationManager notificationManager;
        if (Build.VERSION.SDK_INT >= 23) {
            notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        } else {
            Object systemService = getSystemService("notification");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            notificationManager = (NotificationManager) systemService;
        }
        Notification notificationBuild = new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle(getString(R.string.service_timeout_title)).setContentText(getString(R.string.service_timeout_text)).setSmallIcon(R.drawable.ic_info_outline_32dp).setAutoCancel(true).setPriority(1).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        notificationManager.notify(2, notificationBuild);
    }
}
