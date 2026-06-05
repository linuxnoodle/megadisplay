package de.mrapp.android.dialog.builder;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.view.View;
import androidx.core.content.ContextCompat;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder;
import de.mrapp.android.dialog.model.HeaderDialog;
import de.mrapp.android.util.ThemeUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractHeaderDialogBuilder<DialogType extends HeaderDialog, BuilderType extends AbstractHeaderDialogBuilder<DialogType, ?>> extends AbstractMaterialDialogBuilder<DialogType, BuilderType> {
    private void obtainShowHeader(int i) {
        showHeader(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowHeader}).getBoolean(0, false));
    }

    private void obtainHeaderHeight(int i) {
        setHeaderHeight(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeaderHeight}).getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_header_height)));
    }

    private void obtainHeaderBackground(int i) {
        int resourceId = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeaderBackground}).getResourceId(0, 0);
        if (resourceId != 0) {
            setHeaderBackground(resourceId);
        } else {
            setHeaderBackgroundColor(ThemeUtil.getColor(getContext(), i, R.attr.colorPrimary));
        }
    }

    private void obtainHeaderIcon(int i) {
        int resourceId = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeaderIcon}).getResourceId(0, 0);
        if (resourceId != 0) {
            setHeaderIcon(resourceId);
        }
    }

    private void obtainHeaderIconTintList(int i) {
        setHeaderIconTintList(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeaderIconTint}).getColorStateList(0));
    }

    private void obtainHeaderDividerColor(int i) {
        setHeaderDividerColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHeaderDividerColor}).getColor(0, ContextCompat.getColor(getContext(), R.color.header_divider_color)));
    }

    private void obtainShowHeaderDivider(int i) {
        showHeaderDivider(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowHeaderDivider}).getBoolean(0, true));
    }

    public AbstractHeaderDialogBuilder(Context context) {
        super(context);
    }

    public AbstractHeaderDialogBuilder(Context context, int i) {
        super(context, i);
    }

    public final BuilderType showHeader(boolean z) {
        getProduct().showHeader(z);
        return self();
    }

    public final BuilderType setCustomHeader(View view) {
        getProduct().setCustomHeader(view);
        return self();
    }

    public final BuilderType setCustomHeader(int i) {
        getProduct().setCustomHeader(i);
        return self();
    }

    public final BuilderType setHeaderHeight(int i) {
        getProduct().setHeaderHeight(i);
        return self();
    }

    public final BuilderType setHeaderBackgroundColor(int i) {
        getProduct().setHeaderBackgroundColor(i);
        return self();
    }

    public final BuilderType setHeaderBackground(int i) {
        getProduct().setHeaderBackground(i);
        return self();
    }

    public final BuilderType setHeaderBackground(Bitmap bitmap) {
        getProduct().setHeaderBackground(bitmap);
        return self();
    }

    public final BuilderType setHeaderIcon(int i) {
        getProduct().setHeaderIcon(i);
        return self();
    }

    public final BuilderType setHeaderIcon(Bitmap bitmap) {
        getProduct().setHeaderIcon(bitmap);
        return self();
    }

    public final BuilderType setHeaderIconTint(int i) {
        getProduct().setHeaderIconTint(i);
        return self();
    }

    public final BuilderType setHeaderIconTintList(ColorStateList colorStateList) {
        getProduct().setHeaderIconTintList(colorStateList);
        return self();
    }

    public final BuilderType setHeaderIconTintMode(PorterDuff.Mode mode) {
        getProduct().setHeaderIconTintMode(mode);
        return self();
    }

    public final BuilderType setHeaderDividerColor(int i) {
        getProduct().setHeaderDividerColor(i);
        return self();
    }

    public final BuilderType showHeaderDivider(boolean z) {
        getProduct().showHeaderDivider(z);
        return self();
    }

    @Override // de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
    protected void obtainStyledAttributes(int i) {
        super.obtainStyledAttributes(i);
        obtainShowHeader(i);
        obtainHeaderHeight(i);
        obtainHeaderBackground(i);
        obtainHeaderIcon(i);
        obtainHeaderIconTintList(i);
        obtainHeaderDividerColor(i);
        obtainShowHeaderDivider(i);
    }
}
