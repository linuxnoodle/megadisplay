package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.DialogAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class FadeAnimation extends DialogAnimation {

    public static class Builder extends DialogAnimation.AbstractDialogAnimationBuilder<FadeAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final FadeAnimation onCreateProduct() {
            return new FadeAnimation(getContext());
        }
    }

    protected FadeAnimation(Context context) {
        super(context);
    }
}
