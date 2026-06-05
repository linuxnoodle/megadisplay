package de.mrapp.android.util;

import android.os.Handler;
import android.os.Looper;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadUtil {
    private ThreadUtil() {
    }

    public static void runOnUiThread(Runnable runnable) {
        Condition.INSTANCE.ensureNotNull(runnable, "The runnable may not be null");
        new Handler(Looper.getMainLooper()).post(runnable);
    }
}
