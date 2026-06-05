package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.DrawableAnimation;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BackgroundAnimation extends DrawableAnimation {

    protected static abstract class AbstractBackgroundAnimationBuilder<AnimationType extends BackgroundAnimation, BuilderType extends AbstractBackgroundAnimationBuilder<AnimationType, ?>> extends DrawableAnimation.AbstractDrawableAnimationBuilder<AnimationType, BuilderType> {
        protected AbstractBackgroundAnimationBuilder(Context context) {
            super(context);
        }
    }

    protected BackgroundAnimation(Context context) {
        super(context);
    }
}
