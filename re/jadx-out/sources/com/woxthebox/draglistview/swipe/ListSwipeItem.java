package com.woxthebox.draglistview.swipe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.woxthebox.draglistview.R;
import com.woxthebox.draglistview.swipe.ListSwipeHelper;

/* JADX INFO: loaded from: classes2.dex */
public class ListSwipeItem extends RelativeLayout {
    private float mFlingSpeed;
    private View mLeftView;
    private int mLeftViewId;
    private float mMaxLeftTranslationX;
    private float mMaxRightTranslationX;
    private View mRightView;
    private int mRightViewId;
    private float mStartSwipeTranslationX;
    private SwipeDirection mSwipeDirection;
    private SwipeInStyle mSwipeInStyle;
    private ListSwipeHelper.OnSwipeListener mSwipeListener;
    private boolean mSwipeStarted;
    private SwipeState mSwipeState;
    private float mSwipeTranslationX;
    private View mSwipeView;
    private int mSwipeViewId;
    private RecyclerView.ViewHolder mViewHolder;

    public enum SwipeDirection {
        LEFT,
        RIGHT,
        LEFT_AND_RIGHT,
        NONE
    }

    public enum SwipeInStyle {
        APPEAR,
        SLIDE
    }

    private enum SwipeState {
        IDLE,
        SWIPING,
        ANIMATING
    }

    public ListSwipeItem(Context context) {
        super(context);
        this.mSwipeState = SwipeState.IDLE;
        this.mMaxLeftTranslationX = Float.MAX_VALUE;
        this.mMaxRightTranslationX = Float.MAX_VALUE;
        this.mSwipeDirection = SwipeDirection.LEFT_AND_RIGHT;
        this.mSwipeInStyle = SwipeInStyle.APPEAR;
    }

