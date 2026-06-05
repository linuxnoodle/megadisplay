package de.mrapp.android.util.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pair;
import de.mrapp.util.Condition;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AttachedViewRecycler<ItemType, ParamType> extends AbstractViewRecycler<ItemType, ParamType> {
    private Comparator<ItemType> comparator;
    private List<ItemType> items;
    private final ViewGroup parent;

    private int binarySearch(List<ItemType> list, ItemType itemtype, Comparator<ItemType> comparator) {
        int iBinarySearch = Collections.binarySearch(list, itemtype, comparator);
        return iBinarySearch < 0 ? ~iBinarySearch : iBinarySearch;
    }

    public AttachedViewRecycler(ViewGroup viewGroup) {
        this(viewGroup, LayoutInflater.from(viewGroup.getContext()));
    }

    public AttachedViewRecycler(ViewGroup viewGroup, Comparator<ItemType> comparator) {
        this(viewGroup, LayoutInflater.from(viewGroup.getContext()), comparator);
    }

    public AttachedViewRecycler(ViewGroup viewGroup, LayoutInflater layoutInflater) {
        this(viewGroup, layoutInflater, null);
    }

    public AttachedViewRecycler(ViewGroup viewGroup, LayoutInflater layoutInflater, Comparator<ItemType> comparator) {
        super(layoutInflater);
        Condition.INSTANCE.ensureNotNull(viewGroup, "The parent may not be null");
        this.parent = viewGroup;
        this.comparator = comparator;
        this.items = new ArrayList();
    }

    public final void bringToFront(ItemType itemtype) {
        Condition.INSTANCE.ensureNotNull(itemtype, "The item may not be null");
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        if (this.comparator != null) {
            getLogger().logWarn(getClass(), "Using the bringToFront-method is not recommended when using a comparator");
        }
        int iIndexOf = this.items.indexOf(itemtype);
        if (iIndexOf != -1) {
            this.parent.bringChildToFront(this.parent.getChildAt(iIndexOf));
            this.items.remove(iIndexOf);
            List<ItemType> list = this.items;
            list.add(list.size(), itemtype);
            getLogger().logInfo(getClass(), "Brought view of item " + itemtype + " to front");
            return;
        }
        getLogger().logDebug(getClass(), "View of item " + itemtype + " not brought to front. View is not inflated");
    }

    public final void setComparator(Comparator<ItemType> comparator) {
        this.comparator = comparator;
        if (comparator != null) {
            if (this.items.size() > 0) {
                List<ItemType> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                for (int size = this.items.size() - 1; size >= 0; size--) {
                    ItemType itemtype = this.items.get(size);
                    int iBinarySearch = binarySearch(arrayList, itemtype, comparator);
                    arrayList.add(iBinarySearch, itemtype);
                    View childAt = this.parent.getChildAt(size);
                    this.parent.removeViewAt(size);
                    arrayList2.add(iBinarySearch, childAt);
                }
                this.parent.removeAllViews();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    this.parent.addView((View) it.next());
                }
                this.items = arrayList;
                getLogger().logDebug(getClass(), "Comparator changed. Views have been reordered");
                return;
            }
            getLogger().logDebug(getClass(), "Comparator changed");
            return;
        }
        getLogger().logDebug(getClass(), "Comparator set to null");
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    @SafeVarargs
    public final Pair<View, Boolean> inflate(ItemType itemtype, boolean z, ParamType... paramtypeArr) {
        int size;
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
                view = getAdapter().onInflateView(getLayoutInflater(), this.parent, itemtype, viewType, paramtypeArr);
                getLogger().logInfo(getClass(), "Inflated view to visualize item " + itemtype + " using view type " + viewType);
                z2 = true;
            } else {
                getLogger().logInfo(getClass(), "Reusing view to visualize item " + itemtype + " using view type " + viewType);
            }
            getActiveViews().put(itemtype, view);
            Comparator<ItemType> comparator = this.comparator;
            if (comparator != null) {
                size = binarySearch(this.items, itemtype, comparator);
            } else {
                size = this.items.size();
            }
            this.items.add(size, itemtype);
            this.parent.addView(view, size);
            getLogger().logDebug(getClass(), "Added view of item " + itemtype + " at index " + size);
        }
        getAdapter().onShowView(getContext(), view, itemtype, z2, paramtypeArr);
        getLogger().logDebug(getClass(), "Updated view of item " + itemtype);
        return Pair.create(view, Boolean.valueOf(z2));
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    public final void remove(ItemType itemtype) {
        Condition.INSTANCE.ensureNotNull(itemtype, "The item may not be null");
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        int iIndexOf = this.items.indexOf(itemtype);
        if (iIndexOf != -1) {
            this.items.remove(iIndexOf);
            View viewRemove = getActiveViews().remove(itemtype);
            getAdapter().onRemoveView(viewRemove, itemtype);
            this.parent.removeViewAt(iIndexOf);
            addUnusedView(viewRemove, getAdapter().getViewType(itemtype));
            getLogger().logInfo(getClass(), "Removed view of item " + itemtype);
            return;
        }
        getLogger().logDebug(getClass(), "Did not remove view of item " + itemtype + ". View is not inflated");
    }

    @Override // de.mrapp.android.util.view.AbstractViewRecycler
    public final void removeAll() {
        Condition.INSTANCE.ensureNotNull(getAdapter(), "No adapter has been set", IllegalStateException.class);
        for (int size = this.items.size() - 1; size >= 0; size--) {
            ItemType itemtypeRemove = this.items.remove(size);
            View viewRemove = getActiveViews().remove(itemtypeRemove);
            getAdapter().onRemoveView(viewRemove, itemtypeRemove);
            this.parent.removeViewAt(size);
            addUnusedView(viewRemove, getAdapter().getViewType(itemtypeRemove));
        }
        getLogger().logInfo(getClass(), "Removed all views");
    }
}
