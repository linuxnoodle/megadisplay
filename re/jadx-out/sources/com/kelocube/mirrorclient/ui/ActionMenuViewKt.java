package com.kelocube.mirrorclient.ui;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: ActionMenuView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"DRAG_THRESHOLD_SQUARED", "", "getDRAG_THRESHOLD_SQUARED", "()F", "MIN_EDGE_OFFSET", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActionMenuViewKt {
    private static final float DRAG_THRESHOLD_SQUARED = (float) Math.pow(30.0f, 2);
    public static final float MIN_EDGE_OFFSET = 50.0f;

    public static final float getDRAG_THRESHOLD_SQUARED() {
        return DRAG_THRESHOLD_SQUARED;
    }
}
