package de.mrapp.android.dialog.builder;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;
import de.mrapp.android.dialog.model.ListDialog;
import de.mrapp.android.util.ThemeUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractListDialogBuilder<DialogType extends ListDialog, BuilderType extends AbstractListDialogBuilder<DialogType, ?>> extends AbstractButtonBarDialogBuilder<DialogType, BuilderType> {
    private void obtainItemColor(int i) throws Throwable {
        ColorStateList colorStateList = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogItemColor}).getColorStateList(0);
        if (colorStateList == null) {
            colorStateList = ThemeUtil.getColorStateList(getContext(), i, android.R.attr.textColorSecondary);
        }
        setItemColor(colorStateList);
    }

    public AbstractListDialogBuilder(Context context) {
        super(context);
    }

    public AbstractListDialogBuilder(Context context, int i) {
        super(context, i);
    }

    public final BuilderType setItemColor(int i) {
        getProduct().setItemColor(i);
        return self();
    }

    public final BuilderType setItemColor(ColorStateList colorStateList) {
        getProduct().setItemColor(colorStateList);
        return self();
    }

    public final BuilderType setItemTypeface(Typeface typeface) {
        getProduct().setItemTypeface(typeface);
        return self();
    }

    public final BuilderType setItemIconTint(int i) {
        getProduct().setItemIconTint(i);
        return self();
    }

    public final BuilderType setItemIconTintList(ColorStateList colorStateList) {
        getProduct().setItemIconTintList(colorStateList);
        return self();
    }

    public final BuilderType setItemIconTintMode(PorterDuff.Mode mode) {
        getProduct().setItemIconTintMode(mode);
        return self();
    }

    public final BuilderType setItemChecked(int i, boolean z) {
        getProduct().setItemChecked(i, z);
        return self();
    }

    public final BuilderType setItemEnabled(int i, boolean z) {
        getProduct().setItemEnabled(i, z);
        return self();
    }

    public final BuilderType setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        getProduct().setItems(charSequenceArr, onClickListener);
        return self();
    }

    public final BuilderType setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        getProduct().setItems(charSequenceArr, iArr, onClickListener);
        return self();
    }

    public final BuilderType setItems(int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setItems(i, onClickListener);
        return self();
    }

    public final BuilderType setItems(int i, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        getProduct().setItems(i, iArr, onClickListener);
        return self();
    }

    public final <VH extends RecyclerView.ViewHolder> BuilderType setAdapter(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, DialogInterface.OnClickListener onClickListener) {
        getProduct().setAdapter(adapter, layoutManager, onClickListener);
        return self();
    }

    public final BuilderType setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setSingleChoiceItems(charSequenceArr, i, onClickListener);
        return self();
    }

    public final BuilderType setSingleChoiceItems(CharSequence[] charSequenceArr, int[] iArr, int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setSingleChoiceItems(charSequenceArr, iArr, i, onClickListener);
        return self();
    }

    public final BuilderType setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
        getProduct().setSingleChoiceItems(i, i2, onClickListener);
        return self();
    }

    public final BuilderType setSingleChoiceItems(int i, int[] iArr, int i2, DialogInterface.OnClickListener onClickListener) {
        getProduct().setSingleChoiceItems(i, iArr, i2, onClickListener);
        return self();
    }

    public final <VH extends RecyclerView.ViewHolder> BuilderType setSingleChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, int i, DialogInterface.OnClickListener onClickListener) {
        getProduct().setSingleChoiceItems(adapter, layoutManager, i, onClickListener);
        return self();
    }

    public final BuilderType setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        getProduct().setMultiChoiceItems(charSequenceArr, zArr, onMultiChoiceClickListener);
        return self();
    }

    public final BuilderType setMultiChoiceItems(CharSequence[] charSequenceArr, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        getProduct().setMultiChoiceItems(charSequenceArr, iArr, zArr, onMultiChoiceClickListener);
        return self();
    }

    public final BuilderType setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        getProduct().setMultiChoiceItems(i, zArr, onMultiChoiceClickListener);
        return self();
    }

    public final BuilderType setMultiChoiceItems(int i, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        getProduct().setMultiChoiceItems(i, iArr, zArr, onMultiChoiceClickListener);
        return self();
    }

    public final <VH extends RecyclerView.ViewHolder> BuilderType setMultiChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        getProduct().setMultiChoiceItems(adapter, layoutManager, zArr, onMultiChoiceClickListener);
        return self();
    }

    public final BuilderType setOnItemSelectedListener(ListDialog.OnItemSelectedListener onItemSelectedListener) {
        getProduct().setOnItemSelectedListener(onItemSelectedListener);
        return self();
    }

    @Override // de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder, de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder, de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
    protected void obtainStyledAttributes(int i) throws Throwable {
        super.obtainStyledAttributes(i);
        obtainItemColor(i);
    }
}
