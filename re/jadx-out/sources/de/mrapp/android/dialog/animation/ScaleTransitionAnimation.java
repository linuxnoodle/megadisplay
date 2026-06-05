package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.DrawableAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class ScaleTransitionAnimation extends DrawableAnimation {

    public static class Builder extends DrawableAnimation.AbstractDrawableAnimationBuilder<ScaleTransitionAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final ScaleTransitionAnimation onCreateProduct() {
            return new ScaleTransitionAnimation(getContext());
        }
    }

    protected ScaleTransitionAnimation(Context context) {
        super(context);
    }
}
