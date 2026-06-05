package de.mrapp.android.util.view;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pair;
import de.mrapp.android.util.logging.LogLevel;
import de.mrapp.android.util.logging.Logger;
import de.mrapp.util.Condition;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractViewRecycler<ItemType, ParamType> {
    private final Map<ItemType, View> activeViews;
    private Adapter<ItemType, ParamType> adapter;
    private final Context context;
    private final LayoutInflater inflater;
    private final Logger logger;
    private SparseArray<Queue<View>> unusedViews;
    private boolean useCache;

    public static abstract class Adapter<ItemType, ParamType> {
        public int getViewType(ItemType itemtype) {
            return 0;
        }

        public int getViewTypeCount() {
            return 1;
        }

        public abstract View onInflateView(LayoutInflater layoutInflater, ViewGroup viewGroup, ItemType itemtype, int i, ParamType... paramtypeArr);

        public void onRemoveView(View view, ItemType itemtype) {
        }

        public abstract void onShowView(Context context, View view, ItemType itemtype, boolean z, ParamType... paramtypeArr);
    }

    public abstract Pair<View, Boolean> inflate(ItemType itemtype, boolean z, ParamType... paramtypeArr);

    public abstract void remove(ItemType itemtype);

    public abstract void removeAll();

    protected final void addUnusedView(View view, int i) {
        if (this.useCache) {
            if (this.unusedViews == null) {
                this.unusedViews = new SparseArray<>(this.adapter.getViewTypeCount());
            }
            Queue<View> linkedList = this.unusedViews.get(i);
            if (linkedList == null) {
                linkedList = new LinkedList<>();
                this.unusedViews.put(i, linkedList);
            }
            linkedList.add(view);
        }
    }

    protected final View pollUnusedView(int i) {
        SparseArray<Queue<View>> sparseArray;
        Queue<View> queue;
        if (!this.useCache || (sparseArray = this.unusedViews) == null || (queue = sparseArray.get(i)) == null) {
            return null;
        }
        return queue.poll();
    }

    protected final Logger getLogger() {
        return this.logger;
    }

    protected final LayoutInflater getLayoutInflater() {
        return this.inflater;
    }

    protected Map<ItemType, View> getActiveViews() {
        return this.activeViews;
    }

    public AbstractViewRecycler(LayoutInflater layoutInflater) {
        Condition.INSTANCE.ensureNotNull(layoutInflater, "The layout inflater may not be null");
        this.context = layoutInflater.getContext();
        this.inflater = layoutInflater;
        this.activeViews = new HashMap();
        this.logger = new Logger(LogLevel.INFO);
        this.adapter = null;
        this.unusedViews = null;
        this.useCache = true;
    }

    public final Pair<View, Boolean> inflate(ItemType itemtype, ParamType... paramtypeArr) {
        return inflate(itemtype, true, paramtypeArr);
    }

    public final Context getContext() {
        return this.context;
    }

    public final Adapter<ItemType, ParamType> getAdapter() {
        return this.adapter;
    }

    public final void setAdapter(Adapter<ItemType, ParamType> adapter) {
        this.adapter = adapter;
        clearCache();
    }

    public final LogLevel getLogLevel() {
        return this.logger.getLogLevel();
    }

    public final void setLogLevel(LogLevel logLevel) {
        this.logger.setLogLevel(logLevel);
    }

    public final View getView(ItemType itemtype) {
        Condition.INSTANCE.ensureNotNull(itemtype, "The item may not be null");
        return this.activeViews.get(itemtype);
    }

    public final boolean isInflated(ItemType itemtype) {
        return getView(itemtype) != null;
    }

    public final void notifyItemChanged(ItemType itemtype, ParamType... paramtypeArr) {
        Condition.INSTANCE.ensureNotNull(itemtype, "The item may not be null");
        View view = getView(itemtype);
        if (view != null) {
            getAdapter().onShowView(getContext(), view, itemtype, false, paramtypeArr);
            getLogger().logDebug(getClass(), "Updated view of item " + itemtype);
            return;
        }
        getLogger().logVerbose(getClass(), "View of item " + itemtype + " not updated. It has not been inflated yet");
    }

    public final void clearCache() {
        SparseArray<Queue<View>> sparseArray = this.unusedViews;
        if (sparseArray != null) {
            sparseArray.clear();
            this.unusedViews = null;
        }
        this.logger.logDebug(getClass(), "Removed all unused views from cache");
    }

    public final void clearCache(int i) {
        SparseArray<Queue<View>> sparseArray = this.unusedViews;
        if (sparseArray != null) {
            sparseArray.remove(i);
        }
        this.logger.logDebug(getClass(), "Removed all unused views of view type " + i + " from cache");
    }

    public final boolean isCacheUsed() {
        return this.useCache;
    }

    public final void useCache(boolean z) {
        this.useCache = z;
        if (z) {
            return;
        }
        clearCache();
    }
}
