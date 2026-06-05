package de.mrapp.android.dialog.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.SystemClock;
import de.mrapp.android.dialog.animation.DrawableAnimation;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractTransitionDrawable extends LayerDrawable {
    private static final int TRANSITION_NONE = 2;
    private static final int TRANSITION_RUNNING = 1;
    private static final int TRANSITION_STARTING = 0;
    private int duration;
    private DrawableAnimation.AnimationListener listener;
    private long startTime;
    private int state;

    protected abstract void onDraw(float f, Canvas canvas);

    protected abstract void onEndTransition();

    protected abstract void onStartTransition();

    private void notifyOnAnimationStart() {
        if (getListener() != null) {
            getListener().onAnimationStart();
        }
    }

    private void notifyOnAnimationEnd() {
        if (getListener() != null) {
            getListener().onAnimationEnd();
        }
    }

    public AbstractTransitionDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        this.listener = null;
        this.state = 2;
    }

    public final DrawableAnimation.AnimationListener getListener() {
        return this.listener;
    }

    public final void setListener(DrawableAnimation.AnimationListener animationListener) {
        this.listener = animationListener;
    }

    public final void startTransition(int i) {
        this.duration = i;
        this.state = 0;
        onStartTransition();
        notifyOnAnimationStart();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        int i = this.state;
        float fMin = 0.0f;
        if (i == 0) {
            this.startTime = SystemClock.uptimeMillis();
            this.state = 1;
            z = false;
        } else if (i != 1 || this.startTime < 0) {
            z = true;
        } else {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.startTime) / this.duration;
            z = fUptimeMillis >= 1.0f;
            fMin = Math.min(fUptimeMillis, 1.0f);
        }
        if (z) {
            onEndTransition();
            Drawable drawable = getDrawable(0);
            Drawable drawable2 = getDrawable(1);
            if (this.state != 2) {
                drawable2.draw(canvas);
            } else {
                drawable.draw(canvas);
            }
            notifyOnAnimationEnd();
            return;
        }
        onDraw(fMin, canvas);
        invalidateSelf();
    }
}
