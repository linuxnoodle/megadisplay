package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class CircleRevealAnimation extends DialogAnimation {
    private float radius;
    private int x;
    private int y;

    public static class Builder extends DialogAnimation.AbstractDialogAnimationBuilder<CircleRevealAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setX(int i) {
            ((CircleRevealAnimation) create()).setX(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setY(int i) {
            ((CircleRevealAnimation) create()).setY(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setRadius(float f) {
            ((CircleRevealAnimation) create()).setRadius(f);
            return (Builder) self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final CircleRevealAnimation onCreateProduct() {
            return new CircleRevealAnimation(getContext());
        }
    }

    protected final void setX(int i) {
        this.x = i;
    }

    protected final void setY(int i) {
        this.y = i;
    }

    protected final void setRadius(float f) {
        Condition.INSTANCE.ensureAtLeast(f, 0.0f, "The radius must be at least 0");
        this.radius = f;
    }

    protected CircleRevealAnimation(Context context) {
        super(context);
        this.x = 0;
        this.y = 0;
        this.radius = 0.0f;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public final float getRadius() {
        return this.radius;
    }
}
