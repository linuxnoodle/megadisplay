package com.kelocube.mirrorclient;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import io.sentry.Sentry;
import io.sentry.event.BreadcrumbBuilder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Diagnostics.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"SENTRY_DSN", "", "captureError", "", "e", "", "traceMessage", "tag", NotificationCompat.CATEGORY_MESSAGE, "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DiagnosticsKt {
    private static final String SENTRY_DSN = "https://5cf60100fc334b3bac984f96d9f6538e@o265553.ingest.sentry.io/1469104";

    public static final void captureError(Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Sentry.capture(e);
    }

    public static final void traceMessage(String tag, String msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(tag, msg);
        Sentry.getContext().recordBreadcrumb(new BreadcrumbBuilder().setMessage(tag + ": " + msg).build());
    }
}
