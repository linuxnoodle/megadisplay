package com.maltaisn.icondialog;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StickyHeaderDecoration.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/maltaisn/icondialog/StickyHeaderDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "callback", "Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;", "stickyHeaderViewType", "", "(Landroidx/recyclerview/widget/RecyclerView;Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;I)V", "headerViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "stickyHeaderHeight", "getChildInContact", "Landroid/view/View;", "with", "onDrawOver", "", "canvas", "Landroid/graphics/Canvas;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "onInterceptTouchEvent", "", "recyclerView", "motionEvent", "Landroid/view/MotionEvent;", "onRequestDisallowInterceptTouchEvent", "disallowIntercept", "onTouchEvent", "setHeaderViewHolder", "position", "Callback", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class StickyHeaderDecoration extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    private final Callback callback;
    private RecyclerView.ViewHolder headerViewHolder;
    private int stickyHeaderHeight;
    private final int stickyHeaderViewType;

    /* JADX INFO: compiled from: StickyHeaderDecoration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H&¨\u0006\u000f"}, d2 = {"Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;", "", "getHeaderPositionForItem", "", "pos", "isHeader", "", "onBindViewHolder", "", "holder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface Callback {
        int getHeaderPositionForItem(int pos);

        boolean isHeader(int pos);

        void onBindViewHolder(RecyclerView.ViewHolder holder, int pos);

        RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
    }

    public StickyHeaderDecoration(RecyclerView parent, Callback callback, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        this.callback = callback;
        this.stickyHeaderViewType = i;
        this.stickyHeaderHeight = -1;
        parent.addOnItemTouchListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView parent, RecyclerView.State state) {
        int childAdapterPosition;
        RecyclerView.ViewHolder headerViewHolder;
        int childAdapterPosition2;
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(state, "state");
        super.onDrawOver(canvas, parent, state);
        View childAt = parent.getChildAt(0);
        if (childAt == null || (childAdapterPosition = parent.getChildAdapterPosition(childAt)) == -1 || (headerViewHolder = setHeaderViewHolder(childAdapterPosition, parent)) == null) {
            return;
        }
        View view = headerViewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "viewHolder.itemView");
        View childInContact = getChildInContact(parent, view);
        if (childInContact == null || (childAdapterPosition2 = parent.getChildAdapterPosition(childInContact)) == -1 || !this.callback.isHeader(childAdapterPosition2)) {
            canvas.save();
            canvas.translate(0.0f, 0.0f);
            headerViewHolder.itemView.draw(canvas);
            canvas.restore();
            return;
        }
        if (childAdapterPosition2 == 0) {
            return;
        }
        canvas.save();
        float top = childInContact.getTop();
        Intrinsics.checkExpressionValueIsNotNull(headerViewHolder.itemView, "viewHolder.itemView");
        canvas.translate(0.0f, top - r0.getHeight());
        headerViewHolder.itemView.draw(canvas);
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
        Intrinsics.checkParameterIsNotNull(motionEvent, "motionEvent");
        return motionEvent.getAction() == 0 && motionEvent.getY() <= ((float) this.stickyHeaderHeight);
    }

    private final RecyclerView.ViewHolder setHeaderViewHolder(int position, RecyclerView parent) {
        RecyclerView.ViewHolder viewHolderOnCreateViewHolder = this.headerViewHolder;
        if (viewHolderOnCreateViewHolder == null) {
            viewHolderOnCreateViewHolder = this.callback.onCreateViewHolder(parent, this.stickyHeaderViewType);
            this.headerViewHolder = viewHolderOnCreateViewHolder;
        }
        int headerPositionForItem = this.callback.getHeaderPositionForItem(position);
        if (headerPositionForItem == -1) {
            return null;
        }
        this.callback.onBindViewHolder(viewHolderOnCreateViewHolder, headerPositionForItem);
        if (this.stickyHeaderHeight == -1) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(parent.getWidth() + parent.getPaddingLeft() + parent.getPaddingRight(), BasicMeasure.EXACTLY);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(parent.getHeight(), 0);
            View view = viewHolderOnCreateViewHolder.itemView;
            Intrinsics.checkExpressionValueIsNotNull(view, "viewHolder.itemView");
            view.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, parent.getPaddingLeft() + parent.getPaddingRight(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, parent.getPaddingTop() + parent.getPaddingBottom(), view.getLayoutParams().height));
            this.stickyHeaderHeight = view.getMeasuredHeight();
            view.layout(0, 0, view.getMeasuredWidth(), this.stickyHeaderHeight);
        }
        return viewHolderOnCreateViewHolder;
    }

    private final View getChildInContact(RecyclerView parent, View with) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            Intrinsics.checkExpressionValueIsNotNull(child, "child");
            if (child.getTop() > with.getTop() && child.getTop() <= with.getBottom()) {
                return child;
            }
        }
        return null;
    }
}
