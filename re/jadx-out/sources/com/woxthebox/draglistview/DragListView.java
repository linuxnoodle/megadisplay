package com.woxthebox.draglistview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.woxthebox.draglistview.DragItemAdapter;
import com.woxthebox.draglistview.DragItemRecyclerView;
import com.woxthebox.draglistview.swipe.ListSwipeHelper;

/* JADX INFO: loaded from: classes2.dex */
public class DragListView extends FrameLayout {
    private DragItem mDragItem;
    private DragListCallback mDragListCallback;
    private DragListListener mDragListListener;
    private DragItemRecyclerView mRecyclerView;
    private ListSwipeHelper mSwipeHelper;
    private float mTouchX;
    private float mTouchY;

    public interface DragListCallback {
        boolean canDragItemAtPosition(int i);

        boolean canDropItemAtPosition(int i);
    }

    public static abstract class DragListCallbackAdapter implements DragListCallback {
        @Override // com.woxthebox.draglistview.DragListView.DragListCallback
        public boolean canDragItemAtPosition(int i) {
            return true;
        }

        @Override // com.woxthebox.draglistview.DragListView.DragListCallback
        public boolean canDropItemAtPosition(int i) {
            return true;
        }
    }

    public interface DragListListener {
        void onItemDragEnded(int i, int i2);

        void onItemDragStarted(int i);

        void onItemDragging(int i, float f, float f2);
    }

    public static abstract class DragListListenerAdapter implements DragListListener {
        @Override // com.woxthebox.draglistview.DragListView.DragListListener
        public void onItemDragEnded(int i, int i2) {
        }

        @Override // com.woxthebox.draglistview.DragListView.DragListListener
        public void onItemDragStarted(int i) {
        }

        @Override // com.woxthebox.draglistview.DragListView.DragListListener
        public void onItemDragging(int i, float f, float f2) {
        }
    }

    public DragListView(Context context) {
        super(context);
    }

