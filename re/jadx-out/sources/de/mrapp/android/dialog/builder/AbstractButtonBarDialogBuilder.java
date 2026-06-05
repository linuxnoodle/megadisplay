package de.mrapp.android.dialog.builder;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.view.View;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.model.ButtonBarDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractButtonBarDialogBuilder<DialogType extends ButtonBarDialog, BuilderType extends AbstractButtonBarDialogBuilder<DialogType, ?>> extends AbstractValidateableDialogBuilder<DialogType, BuilderType> {
    private void obtainButtonTextColor(int i) {
        ColorStateList colorStateList = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogButtonTextColor}).getColorStateList(0);
        if (colorStateList != null) {
            setButtonTextColor(colorStateList);
        }
    }

    private void obtainShowButtonBarDivider(int i) {
        showButtonBarDivider(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowButtonBarDivider}).getBoolean(0, false));
    }

    public AbstractButtonBarDialogBuilder(Context context) {
        super(context);
    }

    public AbstractButtonBarDialogBuilder(Context context, int i) {
        super(context, i);
    }

    public final BuilderType setButtonTextColor(int i) {
        getProduct().setButtonTextColor(i);
        return self();
    }

    public final BuilderType setButtonTextColor(ColorStateList colorStateList) {
        getProduct().setButtonTextColor(colorStateList);
        return self();
    }

    public final BuilderType setButtonTypeface(Typeface typeface) {
        getProduct().setButtonTypeface(typeface);
        return self();
    }

    public final BuilderType stackButtons(boolean z) {
        getProduct().stackButtons(z);
        return self();
    }

    public final BuilderType setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        getProduct().setNegativeButton(charSequence, onClickListener);
        return self();
    }

    public final BuilderType setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setNegativeButton(i, onClickListener);
        return self();
    }

    public final BuilderType setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        getProduct().setPositiveButton(charSequence, onClickListener);
        return self();
    }

    public final BuilderType setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setPositiveButton(i, onClickListener);
        return self();
    }

    public final BuilderType setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        getProduct().setNeutralButton(charSequence, onClickListener);
        return self();
    }

    public final BuilderType setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setNeutralButton(i, onClickListener);
        return self();
    }

    public final BuilderType showButtonBarDivider(boolean z) {
        getProduct().showButtonBarDivider(z);
        return self();
    }

    public final BuilderType setCustomButtonBar(int i) {
        getProduct().setCustomButtonBar(i);
        return self();
    }

    public final BuilderType setCustomButtonBar(View view) {
        getProduct().setCustomButtonBar(view);
        return self();
    }

    @Override // de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder, de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
    protected void obtainStyledAttributes(int i) {
        super.obtainStyledAttributes(i);
        obtainButtonTextColor(i);
        obtainShowButtonBarDivider(i);
    }
}