    public ListSwipeItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSwipeState = SwipeState.IDLE;
        this.mMaxLeftTranslationX = Float.MAX_VALUE;
        this.mMaxRightTranslationX = Float.MAX_VALUE;
        this.mSwipeDirection = SwipeDirection.LEFT_AND_RIGHT;
        this.mSwipeInStyle = SwipeInStyle.APPEAR;
        init(attributeSet);
    }

    public ListSwipeItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSwipeState = SwipeState.IDLE;
        this.mMaxLeftTranslationX = Float.MAX_VALUE;
        this.mMaxRightTranslationX = Float.MAX_VALUE;
        this.mSwipeDirection = SwipeDirection.LEFT_AND_RIGHT;
        this.mSwipeInStyle = SwipeInStyle.APPEAR;
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ListSwipeItem);
        this.mSwipeViewId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ListSwipeItem_swipeViewId, -1);
        this.mLeftViewId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ListSwipeItem_leftViewId, -1);
        this.mRightViewId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ListSwipeItem_rightViewId, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mSwipeView = findViewById(this.mSwipeViewId);
        this.mLeftView = findViewById(this.mLeftViewId);
        this.mRightView = findViewById(this.mRightViewId);
        View view = this.mLeftView;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.mRightView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag(obj);
        RecyclerView.ViewHolder viewHolder = this.mViewHolder;
        if (viewHolder == null || !viewHolder.isRecyclable()) {
            return;
        }
        resetSwipe(false);
    }

    public void setSwipeInStyle(SwipeInStyle swipeInStyle) {
        this.mSwipeInStyle = swipeInStyle;
    }

    public void setSupportedSwipeDirection(SwipeDirection swipeDirection) {
        this.mSwipeDirection = swipeDirection;
    }

    public SwipeDirection getSupportedSwipeDirection() {
        return this.mSwipeDirection;
    }

    public void setMaxLeftTranslationX(float f) {
        this.mMaxLeftTranslationX = Math.abs(f);
    }

    public float getMaxLeftTranslationX() {
        return Math.min(this.mMaxLeftTranslationX, getMeasuredWidth());
    }

    public void setMaxRightTranslationX(float f) {
        this.mMaxRightTranslationX = Math.abs(f);
    }

    public float getMaxRightTranslationX() {
        return Math.min(this.mMaxRightTranslationX, getMeasuredWidth());
    }

    void setSwipeListener(ListSwipeHelper.OnSwipeListener onSwipeListener) {
        this.mSwipeListener = onSwipeListener;
    }

    SwipeDirection getSwipedDirection() {
        if (this.mSwipeState != SwipeState.IDLE) {
            return SwipeDirection.NONE;
        }
        if (this.mSwipeView.getTranslationX() == (-getMaxLeftTranslationX())) {
            return SwipeDirection.LEFT;
        }
        if (this.mSwipeView.getTranslationX() == getMaxRightTranslationX()) {
            return SwipeDirection.RIGHT;
        }
        return SwipeDirection.NONE;
    }

    boolean isAnimating() {
        return this.mSwipeState == SwipeState.ANIMATING;
    }

    boolean isSwipeStarted() {
        return this.mSwipeStarted;
    }

    void setFlingSpeed(float f) {
        this.mFlingSpeed = f;
    }

    void swipeTranslationByX(float f) {
        setSwipeTranslationX(this.mSwipeTranslationX + f);
    }

    void setSwipeTranslationX(float f) {
        if ((this.mSwipeDirection == SwipeDirection.LEFT && f > 0.0f) || ((this.mSwipeDirection == SwipeDirection.RIGHT && f < 0.0f) || this.mSwipeDirection == SwipeDirection.NONE)) {
            f = 0.0f;
        }
        float fMin = Math.min(f, getMaxRightTranslationX());
        this.mSwipeTranslationX = fMin;
        float fMax = Math.max(fMin, -getMaxLeftTranslationX());
        this.mSwipeTranslationX = fMax;
        if (fMax == this.mSwipeView.getTranslationX()) {
            return;
        }
        this.mSwipeView.setTranslationX(this.mSwipeTranslationX);
        ListSwipeHelper.OnSwipeListener onSwipeListener = this.mSwipeListener;
        if (onSwipeListener != null) {
            onSwipeListener.onItemSwiping(this, this.mSwipeTranslationX);
        }
        float f2 = this.mSwipeTranslationX;
        if (f2 < 0.0f) {
            if (this.mSwipeInStyle == SwipeInStyle.SLIDE) {
                this.mRightView.setTranslationX(getMeasuredWidth() + this.mSwipeTranslationX);
            }
            this.mRightView.setVisibility(0);
            this.mLeftView.setVisibility(4);
            return;
        }
        if (f2 > 0.0f) {
            if (this.mSwipeInStyle == SwipeInStyle.SLIDE) {
                this.mLeftView.setTranslationX((-getMeasuredWidth()) + this.mSwipeTranslationX);
            }
            this.mLeftView.setVisibility(0);
            this.mRightView.setVisibility(4);
            return;
        }
        this.mRightView.setVisibility(4);
        this.mLeftView.setVisibility(4);
    }

    void animateToSwipeTranslationX(float f, Animator.AnimatorListener... animatorListenerArr) {
        if (f == this.mSwipeTranslationX) {
            return;
        }
        this.mSwipeState = SwipeState.ANIMATING;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "SwipeTranslationX", this.mSwipeTranslationX, f);
        objectAnimatorOfFloat.setDuration(250L);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        for (Animator.AnimatorListener animatorListener : animatorListenerArr) {
            if (animatorListener != null) {
                objectAnimatorOfFloat.addListener(animatorListener);
            }
        }
        objectAnimatorOfFloat.start();
    }

    void resetSwipe(boolean z) {
        if (isAnimating() || !this.mSwipeStarted) {
            return;
        }
        if (this.mSwipeTranslationX == 0.0f) {
            this.mSwipeListener = null;
        } else if (z) {
            animateToSwipeTranslationX(0.0f, new AnimatorListenerAdapter() { // from class: com.woxthebox.draglistview.swipe.ListSwipeItem.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ListSwipeItem.this.mSwipeState = SwipeState.IDLE;
                    ListSwipeItem.this.mSwipeListener = null;
                }
            });
        } else {
            setSwipeTranslationX(0.0f);
            this.mSwipeState = SwipeState.IDLE;
            this.mSwipeListener = null;
        }
        RecyclerView.ViewHolder viewHolder = this.mViewHolder;
        if (viewHolder != null && !viewHolder.isRecyclable()) {
            this.mViewHolder.setIsRecyclable(true);
        }
        this.mViewHolder = null;
        this.mFlingSpeed = 0.0f;
        this.mStartSwipeTranslationX = 0.0f;
        this.mSwipeStarted = false;
    }

    void handleSwipeUp(Animator.AnimatorListener animatorListener) {
        if (isAnimating() || !this.mSwipeStarted) {
            return;
        }
        AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.woxthebox.draglistview.swipe.ListSwipeItem.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ListSwipeItem.this.mSwipeState = SwipeState.IDLE;
                if (ListSwipeItem.this.mSwipeTranslationX == 0.0f) {
                    ListSwipeItem.this.resetSwipe(false);
                }
                if (ListSwipeItem.this.mViewHolder != null) {
                    ListSwipeItem.this.mViewHolder.setIsRecyclable(true);
                }
            }
        };
        if (this.mFlingSpeed == 0.0f && Math.abs(this.mStartSwipeTranslationX - this.mSwipeTranslationX) < getMeasuredWidth() / 3) {
            animateToSwipeTranslationX(this.mStartSwipeTranslationX, animatorListenerAdapter, animatorListener);
        } else {
            animateToSwipeTranslationX(getTranslateToXPosition(this.mStartSwipeTranslationX, this.mSwipeTranslationX, this.mFlingSpeed), animatorListenerAdapter, animatorListener);
        }
        this.mStartSwipeTranslationX = 0.0f;
        this.mFlingSpeed = 0.0f;
    }

    private float getTranslateToXPosition(float f, float f2, float f3) {
        int measuredWidth;
        if (f3 == 0.0f && Math.abs(f - f2) < getMeasuredWidth() / 3) {
            return f;
        }
        if (f2 < 0.0f) {
            if (f3 > 0.0f) {
                return 0.0f;
            }
            measuredWidth = -getMeasuredWidth();
        } else if (f == 0.0f) {
            if (f3 < 0.0f) {
                return 0.0f;
            }
            measuredWidth = getMeasuredWidth();
        } else {
            if (f3 <= 0.0f) {
                return 0.0f;
            }
            measuredWidth = getMeasuredWidth();
        }
        return measuredWidth;
    }

    void handleSwipeMoveStarted(ListSwipeHelper.OnSwipeListener onSwipeListener) {
        this.mStartSwipeTranslationX = this.mSwipeTranslationX;
        this.mSwipeListener = onSwipeListener;
    }

    void handleSwipeMove(float f, RecyclerView.ViewHolder viewHolder) {
        if (isAnimating()) {
            return;
        }
        this.mSwipeState = SwipeState.SWIPING;
        if (!this.mSwipeStarted) {
            this.mSwipeStarted = true;
            this.mViewHolder = viewHolder;
            viewHolder.setIsRecyclable(false);
        }
        swipeTranslationByX(f);
    }
}
