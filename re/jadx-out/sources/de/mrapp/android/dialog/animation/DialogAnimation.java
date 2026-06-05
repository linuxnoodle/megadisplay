package de.mrapp.android.dialog.animation;

import android.R;
import android.content.Context;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import de.mrapp.android.dialog.builder.AbstractBuilder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DialogAnimation {
    private Float alpha;
    private long duration;
    private Interpolator interpolator;
    private long startDelay;

    protected static abstract class AbstractDialogAnimationBuilder<AnimationType extends DialogAnimation, BuilderType extends AbstractDialogAnimationBuilder<AnimationType, ?>> extends AbstractBuilder<AnimationType, BuilderType> {
        protected AbstractDialogAnimationBuilder(Context context) {
            super(context);
        }

        public BuilderType setInterpolator(Interpolator interpolator) {
            getProduct().setInterpolator(interpolator);
            return self();
        }

        public BuilderType setDuration(long j) {
            getProduct().setDuration(j);
            return self();
        }

        public BuilderType setStartDelay(long j) {
            getProduct().setStartDelay(j);
            return self();
        }

        public BuilderType setAlpha(float f) {
            getProduct().setAlpha(f);
            return self();
        }
    }

    protected final void setInterpolator(Interpolator interpolator) {
        Condition.INSTANCE.ensureNotNull(interpolator, "The interpolator may not be null");
        this.interpolator = interpolator;
    }

    protected final void setDuration(long j) {
        Condition.INSTANCE.ensureAtLeast(j, 1L, "The duration must be at least 1");
        this.duration = j;
    }

    protected final void setStartDelay(long j) {
        Condition.INSTANCE.ensureAtLeast(j, 0L, "The start delay must be at least 0");
        this.startDelay = j;
    }

    protected final void setAlpha(float f) {
        Condition.INSTANCE.ensureAtLeast(f, 0.0f, "The alpha must be at least 0");
        Condition.INSTANCE.ensureAtMaximum(f, 1.0f, "The alpha must be at maximum 1");
        this.alpha = Float.valueOf(f);
    }

    protected DialogAnimation(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.interpolator = new AccelerateDecelerateInterpolator();
        this.duration = context.getResources().getInteger(R.integer.config_shortAnimTime);
        this.startDelay = 0L;
        this.alpha = null;
    }

    public final Interpolator getInterpolator() {
        return this.interpolator;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getStartDelay() {
        return this.startDelay;
    }

    public final Float getAlpha() {
        return this.alpha;
    }
}
