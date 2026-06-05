package de.mrapp.android.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewUtil {
    private ViewUtil() {
    }

    public static void setBackground(View view, Drawable drawable) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        view.setBackground(drawable);
    }

    public static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        Condition.INSTANCE.ensureNotNull(viewTreeObserver, "The view tree observer may not be null");
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static void removeFromParent(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }
}
