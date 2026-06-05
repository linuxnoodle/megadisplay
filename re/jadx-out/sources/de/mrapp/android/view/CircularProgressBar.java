package de.mrapp.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import de.mrapp.android.util.ThemeUtil;
import de.mrapp.android.view.drawable.CircularProgressDrawable;

/* JADX INFO: loaded from: classes2.dex */
public class CircularProgressBar extends View {
    private CircularProgressDrawable circularProgressDrawable;
    private int color;
    private int thickness;

    private void initialize(AttributeSet attributeSet) {
        obtainStyledAttributes(attributeSet);
        initializeDrawable();
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.CircularProgressBar);
        try {
            obtainColor(typedArrayObtainStyledAttributes);
            obtainThickness(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainColor(TypedArray typedArray) {
        this.color = typedArray.getColor(R.styleable.CircularProgressBar_android_color, ThemeUtil.getColor(getContext(), R.attr.colorAccent));
    }

    private void obtainThickness(TypedArray typedArray) {
        this.thickness = typedArray.getDimensionPixelSize(R.styleable.CircularProgressBar_android_thickness, getContext().getResources().getDimensionPixelSize(R.dimen.circular_progress_bar_thickness_normal));
    }

    private void initializeDrawable() {
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getColor(), getThickness());
        this.circularProgressDrawable = circularProgressDrawable;
        circularProgressDrawable.setCallback(this);
    }

    public CircularProgressBar(Context context) {
        this(context, null);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final int getColor() {
        return this.color;
    }

    public final void setColor(int i) {
        this.color = i;
        initializeDrawable();
        invalidate();
    }

    public final int getThickness() {
        return this.thickness;
    }

    public final void setThickness(int i) {
        this.thickness = i;
        initializeDrawable();
        invalidate();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        this.circularProgressDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        CircularProgressDrawable circularProgressDrawable = this.circularProgressDrawable;
        if (circularProgressDrawable != null) {
            circularProgressDrawable.start();
        }
    }

    @Override // android.view.View
    protected final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        CircularProgressDrawable circularProgressDrawable = this.circularProgressDrawable;
        if (circularProgressDrawable != null) {
            if (i == 0) {
                circularProgressDrawable.start();
            } else {
                circularProgressDrawable.stop();
            }
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i) + getPaddingLeft() + getPaddingRight(), View.MeasureSpec.getSize(i2) + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.circularProgressDrawable.setBounds(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
    }

    @Override // android.view.View
    protected final boolean verifyDrawable(Drawable drawable) {
        return drawable == this.circularProgressDrawable || super.verifyDrawable(drawable);
    }
}
