package de.mrapp.android.view.drawable;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final long ANGLE_ANIMATION_DURATION = 2000;
    private static final int MAX_DEGREES = 360;
    private static final int MIN_SWEEP_ANGLE = 30;
    private static final long SWEEP_ANIMATION_DURATION = 600;
    private ObjectAnimator angleAnimator;
    private boolean appearing;
    private RectF bounds;
    private final int color;
    private float currentGlobalAngle;
    private float currentGlobalAngleOffset;
    private float currentSweepAngle;
    private Paint paint;
    private ObjectAnimator sweepAnimator;
    private final int thickness;

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    private void initializePaint() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(getThickness());
        this.paint.setColor(getColor());
    }

    private void initializeAnimators() {
        initializeAngleAnimator();
        initializeSweepAnimator();
    }

    private void initializeAngleAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, createAngleProperty(), 360.0f);
        this.angleAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.angleAnimator.setDuration(2000L);
        this.angleAnimator.setRepeatMode(1);
        this.angleAnimator.setRepeatCount(-1);
    }

    private Property<CircularProgressDrawable, Float> createAngleProperty() {
        return new Property<CircularProgressDrawable, Float>(Float.class, "angle") { // from class: de.mrapp.android.view.drawable.CircularProgressDrawable.1
            @Override // android.util.Property
            public Float get(CircularProgressDrawable circularProgressDrawable) {
                return Float.valueOf(CircularProgressDrawable.this.currentGlobalAngle);
            }

            @Override // android.util.Property
            public void set(CircularProgressDrawable circularProgressDrawable, Float f) {
                CircularProgressDrawable.this.currentGlobalAngle = f.floatValue();
                CircularProgressDrawable.this.invalidateSelf();
            }
        };
    }

    private void initializeSweepAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, createSweepProperty(), 300.0f);
        this.sweepAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        this.sweepAnimator.setDuration(SWEEP_ANIMATION_DURATION);
        this.sweepAnimator.setRepeatMode(1);
        this.sweepAnimator.setRepeatCount(-1);
        this.sweepAnimator.addListener(createSweepAnimatorListener());
    }

    private Property<CircularProgressDrawable, Float> createSweepProperty() {
        return new Property<CircularProgressDrawable, Float>(Float.class, "arc") { // from class: de.mrapp.android.view.drawable.CircularProgressDrawable.2
            @Override // android.util.Property
            public Float get(CircularProgressDrawable circularProgressDrawable) {
                return Float.valueOf(CircularProgressDrawable.this.currentSweepAngle);
            }

            @Override // android.util.Property
            public void set(CircularProgressDrawable circularProgressDrawable, Float f) {
                CircularProgressDrawable.this.currentSweepAngle = f.floatValue();
                CircularProgressDrawable.this.invalidateSelf();
            }
        };
    }

    private Animator.AnimatorListener createSweepAnimatorListener() {
        return new Animator.AnimatorListener() { // from class: de.mrapp.android.view.drawable.CircularProgressDrawable.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.appearing = !r3.appearing;
                if (CircularProgressDrawable.this.appearing) {
                    CircularProgressDrawable circularProgressDrawable = CircularProgressDrawable.this;
                    circularProgressDrawable.currentGlobalAngleOffset = (circularProgressDrawable.currentGlobalAngleOffset + 60.0f) % 360.0f;
                }
            }
        };
    }

    public CircularProgressDrawable(int i, int i2) {
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The thickness must be at least 1");
        this.color = i;
        this.thickness = i2;
        this.bounds = new RectF();
        initializePaint();
        initializeAnimators();
    }

    public final int getColor() {
        return this.color;
    }

    public final int getThickness() {
        return this.thickness;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f;
        float f2 = this.currentGlobalAngle - this.currentGlobalAngleOffset;
        float f3 = this.currentSweepAngle;
        if (this.appearing) {
            f = f3 + 30.0f;
        } else {
            f2 += f3;
            f = (360.0f - f3) - 30.0f;
        }
        canvas.drawArc(this.bounds, f2, f, false, this.paint);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        if (isRunning()) {
            return;
        }
        this.angleAnimator.start();
        this.sweepAnimator.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        if (isRunning()) {
            this.angleAnimator.cancel();
            this.sweepAnimator.cancel();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.angleAnimator.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int i = rect.right - rect.left;
        int i2 = rect.bottom - rect.top;
        if (i < i2) {
            this.bounds.left = rect.left + (this.thickness / 2.0f) + 0.5f;
            this.bounds.right = (rect.right - (this.thickness / 2.0f)) - 0.5f;
            float f = (i2 - i) / 2.0f;
            this.bounds.top = rect.top + f + (this.thickness / 2.0f) + 0.5f;
            this.bounds.bottom = ((rect.bottom - f) - (this.thickness / 2.0f)) - 0.5f;
            return;
        }
        float f2 = (i - i2) / 2.0f;
        this.bounds.left = rect.left + f2 + (this.thickness / 2.0f) + 0.5f;
        this.bounds.right = ((rect.right - f2) - (this.thickness / 2.0f)) - 0.5f;
        this.bounds.top = rect.top + (this.thickness / 2.0f) + 0.5f;
        this.bounds.bottom = (rect.bottom - (this.thickness / 2.0f)) - 0.5f;
    }
}
