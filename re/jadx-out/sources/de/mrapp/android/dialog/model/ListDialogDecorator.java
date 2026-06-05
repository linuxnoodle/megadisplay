package de.mrapp.android.dialog.model;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.dialog.model.ListDialog;

/* JADX INFO: loaded from: classes2.dex */
public interface ListDialogDecorator extends Dialog {
    ColorStateList getItemColor();

    int getItemCount();

    ColorStateList getItemIconTintList();

    PorterDuff.Mode getItemIconTintMode();

    Typeface getItemTypeface();

    RecyclerView.Adapter<?> getListAdapter();

    RecyclerView getListView();

    boolean isItemChecked(int i);

    boolean isItemEnabled(int i);

    <VH extends RecyclerView.ViewHolder> void setAdapter(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, DialogInterface.OnClickListener onClickListener);

    void setItemChecked(int i, boolean z);

    void setItemColor(int i);

    void setItemColor(ColorStateList colorStateList);

    void setItemEnabled(int i, boolean z);

    void setItemIconTint(int i);

    void setItemIconTintList(ColorStateList colorStateList);

    void setItemIconTintMode(PorterDuff.Mode mode);

    void setItemTypeface(Typeface typeface);

    void setItems(int i, DialogInterface.OnClickListener onClickListener);

    void setItems(int i, int[] iArr, DialogInterface.OnClickListener onClickListener);

    void setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener);

    void setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener);

    void setMultiChoiceItems(int i, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener);

    void setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener);

    <VH extends RecyclerView.ViewHolder> void setMultiChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener);

    void setMultiChoiceItems(CharSequence[] charSequenceArr, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener);

    void setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener);

    void setOnItemEnabledListener(ListDialog.OnItemEnabledListener onItemEnabledListener);

    void setOnItemSelectedListener(ListDialog.OnItemSelectedListener onItemSelectedListener);

    void setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener);

    void setSingleChoiceItems(int i, int[] iArr, int i2, DialogInterface.OnClickListener onClickListener);

    <VH extends RecyclerView.ViewHolder> void setSingleChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, int i, DialogInterface.OnClickListener onClickListener);

    void setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener);

    void setSingleChoiceItems(CharSequence[] charSequenceArr, int[] iArr, int i, DialogInterface.OnClickListener onClickListener);
}
