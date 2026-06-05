package com.woxthebox.draglistview;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
class AutoScroller {
    private static final int AUTO_SCROLL_UPDATE_DELAY = 12;
    private static final int COLUMN_SCROLL_UPDATE_DELAY = 1000;
    private static final int SCROLL_SPEED_DP = 8;
    private boolean mIsAutoScrolling;
    private long mLastScrollTime;
    private AutoScrollListener mListener;
    private int mScrollSpeed;
    private Handler mHandler = new Handler();
    private AutoScrollMode mAutoScrollMode = AutoScrollMode.POSITION;

    interface AutoScrollListener {
        void onAutoScrollColumnBy(int i);

        void onAutoScrollPositionBy(int i, int i2);
    }

    enum AutoScrollMode {
        POSITION,
        COLUMN
    }

    enum ScrollDirection {
        UP,
        DOWN,
        LEFT,
        RIGHT
    }

    AutoScroller(Context context, AutoScrollListener autoScrollListener) {
        this.mListener = autoScrollListener;
        this.mScrollSpeed = (int) (context.getResources().getDisplayMetrics().density * 8.0f);
    }

    void setAutoScrollMode(AutoScrollMode autoScrollMode) {
        this.mAutoScrollMode = autoScrollMode;
    }

    boolean isAutoScrolling() {
        return this.mIsAutoScrolling;
    }

    void stopAutoScroll() {
        this.mIsAutoScrolling = false;
    }

    /* JADX INFO: renamed from: com.woxthebox.draglistview.AutoScroller$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection;

        static {
            int[] iArr = new int[ScrollDirection.values().length];
            $SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection = iArr;
            try {
                iArr[ScrollDirection.UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection[ScrollDirection.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection[ScrollDirection.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection[ScrollDirection.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    void startAutoScroll(ScrollDirection scrollDirection) {
        int i = AnonymousClass3.$SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection[scrollDirection.ordinal()];
        if (i == 1) {
            startAutoScrollPositionBy(0, this.mScrollSpeed);
            return;
        }
        if (i == 2) {
            startAutoScrollPositionBy(0, -this.mScrollSpeed);
            return;
        }
        if (i == 3) {
            if (this.mAutoScrollMode == AutoScrollMode.POSITION) {
                startAutoScrollPositionBy(this.mScrollSpeed, 0);
                return;
            } else {
                startAutoScrollColumnBy(1);
                return;
            }
        }
        if (i != 4) {
            return;
        }
        if (this.mAutoScrollMode == AutoScrollMode.POSITION) {
            startAutoScrollPositionBy(-this.mScrollSpeed, 0);
        } else {
            startAutoScrollColumnBy(-1);
        }
    }

    private void startAutoScrollPositionBy(int i, int i2) {
        if (this.mIsAutoScrolling) {
            return;
        }
        this.mIsAutoScrolling = true;
        autoScrollPositionBy(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoScrollPositionBy(final int i, final int i2) {
        if (this.mIsAutoScrolling) {
            this.mListener.onAutoScrollPositionBy(i, i2);
            this.mHandler.postDelayed(new Runnable() { // from class: com.woxthebox.draglistview.AutoScroller.1
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.autoScrollPositionBy(i, i2);
                }
            }, 12L);
        }
    }

    private void startAutoScrollColumnBy(int i) {
        if (this.mIsAutoScrolling) {
            return;
        }
        this.mIsAutoScrolling = true;
        autoScrollColumnBy(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoScrollColumnBy(final int i) {
        if (this.mIsAutoScrolling) {
            if (System.currentTimeMillis() - this.mLastScrollTime > 1000) {
                this.mListener.onAutoScrollColumnBy(i);
                this.mLastScrollTime = System.currentTimeMillis();
            } else {
                this.mListener.onAutoScrollColumnBy(0);
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.woxthebox.draglistview.AutoScroller.2
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.autoScrollColumnBy(i);
                }
            }, 12L);
        }
    }
}
