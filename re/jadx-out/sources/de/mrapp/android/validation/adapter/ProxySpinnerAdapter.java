package de.mrapp.android.validation.adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ProxySpinnerAdapter implements SpinnerAdapter, ListAdapter {
    private final SpinnerAdapter adapter;
    private final Context context;
    private final CharSequence hint;
    private final ColorStateList hintColor;
    private final int hintViewId;

    @Override // android.widget.ListAdapter
    public final boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public final int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.Adapter
    public final int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return i > 0;
    }

    private View inflateHintView(ViewGroup viewGroup) {
        TextView textView = (TextView) LayoutInflater.from(this.context).inflate(this.hintViewId, viewGroup, false);
        textView.setText(this.hint);
        ColorStateList colorStateList = this.hintColor;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        return textView;
    }

    public ProxySpinnerAdapter(Context context, SpinnerAdapter spinnerAdapter, int i, CharSequence charSequence, ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(spinnerAdapter, "The adapter may not be null");
        this.context = context;
        this.adapter = spinnerAdapter;
        this.hintViewId = i;
        this.hint = charSequence;
        this.hintColor = colorStateList;
    }

    public final SpinnerAdapter getAdapter() {
        return this.adapter;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (i == 0) {
            return inflateHintView(viewGroup);
        }
        return this.adapter.getView(i - 1, null, viewGroup);
    }

    @Override // android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (i == 0) {
            return new View(this.context);
        }
        return this.adapter.getDropDownView(i - 1, null, viewGroup);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        if (this.adapter.getCount() == 0) {
            return 0;
        }
        return this.adapter.getCount() + 1;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        if (i == 0) {
            return null;
        }
        return this.adapter.getItem(i - 1);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        if (i > 0) {
            return this.adapter.getItemId(i - 1);
        }
        return -1L;
    }

    @Override // android.widget.Adapter
    public final boolean hasStableIds() {
        return this.adapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public final boolean isEmpty() {
        return this.adapter.isEmpty();
    }

    @Override // android.widget.Adapter
    public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.adapter.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.widget.Adapter
    public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.adapter.unregisterDataSetObserver(dataSetObserver);
    }
}
