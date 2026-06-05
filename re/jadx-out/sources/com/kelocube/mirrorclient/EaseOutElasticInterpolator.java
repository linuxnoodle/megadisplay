package com.kelocube.mirrorclient;

import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: ActionMenu.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/kelocube/mirrorclient/EaseOutElasticInterpolator;", "Landroid/view/animation/Interpolator;", "()V", "getInterpolation", "", "x", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class EaseOutElasticInterpolator implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float x) {
        if (x == 0.0f) {
            return 0.0f;
        }
        if (x == 1.0f) {
            return 1.0f;
        }
        return (float) ((((double) ((float) Math.pow(2.0f, (-10.0f) * x))) * Math.sin((((double) (x * 10)) - 0.75d) * ((double) 2.0943952f))) + ((double) 1));
    }
}
