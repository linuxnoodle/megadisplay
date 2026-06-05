package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstantAutoCompleteView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014¨\u0006\u0013"}, d2 = {"Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;", "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;", "arg0", "Landroid/content/Context;", "(Landroid/content/Context;)V", "arg1", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "arg2", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "enoughToFilter", "", "onFocusChanged", "", "focused", "direction", "previouslyFocusedRect", "Landroid/graphics/Rect;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InstantAutoCompleteView extends AppCompatAutoCompleteTextView {
    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstantAutoCompleteView(Context arg0) {
        super(arg0);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstantAutoCompleteView(Context arg0, AttributeSet attributeSet) {
        super(arg0, attributeSet);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstantAutoCompleteView(Context arg0, AttributeSet attributeSet, int i) {
        super(arg0, attributeSet, i);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(focused, direction, previouslyFocusedRect);
        if (!focused || getAdapter() == null) {
            return;
        }
        performFiltering(getText(), 0);
    }
}
