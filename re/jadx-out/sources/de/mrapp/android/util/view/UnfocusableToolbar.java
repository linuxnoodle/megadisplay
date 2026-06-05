package de.mrapp.android.util.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes2.dex */
public class UnfocusableToolbar extends Toolbar {
    public UnfocusableToolbar(Context context) {
        super(context);
    }

    public UnfocusableToolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UnfocusableToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return isFocusable() && super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }
}
