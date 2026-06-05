package de.mrapp.android.dialog.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.model.MaterialDialog;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPager extends androidx.viewpager.widget.ViewPager {
    private MaterialDialog dialog;
    private boolean swipeEnabled;

    public ViewPager(Context context) {
        super(context);
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void setDialog(MaterialDialog materialDialog) {
        Condition.INSTANCE.ensureNotNull(materialDialog, "The dialog may not be null");
        this.dialog = materialDialog;
    }

    public final boolean isSwipeEnabled() {
        return this.swipeEnabled;
    }

    public final void enableSwipe(boolean z) {
        this.swipeEnabled = z;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return isSwipeEnabled() && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (isSwipeEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return false;
        }
        performClick();
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        return super.performClick();
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onMeasure(int i, int i2) {
        MaterialDialog materialDialog = this.dialog;
        if (materialDialog != null && materialDialog.getScrollableArea().isScrollable(ScrollableArea.Area.CONTENT)) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.dialog.getScrollView().getMeasuredHeight(), BasicMeasure.EXACTLY));
        } else {
            super.onMeasure(i, i2);
        }
    }
}
