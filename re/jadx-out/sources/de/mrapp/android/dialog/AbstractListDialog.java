package de.mrapp.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.dialog.decorator.ListDialogDecorator;
import de.mrapp.android.dialog.model.ListDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractListDialog extends AbstractButtonBarDialog implements ListDialog {
    private final ListDialogDecorator decorator;

    protected AbstractListDialog(Context context, int i) {
        super(context, i);
        ListDialogDecorator listDialogDecorator = new ListDialogDecorator(this);
        this.decorator = listDialogDecorator;
        addDecorator(listDialogDecorator);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final RecyclerView getListView() {
        return this.decorator.getListView();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final RecyclerView.Adapter<?> getListAdapter() {
        return this.decorator.getListAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final ColorStateList getItemColor() {
        return this.decorator.getItemColor();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemColor(int i) {
        this.decorator.setItemColor(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemColor(ColorStateList colorStateList) {
        this.decorator.setItemColor(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final Typeface getItemTypeface() {
        return this.decorator.getItemTypeface();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final ColorStateList getItemIconTintList() {
        return this.decorator.getItemIconTintList();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTint(int i) {
        this.decorator.setItemIconTint(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTintList(ColorStateList colorStateList) {
        this.decorator.setItemIconTintList(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final PorterDuff.Mode getItemIconTintMode() {
        return this.decorator.getItemIconTintMode();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTintMode(PorterDuff.Mode mode) {
        this.decorator.setItemIconTintMode(mode);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemTypeface(Typeface typeface) {
        this.decorator.setItemTypeface(typeface);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final int getItemCount() {
        return this.decorator.getItemCount();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final boolean isItemChecked(int i) {
        return this.decorator.isItemChecked(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemChecked(int i, boolean z) {
        this.decorator.setItemChecked(i, z);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final boolean isItemEnabled(int i) {
        return this.decorator.isItemEnabled(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemEnabled(int i, boolean z) {
        this.decorator.setItemEnabled(i, z);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setItems(charSequenceArr, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setItems(charSequenceArr, iArr, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setItems(i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(int i, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setItems(i, iArr, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setAdapter(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setAdapter(adapter, layoutManager, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setSingleChoiceItems(charSequenceArr, i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(CharSequence[] charSequenceArr, int[] iArr, int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setSingleChoiceItems(charSequenceArr, iArr, i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setSingleChoiceItems(i, i2, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(int i, int[] iArr, int i2, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setSingleChoiceItems(i, iArr, i2, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setSingleChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, int i, DialogInterface.OnClickListener onClickListener) {
        this.decorator.setSingleChoiceItems(adapter, layoutManager, i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.decorator.setMultiChoiceItems(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(CharSequence[] charSequenceArr, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.decorator.setMultiChoiceItems(charSequenceArr, iArr, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.decorator.setMultiChoiceItems(i, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(int i, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.decorator.setMultiChoiceItems(i, iArr, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setMultiChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.decorator.setMultiChoiceItems(adapter, layoutManager, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setOnItemSelectedListener(ListDialog.OnItemSelectedListener onItemSelectedListener) {
        this.decorator.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setOnItemEnabledListener(ListDialog.OnItemEnabledListener onItemEnabledListener) {
        this.decorator.setOnItemEnabledListener(onItemEnabledListener);
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
