package de.mrapp.android.util.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pair;
import de.mrapp.util.Condition;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ViewRecycler<ItemType, ParamType> extends AbstractViewRecycler<ItemType, ParamType> {
    public ViewRecycler(Context context) {
        this(LayoutInflater.from(context));
    }

    public ViewRecycler(LayoutInflater layoutInflater) {
        super(layoutInflater);
    }

    @SafeVarargs
    public final Pair<View, Boolean> inflate(ItemType itemtype, ViewGroup viewGroup, ParamType... paramtypeArr) {
        return inflate(itemtype, viewGroup, true, paramtypeArr);
    }

    @SafeVarargs
    public final Pair<View, Boolean> inflate(ItemType itemtype, ViewGroup viewGroup, boolean z, ParamType... paramtypeArr) {
        Condition.INSTANCE.ensureNotNull(paramtypeArr, "The array may not be null");
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        View view = getView(itemtype);
        boolean z2 = false;
        if (view == null) {
            int viewType = getAdapter().getViewType(itemtype);
            if (z) {
                view = pollUnusedView(viewType);
            }
            if (view == null) {
                View viewOnInflateView = getAdapter().onInflateView(getLayoutInflater(), viewGroup, itemtype, viewType, paramtypeArr);
                getLogger().logInfo(getClass(), "Inflated view to visualize item " + itemtype + " using view type " + viewType);
                z2 = true;
                view = viewOnInflateView;
            } else {
                getLogger().logInfo(getClass(), "Reusing view to visualize item " + itemtype + " using view type " + viewType);
            }
            getActiveViews().put(itemtype, view);
        }
        getAdapter().onShowView(getContext(), view, itemtype, z2, paramtypeArr);
        getLogger().logDebug(getClass(), "Updated view of item " + itemtype);
        return Pair.create(view, Boolean.valueOf(z2));
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    @SafeVarargs
    public final Pair<View, Boolean> inflate(ItemType itemtype, boolean z, ParamType... paramtypeArr) {
        return inflate(itemtype, null, z, paramtypeArr);
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    public final void remove(ItemType itemtype) {
        Condition.INSTANCE.ensureNotNull(itemtype, "The item may not be null");
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        View viewRemove = getActiveViews().remove(itemtype);
        if (viewRemove != null) {
            getAdapter().onRemoveView(viewRemove, itemtype);
            addUnusedView(viewRemove, getAdapter().getViewType(itemtype));
            getLogger().logInfo(getClass(), "Removed view of item " + itemtype);
            return;
        }
        getLogger().logDebug(getClass(), "Did not remove view of item " + itemtype + ". View is not inflated");
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    public final void removeAll() {
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        for (Map.Entry<ItemType, View> entry : getActiveViews().entrySet()) {
            ItemType key = entry.getKey();
            View value = entry.getValue();
            getAdapter().onRemoveView(value, key);
            addUnusedView(value, getAdapter().getViewType(key));
        }
        getActiveViews().clear();
        getLogger().logInfo(getClass(), "Removed all views");
    }
}
