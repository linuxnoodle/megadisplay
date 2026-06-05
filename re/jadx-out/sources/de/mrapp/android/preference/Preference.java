package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class Preference extends androidx.preference.Preference {
    private ColorStateList tintList;
    private PorterDuff.Mode tintMode;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        this.tintList = null;
        this.tintMode = PorterDuff.Mode.SRC_ATOP;
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Preference, i, i2);
        try {
            obtainIcon(typedArrayObtainStyledAttributes);
            obtainTint(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainIcon(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.Preference_android_icon, -1);
        if (resourceId != -1) {
            setIcon(AppCompatResources.getDrawable(getContext(), resourceId));
        }
    }

    private void obtainTint(TypedArray typedArray) {
        setIconTintList(typedArray.getColorStateList(R.styleable.Preference_android_tint));
    }

    private void adaptIconTint() {
        Drawable icon = getIcon();
        if (icon != null) {
            DrawableCompat.setTintList(icon, this.tintList);
            DrawableCompat.setTintMode(icon, this.tintMode);
        }
    }

    public Preference(Context context) {
        this(context, null);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.preferenceStyle);
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    @Override // androidx.preference.Preference
    public void performClick() {
        super.performClick();
    }

    public final ColorStateList getIconTintList() {
        return this.tintList;
    }

    public final void setIconTint(int i) {
        setIconTintList(ColorStateList.valueOf(i));
    }

    public final void setIconTintList(ColorStateList colorStateList) {
        this.tintList = colorStateList;
        adaptIconTint();
    }

    public final PorterDuff.Mode getIconTintMode() {
        return this.tintMode;
    }

    public final void setIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The icon tint mode may not be null");
        this.tintMode = mode;
        adaptIconTint();
    }

    @Override // androidx.preference.Preference
    public void setIcon(Drawable drawable) {
        super.setIcon(drawable);
        adaptIconTint();
    }
}
