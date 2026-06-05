package de.mrapp.android.util.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import de.mrapp.android.util.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScrimInsetsLayout extends FrameLayout {
    private Callback callback;
    private Drawable insetDrawable;
    private Rect insets;

    public interface Callback {
        void onInsetsChanged(Rect rect);
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        this.insets = null;
        this.callback = null;
        setWillNotDraw(true);
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ScrimInsetsLayout, i, i2);
            try {
                obtainInsetForeground(typedArrayObtainStyledAttributes);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private void obtainInsetForeground(TypedArray typedArray) {
        int color = typedArray.getColor(R.styleable.ScrimInsetsLayout_insetDrawable, -1);
        if (color == -1) {
            Drawable drawable = typedArray.getDrawable(R.styleable.ScrimInsetsLayout_insetDrawable);
            if (drawable != null) {
                setInsetDrawable(drawable);
                return;
            } else {
                setInsetColor(ContextCompat.getColor(getContext(), R.color.scrim_insets_layout_insets_drawable_default_value));
                return;
            }
        }
        setInsetColor(color);
    }

    private void notifyOnInsetsChanged(Rect rect) {
        Callback callback = this.callback;
        if (callback != null) {
            callback.onInsetsChanged(rect);
        }
    }

    public ScrimInsetsLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet, 0, 0);
    }

    public ScrimInsetsLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public ScrimInsetsLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, i2);
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final Drawable getInsetDrawable() {
        return this.insetDrawable;
    }

    public final void setInsetDrawable(Drawable drawable) {
        this.insetDrawable = drawable;
        invalidate();
    }

    public final void setInsetColor(int i) {
        setInsetDrawable(new ColorDrawable(i));
    }

    public final Rect getInsets() {
        return this.insets;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.insets == null || this.insetDrawable == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.insetDrawable.setBounds(0, 0, width, this.insets.top);
        this.insetDrawable.draw(canvas);
        this.insetDrawable.setBounds(0, height - this.insets.bottom, width, height);
        this.insetDrawable.draw(canvas);
        this.insetDrawable.setBounds(0, this.insets.top, this.insets.left, height - this.insets.bottom);
        this.insetDrawable.draw(canvas);
        this.insetDrawable.setBounds(width - this.insets.right, this.insets.top, width, height - this.insets.bottom);
        this.insetDrawable.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        this.insets = new Rect(rect);
        setWillNotDraw(this.insetDrawable == null);
        ViewCompat.postInvalidateOnAnimation(this);
        notifyOnInsetsChanged(rect);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.insetDrawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.insetDrawable;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
