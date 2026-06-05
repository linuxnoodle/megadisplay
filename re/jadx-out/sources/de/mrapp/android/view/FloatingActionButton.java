package de.mrapp.android.view;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import de.mrapp.android.util.ThemeUtil;
import de.mrapp.android.util.ViewUtil;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class FloatingActionButton extends RelativeLayout {
    private int activatedColor;
    private int color;
    private int disabledColor;
    private ImageButton imageButton;
    private int pressedColor;
    private Size size;
    private long visibilityAnimationDuration;
    private ViewPropertyAnimator visibilityAnimator;

    public enum Size {
        NORMAL(0),
        SMALL(1),
        LARGE(2);

        private final int value;

        Size(int i) {
            this.value = i;
        }

        protected int getValue() {
            return this.value;
        }

        protected static Size fromValue(int i) {
            for (Size size : values()) {
                if (size.value == i) {
                    return size;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    private void initialize(AttributeSet attributeSet) {
        inflateLayout();
        obtainStyledAttributes(attributeSet);
        adaptShadow();
        adaptImageButtonSize();
        adaptImageButtonBackground();
    }

    private void inflateLayout() {
        this.imageButton = new ImageButton(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
        layoutParams.addRule(13, -1);
        addView(this.imageButton, layoutParams);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton);
        try {
            obtainSize(typedArrayObtainStyledAttributes);
            obtainColor(typedArrayObtainStyledAttributes);
            obtainActivatedColor(typedArrayObtainStyledAttributes);
            obtainPressedColor(typedArrayObtainStyledAttributes);
            obtainDisabledColor(typedArrayObtainStyledAttributes);
            obtainIcon(typedArrayObtainStyledAttributes);
            obtainVisibilityAnimationDuration(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainSize(TypedArray typedArray) {
        this.size = Size.fromValue(typedArray.getInt(R.styleable.FloatingActionButton_size, Size.NORMAL.getValue()));
    }

    private void obtainColor(TypedArray typedArray) {
        this.color = typedArray.getColor(R.styleable.FloatingActionButton_android_color, ThemeUtil.getColor(getContext(), R.attr.colorAccent));
    }

    private void obtainActivatedColor(TypedArray typedArray) {
        this.activatedColor = typedArray.getColor(R.styleable.FloatingActionButton_activatedColor, getControlActivatedColor());
    }

    private void obtainPressedColor(TypedArray typedArray) {
        this.pressedColor = typedArray.getColor(R.styleable.FloatingActionButton_pressedColor, getControlHighlightColor());
    }

    private void obtainDisabledColor(TypedArray typedArray) {
        this.disabledColor = typedArray.getColor(R.styleable.FloatingActionButton_disabledColor, ContextCompat.getColor(getContext(), R.color.floating_action_button_disabled_color));
    }

    private void obtainIcon(TypedArray typedArray) {
        setIcon(typedArray.getDrawable(R.styleable.FloatingActionButton_android_icon));
    }

    private void obtainVisibilityAnimationDuration(TypedArray typedArray) {
        setVisibilityAnimationDuration(typedArray.getInteger(R.styleable.FloatingActionButton_visibilityAnimationDuration, getResources().getInteger(R.integer.floating_action_button_visibility_animation_duration)));
    }

    private void adaptShadow() {
        if (getSize() == Size.NORMAL) {
            setBackgroundResource(R.drawable.floating_action_button_shadow_normal);
        } else if (getSize() == Size.SMALL) {
            setBackgroundResource(R.drawable.floating_action_button_shadow_small);
        } else {
            setBackgroundResource(R.drawable.floating_action_button_shadow_large);
        }
    }

    private void adaptImageButtonSize() {
        int pixelSize = getPixelSize();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.imageButton.getLayoutParams();
        layoutParams.width = pixelSize;
        layoutParams.height = pixelSize;
        this.imageButton.setLayoutParams(layoutParams);
        this.imageButton.requestLayout();
    }

    private void adaptImageButtonBackground() {
        ViewUtil.setBackground(this.imageButton, new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{getPressedColor()}), createStateListBackgroundDrawable(), null));
    }

    private Drawable createStateListBackgroundDrawable() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_enabled, android.R.attr.state_activated}, createActivatedBackgroundDrawable());
        stateListDrawable.addState(new int[]{android.R.attr.state_enabled}, createBackgroundDrawable(getColor()));
        stateListDrawable.addState(new int[0], createDisabledBackgroundDrawable());
        return stateListDrawable;
    }

    private Drawable createActivatedBackgroundDrawable() {
        return new LayerDrawable(new Drawable[]{createBackgroundDrawable(getColor()), createBackgroundDrawable(getActivatedColor())});
    }

    private Drawable createPressedBackgroundDrawable() {
        return new LayerDrawable(new Drawable[]{createBackgroundDrawable(getColor()), createBackgroundDrawable(getPressedColor())});
    }

    private Drawable createDisabledBackgroundDrawable() {
        return new LayerDrawable(new Drawable[]{createBackgroundDrawable(getColor()), createBackgroundDrawable(getDisabledColor())});
    }

    private Drawable createBackgroundDrawable(int i) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    private int getPixelSize() {
        if (getSize() == Size.NORMAL) {
            return getResources().getDimensionPixelSize(R.dimen.floating_action_button_size_normal);
        }
        if (getSize() == Size.SMALL) {
            return getResources().getDimensionPixelSize(R.dimen.floating_action_button_size_small);
        }
        return getResources().getDimensionPixelSize(R.dimen.floating_action_button_size_large);
    }

    private int getControlHighlightColor() {
        return getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.colorControlHighlight}).getColor(0, 0);
    }

    private int getControlActivatedColor() {
        return getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.colorControlActivated}).getColor(0, 0);
    }

    private void animateVisibility(int i, long j) {
        ViewPropertyAnimator viewPropertyAnimator = this.visibilityAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
        Animator.AnimatorListener animatorListenerCreateVisibilityAnimatorListener = createVisibilityAnimatorListener(i);
        float f = i == 0 ? 1.0f : 0.0f;
        this.visibilityAnimator = animate().setInterpolator(new AccelerateDecelerateInterpolator()).scaleX(f).scaleY(f).setDuration(Math.round(Math.abs(getScaleX() - f) * j)).setListener(animatorListenerCreateVisibilityAnimatorListener);
    }

    private Animator.AnimatorListener createVisibilityAnimatorListener(final int i) {
        return new Animator.AnimatorListener() { // from class: de.mrapp.android.view.FloatingActionButton.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                int i2 = i;
                if (i2 == 0) {
                    FloatingActionButton.super.setVisibility(i2);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FloatingActionButton.super.setVisibility(i);
                FloatingActionButton.this.visibilityAnimator = null;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                FloatingActionButton.this.visibilityAnimator = null;
            }
        };
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final Size getSize() {
        return this.size;
    }

    public final void setSize(Size size) {
        Condition.INSTANCE.ensureNotNull(size, "The size may not be null");
        this.size = size;
        adaptShadow();
        adaptImageButtonSize();
        requestLayout();
    }

    public final Drawable getIcon() {
        return this.imageButton.getDrawable();
    }

    public final void setIcon(Drawable drawable) {
        this.imageButton.setImageDrawable(drawable);
    }

    public final void setIcon(int i) {
        this.imageButton.setImageResource(i);
    }

    public final int getColor() {
        return this.color;
    }

    public final void setColor(int i) {
        this.color = i;
        adaptImageButtonBackground();
    }

    public final int getActivatedColor() {
        return this.activatedColor;
    }

    public final void setActivatedColor(int i) {
        this.activatedColor = i;
        adaptImageButtonBackground();
    }

    public final int getPressedColor() {
        return this.pressedColor;
    }

    public final void setPressedColor(int i) {
        this.pressedColor = i;
        adaptImageButtonBackground();
    }

    public final int getDisabledColor() {
        return this.disabledColor;
    }

    public final void setDisabledColor(int i) {
        this.disabledColor = i;
        adaptImageButtonBackground();
    }

    public final long getVisibilityAnimationDuration() {
        return this.visibilityAnimationDuration;
    }

    public final void setVisibilityAnimationDuration(long j) {
        Condition.INSTANCE.ensureAtLeast(j, 0L, "The animation duration must be at least 0");
        this.visibilityAnimationDuration = j;
    }

    public final void setVisibility(int i, boolean z) {
        if (z) {
            animateVisibility(i, getVisibilityAnimationDuration());
        } else {
            setVisibility(i);
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        float f = i == 0 ? 1.0f : 0.0f;
        setScaleX(f);
        setScaleY(f);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.imageButton.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.imageButton.setOnLongClickListener(onLongClickListener);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.imageButton.setEnabled(z);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int pixelSize = getPixelSize() + getResources().getDimensionPixelSize(R.dimen.floating_action_button_shadow_size);
        setMeasuredDimension(pixelSize, pixelSize);
    }
}
