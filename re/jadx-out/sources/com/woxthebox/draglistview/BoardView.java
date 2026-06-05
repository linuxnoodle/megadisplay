package com.woxthebox.draglistview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.woxthebox.draglistview.AutoScroller;
import com.woxthebox.draglistview.ColumnProperties;
import com.woxthebox.draglistview.DragItemAdapter;
import com.woxthebox.draglistview.DragItemRecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BoardView extends HorizontalScrollView implements AutoScroller.AutoScrollListener {
    private static final int SCROLL_ANIMATION_DURATION = 325;
    private AutoScroller mAutoScroller;
    private BoardCallback mBoardCallback;
    private int mBoardEdge;
    private BoardListener mBoardListener;
    private LinearLayout mColumnLayout;
    private int mColumnSpacing;
    private int mColumnWidth;
    private int mCurrentColumn;
    private DragItemRecyclerView mCurrentRecyclerView;
    private DragItem mDragColumn;
    private float mDragColumnStartScrollX;
    private boolean mDragEnabled;
    private DragItem mDragItem;
    private int mDragStartColumn;
    private int mDragStartRow;
    private GestureDetector mGestureDetector;
    private boolean mHasLaidOut;
    private ArrayList<View> mHeaders;
    private int mLastDragColumn;
    private int mLastDragRow;
    private ArrayList<DragItemRecyclerView> mLists;
    private FrameLayout mRootLayout;
    private SavedState mSavedState;
    private Scroller mScroller;
    private ColumnSnapPosition mSnapPosition;
    private boolean mSnapToColumnInLandscape;
    private boolean mSnapToColumnWhenDragging;
    private boolean mSnapToColumnWhenScrolling;
    private float mTouchX;
    private float mTouchY;

    public interface BoardCallback {
        boolean canDragItemAtPosition(int i, int i2);

        boolean canDropItemAtPosition(int i, int i2, int i3, int i4);
    }

    public interface BoardListener {
        void onColumnDragChangedPosition(int i, int i2);

        void onColumnDragEnded(int i);

        void onColumnDragStarted(int i);

        void onFocusedColumnChanged(int i, int i2);

        void onItemChangedColumn(int i, int i2);

        void onItemChangedPosition(int i, int i2, int i3, int i4);

        void onItemDragEnded(int i, int i2, int i3, int i4);

        void onItemDragStarted(int i, int i2);
    }

    public static abstract class BoardListenerAdapter implements BoardListener {
        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onColumnDragChangedPosition(int i, int i2) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onColumnDragEnded(int i) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onColumnDragStarted(int i) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onFocusedColumnChanged(int i, int i2) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onItemChangedColumn(int i, int i2) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onItemChangedPosition(int i, int i2, int i3, int i4) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onItemDragEnded(int i, int i2, int i3, int i4) {
        }

        @Override // com.woxthebox.draglistview.BoardView.BoardListener
        public void onItemDragStarted(int i, int i2) {
        }
    }

    public enum ColumnSnapPosition {
        LEFT,
        CENTER,
        RIGHT
    }

    public BoardView(Context context) {
        super(context);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
    }

    public BoardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
        init(attributeSet);
    }

    public BoardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.BoardView);
        this.mColumnSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BoardView_columnSpacing, 0);
        this.mBoardEdge = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BoardView_boardEdges, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getResources();
        if (resources.getConfiguration().orientation == 1) {
            this.mColumnWidth = (int) (((double) resources.getDisplayMetrics().widthPixels) * 0.87d);
        } else {
            this.mColumnWidth = (int) (resources.getDisplayMetrics().density * 320.0f);
        }
        this.mGestureDetector = new GestureDetector(getContext(), new GestureListener());
        this.mScroller = new Scroller(getContext(), new DecelerateInterpolator(1.1f));
        AutoScroller autoScroller = new AutoScroller(getContext(), this);
        this.mAutoScroller = autoScroller;
        autoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
        this.mDragItem = new DragItem(getContext());
        DragItem dragItem = new DragItem(getContext());
        this.mDragColumn = dragItem;
        dragItem.setSnapToTouch(false);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mRootLayout = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.mColumnLayout = linearLayout;
        linearLayout.setOrientation(0);
        this.mColumnLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.mColumnLayout.setMotionEventSplittingEnabled(false);
        this.mRootLayout.addView(this.mColumnLayout);
        this.mRootLayout.addView(this.mDragItem.getDragItemView());
        addView(this.mRootLayout);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        SavedState savedState;
        super.onLayout(z, i, i2, i3, i4);
        updateBoardSpaces();
        if (!this.mHasLaidOut && (savedState = this.mSavedState) != null) {
            this.mCurrentColumn = savedState.currentColumn;
            this.mSavedState = null;
            post(new Runnable() { // from class: com.woxthebox.draglistview.BoardView.1
                @Override // java.lang.Runnable
                public void run() {
                    BoardView boardView = BoardView.this;
                    boardView.scrollToColumn(boardView.mCurrentColumn, false);
                }
            });
        }
        this.mHasLaidOut = true;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSavedState = savedState;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), snapToColumnWhenScrolling() ? this.mCurrentColumn : getClosestSnapColumn());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean handleTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            java.util.ArrayList<com.woxthebox.draglistview.DragItemRecyclerView> r0 = r4.mLists
            int r0 = r0.size()
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            float r0 = r5.getX()
            r4.mTouchX = r0
            float r0 = r5.getY()
            r4.mTouchY = r0
            boolean r0 = r4.isDragging()
            r2 = 3
            r3 = 1
            if (r0 == 0) goto L5d
            int r5 = r5.getAction()
            if (r5 == r3) goto L36
            r0 = 2
            if (r5 == r0) goto L2a
            if (r5 == r2) goto L36
            goto L5c
        L2a:
            com.woxthebox.draglistview.AutoScroller r5 = r4.mAutoScroller
            boolean r5 = r5.isAutoScrolling()
            if (r5 != 0) goto L5c
            r4.updateScrollPosition()
            goto L5c
        L36:
            com.woxthebox.draglistview.AutoScroller r5 = r4.mAutoScroller
            r5.stopAutoScroll()
            boolean r5 = r4.isDraggingColumn()
            if (r5 == 0) goto L45
            r4.endDragColumn()
            goto L4a
        L45:
            com.woxthebox.draglistview.DragItemRecyclerView r5 = r4.mCurrentRecyclerView
            r5.onDragEnded()
        L4a:
            boolean r5 = r4.snapToColumnWhenScrolling()
            if (r5 == 0) goto L59
            com.woxthebox.draglistview.DragItemRecyclerView r5 = r4.mCurrentRecyclerView
            int r5 = r4.getColumnOfList(r5)
            r4.scrollToColumn(r5, r3)
        L59:
            r4.invalidate()
        L5c:
            return r3
        L5d:
            boolean r0 = r4.snapToColumnWhenScrolling()
            if (r0 == 0) goto L6c
            android.view.GestureDetector r0 = r4.mGestureDetector
            boolean r0 = r0.onTouchEvent(r5)
            if (r0 == 0) goto L6c
            return r3
        L6c:
            int r5 = r5.getAction()
            if (r5 == 0) goto L85
            if (r5 == r3) goto L77
            if (r5 == r2) goto L77
            goto L92
        L77:
            boolean r5 = r4.snapToColumnWhenScrolling()
            if (r5 == 0) goto L92
            int r5 = r4.getClosestSnapColumn()
            r4.scrollToColumn(r5, r3)
            goto L92
        L85:
            android.widget.Scroller r5 = r4.mScroller
            boolean r5 = r5.isFinished()
            if (r5 != 0) goto L92
            android.widget.Scroller r5 = r4.mScroller
            r5.forceFinished(r3)
        L92:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.woxthebox.draglistview.BoardView.handleTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void computeScroll() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (getScrollX() != currX || getScrollY() != currY) {
                scrollTo(currX, currY);
            }
            if (this.mAutoScroller.isAutoScrolling() && isDragging()) {
                if (isDraggingColumn()) {
                    this.mDragColumn.setPosition((this.mTouchX + getScrollX()) - this.mDragColumnStartScrollX, this.mTouchY);
                } else {
                    this.mDragItem.setPosition(getRelativeViewTouchX((View) this.mCurrentRecyclerView.getParent()), getRelativeViewTouchY(this.mCurrentRecyclerView));
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        if (snapToColumnWhenScrolling()) {
            return;
        }
        super.computeScroll();
    }

    @Override // com.woxthebox.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollPositionBy(int i, int i2) {
        if (isDragging()) {
            scrollBy(i, i2);
            updateScrollPosition();
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
    }

    @Override // com.woxthebox.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollColumnBy(int i) {
        if (isDragging()) {
            int i2 = this.mCurrentColumn + i;
            if (i != 0 && i2 >= 0 && i2 < this.mLists.size()) {
                scrollToColumn(i2, true);
            }
            updateScrollPosition();
            return;
        }
        this.mAutoScroller.stopAutoScroll();
    }

    private void updateScrollPosition() {
        Object objRemoveDragItemAndEnd;
        if (isDraggingColumn()) {
            DragItemRecyclerView currentRecyclerView = getCurrentRecyclerView(this.mTouchX + getScrollX());
            DragItemRecyclerView dragItemRecyclerView = this.mCurrentRecyclerView;
            if (dragItemRecyclerView != currentRecyclerView) {
                moveColumn(getColumnOfList(dragItemRecyclerView), getColumnOfList(currentRecyclerView));
            }
            this.mDragColumn.setPosition((this.mTouchX + getScrollX()) - this.mDragColumnStartScrollX, this.mTouchY);
        } else {
            DragItemRecyclerView currentRecyclerView2 = getCurrentRecyclerView(this.mTouchX + getScrollX());
            DragItemRecyclerView dragItemRecyclerView2 = this.mCurrentRecyclerView;
            if (dragItemRecyclerView2 != currentRecyclerView2) {
                int columnOfList = getColumnOfList(dragItemRecyclerView2);
                int columnOfList2 = getColumnOfList(currentRecyclerView2);
                long dragItemId = this.mCurrentRecyclerView.getDragItemId();
                int dragPositionForY = currentRecyclerView2.getDragPositionForY(getRelativeViewTouchY(currentRecyclerView2));
                BoardCallback boardCallback = this.mBoardCallback;
                if ((boardCallback == null || boardCallback.canDropItemAtPosition(this.mDragStartColumn, this.mDragStartRow, columnOfList2, dragPositionForY)) && (objRemoveDragItemAndEnd = this.mCurrentRecyclerView.removeDragItemAndEnd()) != null) {
                    this.mCurrentRecyclerView = currentRecyclerView2;
                    currentRecyclerView2.addDragItemAndStart(getRelativeViewTouchY(currentRecyclerView2), objRemoveDragItemAndEnd, dragItemId);
                    this.mDragItem.setOffset(((View) this.mCurrentRecyclerView.getParent()).getLeft(), this.mCurrentRecyclerView.getTop());
                    BoardListener boardListener = this.mBoardListener;
                    if (boardListener != null) {
                        boardListener.onItemChangedColumn(columnOfList, columnOfList2);
                    }
                }
            }
            DragItemRecyclerView dragItemRecyclerView3 = this.mCurrentRecyclerView;
            dragItemRecyclerView3.onDragging(getRelativeViewTouchX((View) dragItemRecyclerView3.getParent()), getRelativeViewTouchY(this.mCurrentRecyclerView));
        }
        float f = getResources().getDisplayMetrics().widthPixels * (getResources().getConfiguration().orientation == 1 ? 0.06f : 0.14f);
        if (this.mTouchX > getWidth() - f && getScrollX() < this.mColumnLayout.getWidth()) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.LEFT);
        } else if (this.mTouchX < f && getScrollX() > 0) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.RIGHT);
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeViewTouchX(View view) {
        return (this.mTouchX + getScrollX()) - view.getLeft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeViewTouchY(View view) {
        return this.mTouchY - view.getTop();
    }

    private DragItemRecyclerView getCurrentRecyclerView(float f) {
        for (DragItemRecyclerView dragItemRecyclerView : this.mLists) {
            View view = (View) dragItemRecyclerView.getParent();
            if (view.getLeft() <= f && view.getRight() > f) {
                return dragItemRecyclerView;
            }
        }
        return this.mCurrentRecyclerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnOfList(DragItemRecyclerView dragItemRecyclerView) {
        int i = 0;
        for (int i2 = 0; i2 < this.mLists.size(); i2++) {
            if (this.mLists.get(i2) == dragItemRecyclerView) {
                i = i2;
            }
        }
        return i;
    }

    private int getCurrentColumn(float f) {
        for (int i = 0; i < this.mLists.size(); i++) {
            View view = (View) this.mLists.get(i).getParent();
            if (view.getLeft() <= f && view.getRight() > f) {
                return i;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getClosestSnapColumn() {
        int iAbs;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 = 0; i3 < this.mLists.size(); i3++) {
            View view = (View) this.mLists.get(i3).getParent();
            int i4 = AnonymousClass8.$SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition[this.mSnapPosition.ordinal()];
            if (i4 == 1) {
                iAbs = Math.abs(view.getLeft() - getScrollX());
            } else if (i4 == 2) {
                iAbs = Math.abs((view.getLeft() + (this.mColumnWidth / 2)) - (getScrollX() + (getMeasuredWidth() / 2)));
            } else if (i4 != 3) {
                iAbs = 0;
            } else {
                iAbs = Math.abs(view.getRight() - (getScrollX() + getMeasuredWidth()));
            }
            if (iAbs < i) {
                i2 = i3;
                i = iAbs;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: com.woxthebox.draglistview.BoardView$8, reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition;

        static {
            int[] iArr = new int[ColumnSnapPosition.values().length];
            $SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition = iArr;
            try {
                iArr[ColumnSnapPosition.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition[ColumnSnapPosition.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition[ColumnSnapPosition.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private boolean snapToColumnWhenScrolling() {
        boolean z = getResources().getConfiguration().orientation == 1;
        if (this.mSnapToColumnWhenScrolling) {
            return z || this.mSnapToColumnInLandscape;
        }
        return false;
    }

    private boolean snapToColumnWhenDragging() {
        boolean z = getResources().getConfiguration().orientation == 1;
        if (this.mSnapToColumnWhenDragging) {
            return z || this.mSnapToColumnInLandscape;
        }
        return false;
    }

    private boolean isDraggingColumn() {
        return this.mCurrentRecyclerView != null && this.mDragColumn.isDragging();
    }

    private boolean isDragging() {
        DragItemRecyclerView dragItemRecyclerView = this.mCurrentRecyclerView;
        return dragItemRecyclerView != null && (dragItemRecyclerView.isDragging() || isDraggingColumn());
    }

    public RecyclerView getRecyclerView(int i) {
        if (i < 0 || i >= this.mLists.size()) {
            return null;
        }
        return this.mLists.get(i);
    }

    public DragItemAdapter getAdapter(int i) {
        if (i < 0 || i >= this.mLists.size()) {
            return null;
        }
        return (DragItemAdapter) this.mLists.get(i).getAdapter();
    }

    public int getItemCount() {
        Iterator<DragItemRecyclerView> it = this.mLists.iterator();
        int globalSize = 0;
        while (it.hasNext()) {
            globalSize += it.next().getAdapter().getGlobalSize();
        }
        return globalSize;
    }

    public int getItemCount(int i) {
        if (this.mLists.size() > i) {
            return this.mLists.get(i).getAdapter().getGlobalSize();
        }
        return 0;
    }

    public int getColumnCount() {
        return this.mLists.size();
    }

    public View getHeaderView(int i) {
        return this.mHeaders.get(i);
    }

    public int getColumnOfHeader(View view) {
        for (int i = 0; i < this.mHeaders.size(); i++) {
            if (this.mHeaders.get(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public void removeItem(int i, int i2) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getGlobalSize() <= i2) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i).getAdapter()).removeItem(i2);
    }

    public void addItem(int i, int i2, Object obj, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getGlobalSize() < i2) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i).getAdapter()).addItem(i2, obj);
        if (z) {
            scrollToItem(i, i2, false);
        }
    }

    public void moveItem(int i, int i2, int i3, int i4, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getGlobalSize() <= i2 || this.mLists.size() <= i3 || this.mLists.get(i3).getAdapter().getGlobalSize() < i4) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i3).getAdapter()).addItem(i4, ((DragItemAdapter) this.mLists.get(i).getAdapter()).removeItem(i2));
        if (z) {
            scrollToItem(i3, i4, false);
        }
    }

    public void moveItem(long j, int i, int i2, boolean z) {
        for (int i3 = 0; i3 < this.mLists.size(); i3++) {
            RecyclerView.Adapter adapter = this.mLists.get(i3).getAdapter();
            int globalSize = adapter.getGlobalSize();
            for (int i4 = 0; i4 < globalSize; i4++) {
                if (adapter.getItemId(i4) == j) {
                    moveItem(i3, i4, i, i2, z);
                    return;
                }
            }
        }
    }

    public void replaceItem(int i, int i2, Object obj, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getGlobalSize() <= i2) {
            return;
        }
        DragItemAdapter dragItemAdapter = (DragItemAdapter) this.mLists.get(i).getAdapter();
        dragItemAdapter.removeItem(i2);
        dragItemAdapter.addItem(i2, obj);
        if (z) {
            scrollToItem(i, i2, false);
        }
    }

    public void scrollToItem(int i, int i2, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getGlobalSize() <= i2) {
            return;
        }
        this.mScroller.forceFinished(true);
        scrollToColumn(i, z);
        if (z) {
            this.mLists.get(i).smoothScrollToPosition(i2);
        } else {
            this.mLists.get(i).scrollToPosition(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scrollToColumn(int r11, boolean r12) {
        /*
            r10 = this;
            java.util.ArrayList<com.woxthebox.draglistview.DragItemRecyclerView> r0 = r10.mLists
            int r0 = r0.size()
            if (r0 > r11) goto L9
            return
        L9:
            java.util.ArrayList<com.woxthebox.draglistview.DragItemRecyclerView> r0 = r10.mLists
            java.lang.Object r0 = r0.get(r11)
            com.woxthebox.draglistview.DragItemRecyclerView r0 = (com.woxthebox.draglistview.DragItemRecyclerView) r0
            android.view.ViewParent r0 = r0.getParent()
            android.view.View r0 = (android.view.View) r0
            android.view.ViewGroup$LayoutParams r1 = r0.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r1 = (android.view.ViewGroup.MarginLayoutParams) r1
            int[] r2 = com.woxthebox.draglistview.BoardView.AnonymousClass8.$SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition
            com.woxthebox.draglistview.BoardView$ColumnSnapPosition r3 = r10.mSnapPosition
            int r3 = r3.ordinal()
            r2 = r2[r3]
            r3 = 1
            r4 = 0
            if (r2 == r3) goto L58
            r5 = 2
            if (r2 == r5) goto L3f
            r5 = 3
            if (r2 == r5) goto L33
            r0 = 0
            goto L5f
        L33:
            int r0 = r0.getRight()
            int r1 = r1.rightMargin
            int r0 = r0 + r1
            int r1 = r10.getMeasuredWidth()
            goto L5e
        L3f:
            int r2 = r10.getMeasuredWidth()
            int r6 = r0.getMeasuredWidth()
            int r2 = r2 - r6
            int r6 = r1.leftMargin
            int r2 = r2 - r6
            int r6 = r1.rightMargin
            int r2 = r2 - r6
            int r2 = r2 / r5
            int r0 = r0.getLeft()
            int r1 = r1.leftMargin
            int r0 = r0 - r1
            int r0 = r0 - r2
            goto L5f
        L58:
            int r0 = r0.getLeft()
            int r1 = r1.leftMargin
        L5e:
            int r0 = r0 - r1
        L5f:
            android.widget.FrameLayout r1 = r10.mRootLayout
            int r1 = r1.getMeasuredWidth()
            int r2 = r10.getMeasuredWidth()
            int r1 = r1 - r2
            if (r0 >= 0) goto L6d
            goto L6e
        L6d:
            r4 = r0
        L6e:
            if (r4 <= r1) goto L71
            goto L72
        L71:
            r1 = r4
        L72:
            int r0 = r10.getScrollX()
            if (r0 == r1) goto La0
            android.widget.Scroller r0 = r10.mScroller
            r0.forceFinished(r3)
            if (r12 == 0) goto L99
            android.widget.Scroller r4 = r10.mScroller
            int r5 = r10.getScrollX()
            int r6 = r10.getScrollY()
            int r12 = r10.getScrollX()
            int r7 = r1 - r12
            r8 = 0
            r9 = 325(0x145, float:4.55E-43)
            r4.startScroll(r5, r6, r7, r8, r9)
            androidx.core.view.ViewCompat.postInvalidateOnAnimation(r10)
            goto La0
        L99:
            int r12 = r10.getScrollY()
            r10.scrollTo(r1, r12)
        La0:
            int r12 = r10.mCurrentColumn
            r10.mCurrentColumn = r11
            com.woxthebox.draglistview.BoardView$BoardListener r0 = r10.mBoardListener
            if (r0 == 0) goto Lad
            if (r12 == r11) goto Lad
            r0.onFocusedColumnChanged(r12, r11)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.woxthebox.draglistview.BoardView.scrollToColumn(int, boolean):void");
    }

    public void clearBoard() {
        for (int size = this.mLists.size() - 1; size >= 0; size--) {
            this.mColumnLayout.removeViewAt(size);
            this.mHeaders.remove(size);
            this.mLists.remove(size);
        }
    }

    public void removeColumn(int i) {
        if (i < 0 || this.mLists.size() <= i) {
            return;
        }
        this.mColumnLayout.removeViewAt(i);
        this.mHeaders.remove(i);
        this.mLists.remove(i);
        updateBoardSpaces();
    }

    public boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    public void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
        if (this.mLists.size() > 0) {
            Iterator<DragItemRecyclerView> it = this.mLists.iterator();
            while (it.hasNext()) {
                it.next().setDragEnabled(this.mDragEnabled);
            }
        }
    }

    public int getFocusedColumn() {
        if (snapToColumnWhenScrolling()) {
            return this.mCurrentColumn;
        }
        return 0;
    }

    public void setColumnWidth(int i) {
        this.mColumnWidth = i;
    }

    public void setColumnSpacing(int i) {
        this.mColumnSpacing = i;
        updateBoardSpaces();
    }

    public void setBoardEdge(int i) {
        this.mBoardEdge = i;
        updateBoardSpaces();
    }

    public void setSnapToColumnsWhenScrolling(boolean z) {
        this.mSnapToColumnWhenScrolling = z;
    }

    public void setSnapToColumnWhenDragging(boolean z) {
        this.mSnapToColumnWhenDragging = z;
        this.mAutoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
    }

    public void setSnapToColumnInLandscape(boolean z) {
        this.mSnapToColumnInLandscape = z;
        this.mAutoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
    }

    public void setColumnSnapPosition(ColumnSnapPosition columnSnapPosition) {
        this.mSnapPosition = columnSnapPosition;
    }

    public void setSnapDragItemToTouch(boolean z) {
        this.mDragItem.setSnapToTouch(z);
    }

    public void setBoardListener(BoardListener boardListener) {
        this.mBoardListener = boardListener;
    }

    public void setBoardCallback(BoardCallback boardCallback) {
        this.mBoardCallback = boardCallback;
    }

    public void setCustomDragItem(DragItem dragItem) {
        DragItem dragItem2 = dragItem != null ? dragItem : new DragItem(getContext());
        if (dragItem == null) {
            dragItem2.setSnapToTouch(true);
        }
        this.mDragItem = dragItem2;
        this.mRootLayout.removeViewAt(1);
        this.mRootLayout.addView(this.mDragItem.getDragItemView());
    }

    public void setCustomColumnDragItem(DragItem dragItem) {
        DragItem dragItem2 = dragItem != null ? dragItem : new DragItem(getContext());
        if (dragItem == null) {
            dragItem2.setSnapToTouch(false);
        }
        this.mDragColumn = dragItem2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDragColumn(DragItemRecyclerView dragItemRecyclerView, float f, float f2) {
        this.mDragColumnStartScrollX = getScrollX();
        this.mCurrentRecyclerView = dragItemRecyclerView;
        View childAt = this.mColumnLayout.getChildAt(getColumnOfList(dragItemRecyclerView));
        this.mDragColumn.startDrag(childAt, f, f2);
        this.mRootLayout.addView(this.mDragColumn.getDragItemView());
        childAt.setAlpha(0.0f);
        BoardListener boardListener = this.mBoardListener;
        if (boardListener != null) {
            boardListener.onColumnDragStarted(getColumnOfList(this.mCurrentRecyclerView));
        }
    }

    private void endDragColumn() {
        DragItem dragItem = this.mDragColumn;
        dragItem.endDrag(dragItem.getRealDragView(), new AnimatorListenerAdapter() { // from class: com.woxthebox.draglistview.BoardView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BoardView.this.mDragColumn.getRealDragView().setAlpha(1.0f);
                BoardView.this.mDragColumn.hide();
                BoardView.this.mRootLayout.removeView(BoardView.this.mDragColumn.getDragItemView());
                if (BoardView.this.mBoardListener != null) {
                    BoardListener boardListener = BoardView.this.mBoardListener;
                    BoardView boardView = BoardView.this;
                    boardListener.onColumnDragEnded(boardView.getColumnOfList(boardView.mCurrentRecyclerView));
                }
            }
        });
    }

    private void moveColumn(int i, int i2) {
        this.mLists.add(i2, this.mLists.remove(i));
        this.mHeaders.add(i2, this.mHeaders.remove(i));
        final View childAt = this.mColumnLayout.getChildAt(i);
        final View childAt2 = this.mColumnLayout.getChildAt(i2);
        this.mColumnLayout.removeViewAt(i);
        this.mColumnLayout.addView(childAt, i2);
        updateBoardSpaces();
        this.mColumnLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.woxthebox.draglistview.BoardView.3
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                BoardView.this.mColumnLayout.removeOnLayoutChangeListener(this);
                View view2 = childAt2;
                view2.setTranslationX((view2.getTranslationX() + childAt.getLeft()) - childAt2.getLeft());
                childAt2.animate().translationX(0.0f).setDuration(350L).start();
            }
        });
        BoardListener boardListener = this.mBoardListener;
        if (boardListener != null) {
            boardListener.onColumnDragChangedPosition(i, i2);
        }
    }

    public DragItemRecyclerView insertColumn(DragItemAdapter dragItemAdapter, int i, View view, View view2, boolean z) {
        return insertColumn(dragItemAdapter, i, view, view2, z, new LinearLayoutManager(getContext()));
    }

    public DragItemRecyclerView insertColumn(DragItemAdapter dragItemAdapter, int i, View view, View view2, boolean z, RecyclerView.LayoutManager layoutManager) {
        return addColumnTo(i, ColumnProperties.Builder.newBuilder(dragItemAdapter).setHeader(view).setColumnDragView(view2).setHasFixedItemSize(z).setLayoutManager(layoutManager).build());
    }

    public void insertColumn(int i, ColumnProperties columnProperties) {
        addColumnTo(i, columnProperties);
    }

    public DragItemRecyclerView addColumn(DragItemAdapter dragItemAdapter, View view, View view2, boolean z) {
        return addColumn(dragItemAdapter, view, view2, z, new LinearLayoutManager(getContext()));
    }

    public DragItemRecyclerView addColumn(DragItemAdapter dragItemAdapter, View view, View view2, boolean z, RecyclerView.LayoutManager layoutManager) {
        return addColumnTo(getColumnCount(), ColumnProperties.Builder.newBuilder(dragItemAdapter).setHeader(view).setColumnDragView(view2).setHasFixedItemSize(z).setLayoutManager(layoutManager).build());
    }

    public void addColumn(ColumnProperties columnProperties) {
        addColumnTo(getColumnCount(), columnProperties);
    }

    private DragItemRecyclerView addColumnTo(int i, ColumnProperties columnProperties) {
        if (i > getColumnCount()) {
            throw new IllegalArgumentException("Index is out of bounds");
        }
        final DragItemRecyclerView dragItemRecyclerView = (DragItemRecyclerView) LayoutInflater.from(getContext()).inflate(R.layout.drag_item_recycler_view, (ViewGroup) this, false);
        dragItemRecyclerView.setId(getColumnCount());
        dragItemRecyclerView.setHorizontalScrollBarEnabled(false);
        dragItemRecyclerView.setVerticalScrollBarEnabled(false);
        dragItemRecyclerView.setMotionEventSplittingEnabled(false);
        dragItemRecyclerView.setDragItem(this.mDragItem);
        dragItemRecyclerView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        RecyclerView.LayoutManager layoutManager = columnProperties.getLayoutManager();
        if (layoutManager == null) {
            layoutManager = new LinearLayoutManager(getContext());
        }
        dragItemRecyclerView.setLayoutManager(layoutManager);
        dragItemRecyclerView.setBackgroundColor(columnProperties.getItemsSectionBackgroundColor());
        dragItemRecyclerView.setHasFixedSize(columnProperties.hasFixedItemSize());
        List<RecyclerView.ItemDecoration> itemDecorations = columnProperties.getItemDecorations();
        for (int i2 = 0; i2 < itemDecorations.size(); i2++) {
            dragItemRecyclerView.addItemDecoration(itemDecorations.get(i2));
        }
        dragItemRecyclerView.setItemAnimator(new DefaultItemAnimator());
        dragItemRecyclerView.setDragItemListener(new DragItemRecyclerView.DragItemListener() { // from class: com.woxthebox.draglistview.BoardView.4
            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragStarted(int i3, float f, float f2) {
                BoardView boardView = BoardView.this;
                boardView.mDragStartColumn = boardView.getColumnOfList(dragItemRecyclerView);
                BoardView.this.mDragStartRow = i3;
                BoardView.this.mCurrentRecyclerView = dragItemRecyclerView;
                BoardView.this.mDragItem.setOffset(((View) BoardView.this.mCurrentRecyclerView.getParent()).getX(), BoardView.this.mCurrentRecyclerView.getY());
                if (BoardView.this.mBoardListener != null) {
                    BoardView.this.mBoardListener.onItemDragStarted(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow);
                }
                BoardView.this.invalidate();
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragging(int i3, float f, float f2) {
                int columnOfList = BoardView.this.getColumnOfList(dragItemRecyclerView);
                boolean z = (columnOfList == BoardView.this.mLastDragColumn && i3 == BoardView.this.mLastDragRow) ? false : true;
                if (BoardView.this.mBoardListener == null || !z) {
                    return;
                }
                BoardView.this.mLastDragColumn = columnOfList;
                BoardView.this.mLastDragRow = i3;
                BoardView.this.mBoardListener.onItemChangedPosition(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, columnOfList, i3);
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragEnded(int i3) {
                BoardView.this.mLastDragColumn = -1;
                BoardView.this.mLastDragRow = -1;
                if (BoardView.this.mBoardListener != null) {
                    BoardView.this.mBoardListener.onItemDragEnded(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, BoardView.this.getColumnOfList(dragItemRecyclerView), i3);
                }
            }
        });
        dragItemRecyclerView.setDragItemCallback(new DragItemRecyclerView.DragItemCallback() { // from class: com.woxthebox.draglistview.BoardView.5
            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDragItemAtPosition(int i3) {
                return BoardView.this.mBoardCallback == null || BoardView.this.mBoardCallback.canDragItemAtPosition(BoardView.this.getColumnOfList(dragItemRecyclerView), i3);
            }

            @Override // com.woxthebox.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDropItemAtPosition(int i3) {
                return BoardView.this.mBoardCallback == null || BoardView.this.mBoardCallback.canDropItemAtPosition(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, BoardView.this.getColumnOfList(dragItemRecyclerView), i3);
            }
        });
        DragItemAdapter dragItemAdapter = columnProperties.getDragItemAdapter();
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.woxthebox.draglistview.BoardView.6
            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean startDrag(View view, long j) {
                DragItemRecyclerView dragItemRecyclerView2 = dragItemRecyclerView;
                return dragItemRecyclerView2.startDrag(view, j, BoardView.this.getRelativeViewTouchX((View) dragItemRecyclerView2.getParent()), BoardView.this.getRelativeViewTouchY(dragItemRecyclerView));
            }

            @Override // com.woxthebox.draglistview.DragItemAdapter.DragStartCallback
            public boolean isDragging() {
                return dragItemRecyclerView.isDragging();
            }
        });
        dragItemRecyclerView.setAdapter(dragItemAdapter);
        dragItemRecyclerView.setDragEnabled(this.mDragEnabled);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setBackgroundColor(columnProperties.getColumnBackgroundColor());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(this.mColumnWidth, -1));
        View header = columnProperties.getHeader();
        if (header == null) {
            header = new View(getContext());
            header.setVisibility(8);
        }
        linearLayout.addView(header);
        this.mHeaders.add(header);
        linearLayout.addView(dragItemRecyclerView);
        this.mLists.add(i, dragItemRecyclerView);
        this.mColumnLayout.addView(linearLayout, i);
        updateBoardSpaces();
        setupColumnDragListener(columnProperties.getColumnDragView(), dragItemRecyclerView);
        return dragItemRecyclerView;
    }

    private void setupColumnDragListener(View view, final DragItemRecyclerView dragItemRecyclerView) {
        if (view != null) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.woxthebox.draglistview.BoardView.7
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    BoardView boardView = BoardView.this;
                    boardView.startDragColumn(dragItemRecyclerView, boardView.mTouchX, BoardView.this.mTouchY);
                    return true;
                }
            });
        }
    }

    private void updateBoardSpaces() {
        int columnCount = getColumnCount();
        int i = this.mColumnSpacing / 2;
        for (int i2 = 0; i2 < columnCount; i2++) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mColumnLayout.getChildAt(i2).getLayoutParams();
            if (i2 == 0) {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = this.mBoardEdge;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i;
            } else if (i2 == columnCount - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.mBoardEdge;
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i;
            }
        }
    }

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private int mStartColumn;
        private float mStartScrollX;

        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.mStartScrollX = BoardView.this.getScrollX();
            this.mStartColumn = BoardView.this.mCurrentColumn;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            int closestSnapColumn = BoardView.this.getClosestSnapColumn();
            int i = this.mStartColumn;
            boolean z = (closestSnapColumn > i && f > 0.0f) || (closestSnapColumn < i && f < 0.0f);
            if (this.mStartScrollX == BoardView.this.getScrollX()) {
                closestSnapColumn = this.mStartColumn;
            } else if (this.mStartColumn == closestSnapColumn || z) {
                closestSnapColumn = f < 0.0f ? closestSnapColumn + 1 : closestSnapColumn - 1;
            }
            if (closestSnapColumn < 0 || closestSnapColumn > BoardView.this.mLists.size() - 1) {
                closestSnapColumn = closestSnapColumn >= 0 ? BoardView.this.mLists.size() - 1 : 0;
            }
            BoardView.this.scrollToColumn(closestSnapColumn, true);
            return true;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.woxthebox.draglistview.BoardView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int currentColumn;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        private SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.currentColumn = i;
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.currentColumn = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentColumn);
        }
    }
}
