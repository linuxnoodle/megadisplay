package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class CircleTransitionAnimation extends BackgroundAnimation {
    private int radius;
    private Integer x;
    private Integer y;

    public static class Builder extends BackgroundAnimation.AbstractBackgroundAnimationBuilder<CircleTransitionAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setX(int i) {
            ((CircleTransitionAnimation) getProduct()).setX(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setY(int i) {
            ((CircleTransitionAnimation) getProduct()).setY(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setRadius(int i) {
            ((CircleTransitionAnimation) getProduct()).setRadius(i);
            return (Builder) self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final CircleTransitionAnimation onCreateProduct() {
            return new CircleTransitionAnimation(getContext());
        }
    }

    protected final void setX(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The horizontal position must be at least 0");
        this.x = Integer.valueOf(i);
    }

    protected final void setY(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The vertical position must be at least 0");
        this.y = Integer.valueOf(i);
    }

    protected final void setRadius(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The radius must be at least 0");
        this.radius = i;
    }

    protected CircleTransitionAnimation(Context context) {
        super(context);
        this.radius = 0;
        this.x = null;
        this.y = null;
    }

    public final Integer getX() {
        return this.x;
    }

    public final Integer getY() {
        return this.y;
    }

    public final int getRadius() {
        return this.radius;
    }
}
