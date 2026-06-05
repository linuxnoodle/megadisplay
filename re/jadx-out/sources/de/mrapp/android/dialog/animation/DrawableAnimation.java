package de.mrapp.android.dialog.animation;

import android.R;
import android.content.Context;
import de.mrapp.android.dialog.builder.AbstractBuilder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DrawableAnimation {
    private int duration;
    private AnimationListener listener;

    public interface AnimationListener {
        void onAnimationEnd();

        void onAnimationStart();
    }

    protected static abstract class AbstractDrawableAnimationBuilder<AnimationType extends DrawableAnimation, BuilderType extends AbstractDrawableAnimationBuilder<AnimationType, ?>> extends AbstractBuilder<AnimationType, BuilderType> {
        protected AbstractDrawableAnimationBuilder(Context context) {
            super(context);
        }

        public BuilderType setDuration(int i) {
            getProduct().setDuration(i);
            return self();
        }

        public BuilderType setListener(AnimationListener animationListener) {
            getProduct().setListener(animationListener);
            return self();
        }
    }

    protected final void setDuration(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The duration must be at least 1");
        this.duration = i;
    }

    protected final void setListener(AnimationListener animationListener) {
        this.listener = animationListener;
    }

    protected DrawableAnimation(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.duration = context.getResources().getInteger(R.integer.config_longAnimTime);
        this.listener = null;
    }

    public final int getDuration() {
        return this.duration;
    }

    public final AnimationListener getListener() {
        return this.listener;
    }
}
