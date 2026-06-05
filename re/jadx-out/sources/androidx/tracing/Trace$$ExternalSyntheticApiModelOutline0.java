package androidx.tracing;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.res.loader.ResourcesLoader;
import android.graphics.drawable.ColorStateListDrawable;
import android.media.session.MediaSessionManager;
import android.view.autofill.AutofillManager;
import dalvik.system.DelegateLastClassLoader;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Trace$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ Notification.DecoratedMediaCustomViewStyle m() {
        return new Notification.DecoratedMediaCustomViewStyle();
    }

    public static /* synthetic */ NotificationChannel m(String str, CharSequence charSequence, int i) {
        return new NotificationChannel(str, charSequence, i);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ ResourcesLoader m179m() {
        return new ResourcesLoader();
    }

    public static /* bridge */ /* synthetic */ ColorStateListDrawable m(Object obj) {
        return (ColorStateListDrawable) obj;
    }

    public static /* synthetic */ MediaSessionManager.RemoteUserInfo m(String str, int i, int i2) {
        return new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ AutofillManager m184m(Object obj) {
        return (AutofillManager) obj;
    }

    public static /* synthetic */ DelegateLastClassLoader m(String str, ClassLoader classLoader) {
        return new DelegateLastClassLoader(str, classLoader);
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ Class m186m() {
        return AutofillManager.class;
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m191m() {
    }

    /* JADX INFO: renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ boolean m194m(Object obj) {
        return obj instanceof ColorStateListDrawable;
    }

    public static /* synthetic */ void m$1() {
    }
}
