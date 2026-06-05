package com.mikepenz.aboutlibraries.util;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MovementCheck.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\f"}, d2 = {"Lcom/mikepenz/aboutlibraries/util/MovementCheck;", "Landroid/text/method/LinkMovementMethod;", "()V", "onTouchEvent", "", "widget", "Landroid/widget/TextView;", "buffer", "Landroid/text/Spannable;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "Companion", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class MovementCheck extends LinkMovementMethod {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy instance$delegate = LazyKt.lazy(new Function0<MovementCheck>() { // from class: com.mikepenz.aboutlibraries.util.MovementCheck$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final MovementCheck invoke() {
            return new MovementCheck();
        }
    });

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(widget, "widget");
        Intrinsics.checkParameterIsNotNull(buffer, "buffer");
        Intrinsics.checkParameterIsNotNull(event, "event");
        try {
            return super.onTouchEvent(widget, buffer, event);
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: compiled from: MovementCheck.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mikepenz/aboutlibraries/util/MovementCheck$Companion;", "", "()V", "instance", "Lcom/mikepenz/aboutlibraries/util/MovementCheck;", "getInstance", "()Lcom/mikepenz/aboutlibraries/util/MovementCheck;", "instance$delegate", "Lkotlin/Lazy;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        public final MovementCheck getInstance() {
            Lazy lazy = MovementCheck.instance$delegate;
            Companion companion = MovementCheck.INSTANCE;
            return (MovementCheck) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
