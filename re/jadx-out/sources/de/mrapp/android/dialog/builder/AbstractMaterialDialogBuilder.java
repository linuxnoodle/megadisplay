package de.mrapp.android.dialog.builder;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import androidx.core.content.ContextCompat;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder;
import de.mrapp.android.dialog.model.MaterialDialog;
import de.mrapp.android.util.ThemeUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMaterialDialogBuilder<DialogType extends MaterialDialog, BuilderType extends AbstractMaterialDialogBuilder<DialogType, ?>> extends AbstractBuilder<DialogType, BuilderType> {
    private int themeResourceId;

    private void initialize(int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(R.attr.materialDialogTheme, typedValue, true);
            i = typedValue.resourceId;
            if (i == 0) {
                i = R.style.MaterialDialog_Light;
            }
        }
        setContext(new ContextThemeWrapper(getContext(), i));
        this.themeResourceId = i;
        obtainStyledAttributes(i);
    }

    private void obtainFullscreen(int i) {
        setFullscreen(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogFullscreen}).getBoolean(0, false));
    }

    private void obtainGravity(int i) {
        setGravity(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogGravity}).getInteger(0, 17));
    }

    private void obtainWidth(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogWidth});
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_width);
        try {
            setWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize));
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            setWidth(typedArrayObtainStyledAttributes.getInteger(0, dimensionPixelSize));
        }
    }

    private void obtainHeight(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeight});
        try {
            setHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2));
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            setHeight(typedArrayObtainStyledAttributes.getInteger(0, -2));
        }
    }

    private void obtainMaxWidth(int i) {
        int dimensionPixelSize;
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogMaxWidth});
        try {
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_max_width);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            dimensionPixelSize = -1;
        }
        try {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize));
        } catch (Resources.NotFoundException | UnsupportedOperationException unused2) {
            setMaxWidth(-1);
        }
    }

    private void obtainMaxHeight(int i) {
        int dimensionPixelSize;
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogMaxHeight});
        try {
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_max_height);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            dimensionPixelSize = -1;
        }
        try {
            setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize));
        } catch (Resources.NotFoundException | UnsupportedOperationException unused2) {
            setMaxHeight(-1);
        }
    }

    private void obtainMargin(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogMarginLeft, R.attr.materialDialogMarginTop, R.attr.materialDialogMarginRight, R.attr.materialDialogMarginBottom});
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_horizontal_margin);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_vertical_margin);
        setMargin(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, dimensionPixelSize), typedArrayObtainStyledAttributes.getDimensionPixelSize(1, dimensionPixelSize2), typedArrayObtainStyledAttributes.getDimensionPixelSize(2, dimensionPixelSize), typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize2));
    }

    private void obtainPadding(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogPaddingLeft, R.attr.materialDialogPaddingTop, R.attr.materialDialogPaddingRight, R.attr.materialDialogPaddingBottom});
        setPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_left_padding)), typedArrayObtainStyledAttributes.getDimensionPixelSize(1, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_top_padding)), typedArrayObtainStyledAttributes.getDimensionPixelSize(2, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_right_padding)), typedArrayObtainStyledAttributes.getDimensionPixelSize(3, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_bottom_padding)));
    }

    private void obtainFitsSystemWindows(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogFitsSystemWindowsLeft, R.attr.materialDialogFitsSystemWindowsTop, R.attr.materialDialogFitsSystemWindowsRight, R.attr.materialDialogFitsSystemWindowsBottom});
        setFitsSystemWindows(typedArrayObtainStyledAttributes.getBoolean(0, true), typedArrayObtainStyledAttributes.getBoolean(1, true), typedArrayObtainStyledAttributes.getBoolean(2, true), typedArrayObtainStyledAttributes.getBoolean(3, true));
    }

    private void obtainWindowBackground(int i) {
        int resourceId = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogWindowBackground}).getResourceId(0, 0);
        if (resourceId != 0) {
            setWindowBackground(resourceId);
        } else {
            setWindowBackground(R.drawable.material_dialog_background);
        }
    }

    private void obtainBackground(int i) {
        int resourceId = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogBackground}).getResourceId(0, 0);
        if (resourceId != 0) {
            setBackground(resourceId);
        } else {
            setBackgroundColor(ContextCompat.getColor(getContext(), R.color.dialog_background_light));
        }
    }

    private void obtainMessageColor(int i) {
        setMessageColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogMessageColor}).getColor(0, ThemeUtil.getColor(getContext(), i, android.R.attr.textColorSecondary)));
    }

    private void obtainTitleColor(int i) {
        setTitleColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTitleColor}).getColor(0, ThemeUtil.getColor(getContext(), i, android.R.attr.textColorPrimary)));
    }

    private void obtainIconTintList(int i) {
        setIconTintList(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogIconTint}).getColorStateList(0));
    }

    private void obtainScrollableArea(int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogScrollableAreaTop, R.attr.materialDialogScrollableAreaBottom});
        int i2 = typedArrayObtainStyledAttributes.getInt(0, -1);
        int i3 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (i2 != -1) {
            ScrollableArea.Area areaFromIndex = ScrollableArea.Area.fromIndex(i2);
            if (i3 != -1) {
                setScrollableArea(areaFromIndex, ScrollableArea.Area.fromIndex(i3));
                return;
            } else {
                setScrollableArea(areaFromIndex);
                return;
            }
        }
        setScrollableArea(null, null);
    }

    private void obtainShowDividersOnScroll(int i) {
        showDividersOnScroll(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowDividersOnScroll}).getBoolean(0, true));
    }

    private void obtainDividerColor(int i) {
        setDividerColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogDividerColor}).getColor(0, ContextCompat.getColor(getContext(), R.color.divider_color_light)));
    }

    private void obtainDividerMargin(int i) {
        setDividerMargin(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogDividerMargin}).getDimensionPixelSize(0, 0));
    }

    protected void obtainStyledAttributes(int i) {
        obtainFullscreen(i);
        obtainGravity(i);
        obtainWidth(i);
        obtainHeight(i);
        obtainMaxWidth(i);
        obtainMaxHeight(i);
        obtainMargin(i);
        obtainPadding(i);
        obtainFitsSystemWindows(i);
        obtainWindowBackground(i);
        obtainBackground(i);
        obtainMessageColor(i);
        obtainTitleColor(i);
        obtainIconTintList(i);
        obtainScrollableArea(i);
        obtainShowDividersOnScroll(i);
        obtainDividerColor(i);
        obtainDividerMargin(i);
    }

    protected final int getThemeResourceId() {
        return this.themeResourceId;
    }

    public AbstractMaterialDialogBuilder(Context context) {
        super(context);
        initialize(0);
    }

    public AbstractMaterialDialogBuilder(Context context, int i) {
        super(context);
        initialize(i);
    }

    public final BuilderType setWindowBackground(int i) {
        getProduct().setWindowBackground(i);
        return self();
    }

    public final BuilderType setWindowBackground(Bitmap bitmap) {
        getProduct().setWindowBackground(bitmap);
        return self();
    }

    public final BuilderType setCancelable(boolean z) {
        getProduct().setCancelable(z);
        return self();
    }

    public final BuilderType setCanceledOnTouchOutside(boolean z) {
        getProduct().setCanceledOnTouchOutside(z);
        return self();
    }

    public BuilderType setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        getProduct().setOnShowListener(onShowListener);
        return self();
    }

    public BuilderType setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        getProduct().setOnCancelListener(onCancelListener);
        return self();
    }

    public final BuilderType setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        getProduct().setOnDismissListener(onDismissListener);
        return self();
    }

    public final BuilderType setFullscreen(boolean z) {
        getProduct().setFullscreen(z);
        return self();
    }

    public final BuilderType setGravity(int i) {
        getProduct().setGravity(i);
        return self();
    }

    public final BuilderType setWidth(int i) {
        getProduct().setWidth(i);
        return self();
    }

    public final BuilderType setHeight(int i) {
        getProduct().setHeight(i);
        return self();
    }

    public final BuilderType setMaxWidth(int i) {
        getProduct().setMaxWidth(i);
        return self();
    }

    public final BuilderType setMaxHeight(int i) {
        getProduct().setMaxHeight(i);
        return self();
    }

    public final BuilderType setMargin(int i, int i2, int i3, int i4) {
        getProduct().setMargin(i, i2, i3, i4);
        return self();
    }

    public final BuilderType setPadding(int i, int i2, int i3, int i4) {
        getProduct().setPadding(i, i2, i3, i4);
        return self();
    }

    public final BuilderType setFitsSystemWindows(boolean z) {
        getProduct().setFitsSystemWindows(z);
        return self();
    }

    public final BuilderType setFitsSystemWindows(boolean z, boolean z2, boolean z3, boolean z4) {
        getProduct().setFitsSystemWindows(z, z2, z3, z4);
        return self();
    }

    public final BuilderType setTitleColor(int i) {
        getProduct().setTitleColor(i);
        return self();
    }

    public final BuilderType setTitleTypeface(Typeface typeface) {
        getProduct().setTitleTypeface(typeface);
        return self();
    }

    public final BuilderType setMessageColor(int i) {
        getProduct().setMessageColor(i);
        return self();
    }

    public final BuilderType setMessageTypeface(Typeface typeface) {
        getProduct().setMessageTypeface(typeface);
        return self();
    }

    public final BuilderType setBackground(Bitmap bitmap) {
        getProduct().setBackground(bitmap);
        return self();
    }

    public final BuilderType setBackground(int i) {
        getProduct().setBackground(i);
        return self();
    }

    public final BuilderType setBackgroundColor(int i) {
        getProduct().setBackgroundColor(i);
        return self();
    }

    public final BuilderType setTitle(CharSequence charSequence) {
        getProduct().setTitle(charSequence);
        return self();
    }

    public final BuilderType setTitle(int i) {
        getProduct().setTitle(i);
        return self();
    }

    public final BuilderType setMessage(CharSequence charSequence) {
        getProduct().setMessage(charSequence);
        return self();
    }

    public final BuilderType setMessage(int i) {
        getProduct().setMessage(i);
        return self();
    }

    public final BuilderType setIcon(Bitmap bitmap) {
        getProduct().setIcon(bitmap);
        return self();
    }

    public final BuilderType setIcon(int i) {
        getProduct().setIcon(i);
        return self();
    }

    public final BuilderType setIconAttribute(int i) {
        getProduct().setIconAttribute(i);
        return self();
    }

    public final BuilderType setIconTint(int i) {
        getProduct().setIconTint(i);
        return self();
    }

    public final BuilderType setIconTintList(ColorStateList colorStateList) {
        getProduct().setIconTintList(colorStateList);
        return self();
    }

    public final BuilderType setIconTintMode(PorterDuff.Mode mode) {
        getProduct().setIconTintMode(mode);
        return self();
    }

    public final BuilderType setView(View view) {
        getProduct().setView(view);
        return self();
    }

    public final BuilderType setView(int i) {
        getProduct().setView(i);
        return self();
    }

    public final BuilderType setCustomTitle(View view) {
        getProduct().setCustomTitle(view);
        return self();
    }

    public final BuilderType setCustomTitle(int i) {
        getProduct().setCustomTitle(i);
        return self();
    }

    public final BuilderType setCustomMessage(View view) {
        getProduct().setCustomMessage(view);
        return self();
    }

    public final BuilderType setCustomMessage(int i) {
        getProduct().setCustomMessage(i);
        return self();
    }

    public final BuilderType setScrollableArea(ScrollableArea.Area area) {
        getProduct().setScrollableArea(area);
        return self();
    }

    public final BuilderType setScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2) {
        getProduct().setScrollableArea(area, area2);
        return self();
    }

    public final BuilderType showDividersOnScroll(boolean z) {
        getProduct().showDividersOnScroll(z);
        return self();
    }

    public final BuilderType setDividerColor(int i) {
        getProduct().setDividerColor(i);
        return self();
    }

    public final BuilderType setDividerMargin(int i) {
        getProduct().setDividerMargin(i);
        return self();
    }
}
