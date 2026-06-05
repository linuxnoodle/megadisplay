package de.mrapp.android.util.view;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class ViewHolder extends RecyclerView.ViewHolder {
    private final View parentView;
    private SparseArray<View> views;

    public ViewHolder(View view) {
        super(view);
        this.parentView = view;
        this.views = null;
    }

    public final View getParentView() {
        return this.parentView;
    }

    public final View findViewById(int i) {
        View view;
        SparseArray<View> sparseArray = this.views;
        if (sparseArray != null) {
            view = sparseArray.get(i);
        } else {
            this.views = new SparseArray<>();
            view = null;
        }
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.parentView.findViewById(i);
        this.views.put(i, viewFindViewById);
        return viewFindViewById;
    }

    public final void clear() {
        SparseArray<View> sparseArray = this.views;
        if (sparseArray != null) {
            sparseArray.clear();
            this.views = null;
        }
    }
}
