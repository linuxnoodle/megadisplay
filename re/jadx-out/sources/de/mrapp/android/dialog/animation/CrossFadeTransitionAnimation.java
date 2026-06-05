package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.BackgroundAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class CrossFadeTransitionAnimation extends BackgroundAnimation {

    public static class Builder extends BackgroundAnimation.AbstractBackgroundAnimationBuilder<CrossFadeTransitionAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final CrossFadeTransitionAnimation onCreateProduct() {
            return new CrossFadeTransitionAnimation(getContext());
        }
    }

    protected CrossFadeTransitionAnimation(Context context) {
        super(context);
    }
}
