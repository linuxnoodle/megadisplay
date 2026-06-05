package de.mrapp.android.dialog.animation;

import android.content.Context;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class RectangleRevealAnimation extends DialogAnimation {
    private Integer height;
    private Integer width;
    private Integer x;
    private Integer y;

    public static class Builder extends DialogAnimation.AbstractDialogAnimationBuilder<RectangleRevealAnimation, Builder> {
        public Builder(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setX(int i) {
            ((RectangleRevealAnimation) create()).setX(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setY(int i) {
            ((RectangleRevealAnimation) create()).setY(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setWidth(int i) {
            ((RectangleRevealAnimation) create()).setWidth(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHeight(int i) {
            ((RectangleRevealAnimation) create()).setHeight(i);
            return (Builder) self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final RectangleRevealAnimation onCreateProduct() {
            return new RectangleRevealAnimation(getContext());
        }
    }

    protected final void setX(int i) {
        this.x = Integer.valueOf(i);
    }

    protected final void setY(int i) {
        this.y = Integer.valueOf(i);
    }

    protected final void setWidth(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The width must be at least 0");
        this.width = Integer.valueOf(i);
    }

    protected final void setHeight(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The height must be at least 0");
        this.height = Integer.valueOf(i);
    }

    protected RectangleRevealAnimation(Context context) {
        super(context);
        this.x = null;
        this.y = null;
        this.width = null;
        this.height = null;
    }

    public final Integer getX() {
        return this.x;
    }

    public final Integer getY() {
        return this.y;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getHeight() {
        return this.height;
    }
}