    public DragListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DragListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDragItem = new DragItem(getContext());
        DragItemRecyclerView dragItemRecyclerViewCreateRecyclerView = createRecyclerView();
        this.mRecyclerView = dragItemRecyclerViewCreateRecyclerView;
        dragItemRecyclerViewCreateRecyclerView.setDragItem(this.mDragItem);
        addView(this.mRecyclerView);
        addView(this.mDragItem.getDragItemView());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean handleTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            float r0 = r4.getX()
            r3.mTouchX = r0
            float r0 = r4.getY()
            r3.mTouchY = r0
            boolean r0 = r3.isDragging()
            if (r0 == 0) goto L34
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == r1) goto L2e
            r2 = 2
            if (r0 == r2) goto L20
            r4 = 3
            if (r0 == r4) goto L2e
            goto L33
        L20:
            com.woxthebox.draglistview.DragItemRecyclerView r0 = r3.mRecyclerView
            float r2 = r4.getX()
            float r4 = r4.getY()
            r0.onDragging(r2, r4)
            goto L33
        L2e:
            com.woxthebox.draglistview.DragItemRecyclerView r4 = r3.mRecyclerView
            r4.onDragEnded()
        L33:
            return r1
        L34:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.woxthebox.draglistview.DragListView.handleTouchEvent(android.view.MotionEvent):boolean");
    }

    private DragItemRecyclerView createRecyclerView() {
        DragItemRecyclerView dragItemRecyclerView = (DragItemRecyclerView) LayoutInflater.from(getContext()).inflate(R.layout.drag_item_recycler_view, (ViewGroup) this, false);
        dragItemRecyclerView.setMotionEventSplittingEnabled(false);
        dragItemRecyclerView.setItemAnimator(new DefaultItemAnimator());
        dragItemRecyclerView.setVerticalScrollBarEnabled(false);
        dragItemRecyclerView.setHorizontalScrollBarEnabled(false);
        dragItemRecyclerView.setDragItemListener(new DragItemRecyclerView.DragItemListener() { // from class: com.woxthebox.draglistview.DragListView.1
            private int mDragStartPosition;

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragStarted(int i, float f, float f2) {
                DragListView.this.getParent().requestDisallowInterceptTouchEvent(true);
                this.mDragStartPosition = i;
                if (DragListView.this.mDragListListener != null) {
                    DragListView.this.mDragListListener.onItemDragStarted(i);
                }
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragging(int i, float f, float f2) {
                if (DragListView.this.mDragListListener != null) {
                    DragListView.this.mDragListListener.onItemDragging(i, f, f2);
                }
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragEnded(int i) {
                if (DragListView.this.mDragListListener != null) {
                    DragListView.this.mDragListListener.onItemDragEnded(this.mDragStartPosition, i);
                }
            }
        });
        dragItemRecyclerView.setDragItemCallback(new DragItemRecyclerView.DragItemCallback() { // from class: com.woxthebox.draglistview.DragListView.2
            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDragItemAtPosition(int i) {
                return DragListView.this.mDragListCallback == null || DragListView.this.mDragListCallback.canDragItemAtPosition(i);
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDropItemAtPosition(int i) {
                return DragListView.this.mDragListCallback == null || DragListView.this.mDragListCallback.canDropItemAtPosition(i);
            }
        });
        return dragItemRecyclerView;
    }

    public void setSwipeListener(ListSwipeHelper.OnSwipeListener onSwipeListener) {
        ListSwipeHelper listSwipeHelper = this.mSwipeHelper;
        if (listSwipeHelper == null) {
            this.mSwipeHelper = new ListSwipeHelper(getContext().getApplicationContext(), onSwipeListener);
        } else {
            listSwipeHelper.setSwipeListener(onSwipeListener);
        }
        this.mSwipeHelper.detachFromRecyclerView();
        if (onSwipeListener != null) {
            this.mSwipeHelper.attachToRecyclerView(this.mRecyclerView);
        }
    }

    public void resetSwipedViews(View view) {
        ListSwipeHelper listSwipeHelper = this.mSwipeHelper;
        if (listSwipeHelper != null) {
            listSwipeHelper.resetSwipedViews(view);
        }
    }

    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public DragItemAdapter getAdapter() {
        DragItemRecyclerView dragItemRecyclerView = this.mRecyclerView;
        if (dragItemRecyclerView != null) {
            return (DragItemAdapter) dragItemRecyclerView.getAdapter();
        }
        return null;
    }

    public void setAdapter(DragItemAdapter dragItemAdapter, boolean z) {
        this.mRecyclerView.setHasFixedSize(z);
        this.mRecyclerView.setAdapter(dragItemAdapter);
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.woxthebox.draglistview.DragListView.3
            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean startDrag(View view, long j) {
                return DragListView.this.mRecyclerView.startDrag(view, j, DragListView.this.mTouchX, DragListView.this.mTouchY);
            }

            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean isDragging() {
                return DragListView.this.mRecyclerView.isDragging();
            }
        });
    }

    public void swapAdapter(DragItemAdapter dragItemAdapter, boolean z) {
        this.mRecyclerView.swapAdapter(dragItemAdapter, z);
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.woxthebox.draglistview.DragListView.4
            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean startDrag(View view, long j) {
                return DragListView.this.mRecyclerView.startDrag(view, j, DragListView.this.mTouchX, DragListView.this.mTouchY);
            }

            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean isDragging() {
                return DragListView.this.mRecyclerView.isDragging();
            }
        });
    }

    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        this.mRecyclerView.setLayoutManager(layoutManager);
    }

    public void setDragListListener(DragListListener dragListListener) {
        this.mDragListListener = dragListListener;
    }

    public void setDragListCallback(DragListCallback dragListCallback) {
        this.mDragListCallback = dragListCallback;
    }

    public boolean isDragEnabled() {
        return this.mRecyclerView.isDragEnabled();
    }

    public void setDragEnabled(boolean z) {
        this.mRecyclerView.setDragEnabled(z);
    }

    public void setCustomDragItem(DragItem dragItem) {
        removeViewAt(1);
        if (dragItem == null) {
            dragItem = new DragItem(getContext());
        }
        dragItem.setCanDragHorizontally(this.mDragItem.canDragHorizontally());
        dragItem.setSnapToTouch(this.mDragItem.isSnapToTouch());
        this.mDragItem = dragItem;
        this.mRecyclerView.setDragItem(dragItem);
        addView(this.mDragItem.getDragItemView());
    }

    public boolean isDragging() {
        return this.mRecyclerView.isDragging();
    }

    public void setCanDragHorizontally(boolean z) {
        this.mDragItem.setCanDragHorizontally(z);
    }

    public void setSnapDragItemToTouch(boolean z) {
        this.mDragItem.setSnapToTouch(z);
    }

    public void setCanNotDragAboveTopItem(boolean z) {
        this.mRecyclerView.setCanNotDragAboveTopItem(z);
    }

    public void setCanNotDragBelowBottomItem(boolean z) {
        this.mRecyclerView.setCanNotDragBelowBottomItem(z);
    }

    public void setScrollingEnabled(boolean z) {
        this.mRecyclerView.setScrollingEnabled(z);
    }

    public void setDisableReorderWhenDragging(boolean z) {
        this.mRecyclerView.setDisableReorderWhenDragging(z);
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.mRecyclerView.setDropTargetDrawables(drawable, drawable2);
    }
}
