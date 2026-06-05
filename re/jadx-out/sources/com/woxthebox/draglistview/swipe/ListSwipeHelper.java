package com.woxthebox.draglistview.swipe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.woxthebox.draglistview.swipe.ListSwipeItem;

/* JADX INFO: loaded from: classes2.dex */
public class ListSwipeHelper extends RecyclerView.OnScrollListener implements RecyclerView.OnItemTouchListener {
    private GestureDetector mGestureDetector;
    private GestureListener mGestureListener = new GestureListener();
    private RecyclerView mRecyclerView;
    private OnSwipeListener mSwipeListener;
    private ListSwipeItem mSwipeView;
    private int mTouchSlop;

    public interface OnSwipeListener {
        void onItemSwipeEnded(ListSwipeItem listSwipeItem, ListSwipeItem.SwipeDirection swipeDirection);

        void onItemSwipeStarted(ListSwipeItem listSwipeItem);

        void onItemSwiping(ListSwipeItem listSwipeItem, float f);
    }

    public static abstract class OnSwipeListenerAdapter implements OnSwipeListener {
        @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
        public void onItemSwipeEnded(ListSwipeItem listSwipeItem, ListSwipeItem.SwipeDirection swipeDirection) {
        }

        @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
        public void onItemSwipeStarted(ListSwipeItem listSwipeItem) {
        }

        @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
        public void onItemSwiping(ListSwipeItem listSwipeItem, float f) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public ListSwipeHelper(Context context, OnSwipeListener onSwipeListener) {
        this.mSwipeListener = onSwipeListener;
        this.mGestureDetector = new GestureDetector(context, this.mGestureListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        handleTouch(recyclerView, motionEvent);
        return this.mGestureListener.isSwipeStarted();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        handleTouch(recyclerView, motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        resetSwipedViews(null);
    }

    public void resetSwipedViews(View view) {
        int childCount = this.mRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mRecyclerView.getChildAt(i);
            if ((childAt instanceof ListSwipeItem) && childAt != view) {
                ((ListSwipeItem) childAt).resetSwipe(true);
            }
        }
    }

    private void handleTouch(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.mGestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            View viewFindChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            if (viewFindChildViewUnder instanceof ListSwipeItem) {
                ListSwipeItem listSwipeItem = (ListSwipeItem) viewFindChildViewUnder;
                if (listSwipeItem.getSupportedSwipeDirection() != ListSwipeItem.SwipeDirection.NONE) {
                    this.mSwipeView = listSwipeItem;
                    return;
                }
                return;
            }
            return;
        }
        if (action == 1 || action == 3) {
            final ListSwipeItem listSwipeItem2 = this.mSwipeView;
            if (listSwipeItem2 != null) {
                listSwipeItem2.handleSwipeUp(new AnimatorListenerAdapter() { // from class: com.woxthebox.draglistview.swipe.ListSwipeHelper.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (listSwipeItem2.isSwipeStarted()) {
                            ListSwipeHelper.this.resetSwipedViews(listSwipeItem2);
                        }
                        if (ListSwipeHelper.this.mSwipeListener != null) {
                            OnSwipeListener onSwipeListener = ListSwipeHelper.this.mSwipeListener;
                            ListSwipeItem listSwipeItem3 = listSwipeItem2;
                            onSwipeListener.onItemSwipeEnded(listSwipeItem3, listSwipeItem3.getSwipedDirection());
                        }
                    }
                });
            } else {
                resetSwipedViews(null);
            }
            this.mSwipeView = null;
            this.mRecyclerView.requestDisallowInterceptTouchEvent(false);
        }
    }

    public void detachFromRecyclerView() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.removeOnItemTouchListener(this);
            this.mRecyclerView.removeOnScrollListener(this);
        }
        this.mRecyclerView = null;
    }

    public void attachToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        recyclerView.addOnItemTouchListener(this);
        this.mRecyclerView.addOnScrollListener(this);
        this.mTouchSlop = ViewConfiguration.get(this.mRecyclerView.getContext()).getScaledTouchSlop();
    }

    public void setSwipeListener(OnSwipeListener onSwipeListener) {
        this.mSwipeListener = onSwipeListener;
    }

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private boolean mSwipeStarted;

        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (motionEvent == null || motionEvent2 == null || ListSwipeHelper.this.mSwipeView == null || ListSwipeHelper.this.mRecyclerView.getScrollState() != 0) {
                return false;
            }
            float fAbs = Math.abs(motionEvent2.getX() - motionEvent.getX());
            float fAbs2 = Math.abs(motionEvent2.getY() - motionEvent.getY());
            if (!this.mSwipeStarted && fAbs > ListSwipeHelper.this.mTouchSlop * 2 && fAbs * 0.5f > fAbs2) {
                this.mSwipeStarted = true;
                ListSwipeHelper.this.mRecyclerView.requestDisallowInterceptTouchEvent(true);
                ListSwipeHelper.this.mSwipeView.handleSwipeMoveStarted(ListSwipeHelper.this.mSwipeListener);
                if (ListSwipeHelper.this.mSwipeListener != null) {
                    ListSwipeHelper.this.mSwipeListener.onItemSwipeStarted(ListSwipeHelper.this.mSwipeView);
                }
            }
            if (this.mSwipeStarted) {
                ListSwipeHelper.this.mSwipeView.handleSwipeMove(-f, ListSwipeHelper.this.mRecyclerView.getChildViewHolder(ListSwipeHelper.this.mSwipeView));
            }
            return this.mSwipeStarted;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.mSwipeStarted = false;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!canStartSwipe(motionEvent, motionEvent2)) {
                return false;
            }
            ListSwipeHelper.this.mSwipeView.setFlingSpeed(f);
            return true;
        }

        boolean isSwipeStarted() {
            return this.mSwipeStarted;
        }

        private boolean canStartSwipe(MotionEvent motionEvent, MotionEvent motionEvent2) {
            return (motionEvent == null || motionEvent2 == null || ListSwipeHelper.this.mSwipeView == null || ListSwipeHelper.this.mRecyclerView.getScrollState() != 0 || ListSwipeHelper.this.mSwipeView.getSupportedSwipeDirection() == ListSwipeItem.SwipeDirection.NONE) ? false : true;
        }
    }
}
