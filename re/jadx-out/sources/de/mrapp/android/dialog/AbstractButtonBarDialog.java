package de.mrapp.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import de.mrapp.android.dialog.decorator.ButtonBarDialogDecorator;
import de.mrapp.android.dialog.model.ButtonBarDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractButtonBarDialog extends AbstractValidateableDialog implements ButtonBarDialog {
    private final ButtonBarDialogDecorator decorator;

    protected AbstractButtonBarDialog(Context context, int i) {
        super(context, i);
        ButtonBarDialogDecorator buttonBarDialogDecorator = new ButtonBarDialogDecorator(this);
        this.decorator = buttonBarDialogDecorator;
        addDecorator(buttonBarDialogDecorator);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final Button getButton(int i) {
        return this.decorator.getButton(i);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setPositiveButton(charSequence, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setPositiveButton(i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setNegativeButton(charSequence, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setNegativeButton(i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setNeutralButton(charSequence, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setNeutralButton(i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean areButtonsStacked() {
        return this.decorator.areButtonsStacked();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void stackButtons(boolean z) {
        this.decorator.stackButtons(z);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final ColorStateList getButtonTextColor() {
        return this.decorator.getButtonTextColor();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTextColor(int i) {
        this.decorator.setButtonTextColor(i);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTextColor(ColorStateList colorStateList) {
        this.decorator.setButtonTextColor(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final Typeface getButtonTypeface() {
        return this.decorator.getButtonTypeface();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTypeface(Typeface typeface) {
        this.decorator.setButtonTypeface(typeface);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean isButtonBarDividerShown() {
        return this.decorator.isButtonBarDividerShown();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void showButtonBarDivider(boolean z) {
        this.decorator.showButtonBarDivider(z);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean isCustomButtonBarUsed() {
        return this.decorator.isCustomButtonBarUsed();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setCustomButtonBar(int i) {
        this.decorator.setCustomButtonBar(i);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setCustomButtonBar(View view) {
        this.decorator.setCustomButtonBar(view);
    }

    @Override // de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
