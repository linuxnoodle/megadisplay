package com.maltaisn.icondialog;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IconLayoutManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u00060\nR\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/maltaisn/icondialog/IconLayoutManager;", "Landroidx/recyclerview/widget/GridLayoutManager;", "context", "Landroid/content/Context;", "iconSize", "", "(Landroid/content/Context;I)V", "onLayoutChildren", "", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class IconLayoutManager extends GridLayoutManager {
    private final int iconSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IconLayoutManager(Context context, int i) {
        super(context, -1, 1, false);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.iconSize = i;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkParameterIsNotNull(recycler, "recycler");
        Intrinsics.checkParameterIsNotNull(state, "state");
        if (getSpanCount() == -1 && this.iconSize > 0 && getWidth() > 0 && getHeight() > 0) {
            setSpanCount(Math.max(1, ((getWidth() - getPaddingRight()) - getPaddingLeft()) / this.iconSize));
        }
        super.onLayoutChildren(recycler, state);
    }
}
