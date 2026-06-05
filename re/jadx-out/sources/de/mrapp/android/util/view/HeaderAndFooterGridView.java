package de.mrapp.android.util.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import de.mrapp.util.Condition;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderAndFooterGridView extends GridView implements HeaderAndFooterAdapterView {
    private AdapterWrapper adapter;
    private final List<FullWidthItem> footers;
    private final List<FullWidthItem> headers;

    protected class FullWidthContainer extends FrameLayout {
        public FullWidthContainer(View view) {
            super(view.getContext());
            addView(view);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((HeaderAndFooterGridView.this.getMeasuredWidth() - HeaderAndFooterGridView.this.getPaddingLeft()) - HeaderAndFooterGridView.this.getPaddingRight(), View.MeasureSpec.getMode(i)), i2);
        }
    }

    protected class PlaceholderView extends View {
        public PlaceholderView(Context context) {
            super(context);
            setVisibility(4);
        }
    }

    private class FullWidthItem {
        private final Object data;
        private final boolean selectable;
        private final FullWidthContainer view;

        public FullWidthItem(View view, Object obj, boolean z) {
            Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
            this.view = HeaderAndFooterGridView.this.new FullWidthContainer(view);
            this.data = obj;
            this.selectable = z;
        }
    }

    private class AdapterWrapper extends BaseAdapter implements WrapperListAdapter, Filterable {
        private final ListAdapter encapsulatedAdapter;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        private DataSetObserver createDataSetObserver() {
            return new DataSetObserver() { // from class: de.mrapp.android.util.view.HeaderAndFooterGridView.AdapterWrapper.1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // android.database.DataSetObserver
                public void onInvalidated() {
                    AdapterWrapper.this.notifyDataSetInvalidated();
                }
            };
        }

        public AdapterWrapper(ListAdapter listAdapter) {
            Condition.INSTANCE.ensureNotNull(listAdapter, "The adapter may not be null");
            this.encapsulatedAdapter = listAdapter;
            listAdapter.registerDataSetObserver(createDataSetObserver());
        }

        public ListAdapter getEncapsulatedAdapter() {
            return this.encapsulatedAdapter;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int numColumnsCompatible = HeaderAndFooterGridView.this.getNumColumnsCompatible();
            return ((HeaderAndFooterGridView.this.getHeaderViewsCount() + HeaderAndFooterGridView.this.getFooterViewsCount()) * numColumnsCompatible) + this.encapsulatedAdapter.getCount() + HeaderAndFooterGridView.this.getNumberOfPlaceholderViews();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int numColumnsCompatible = HeaderAndFooterGridView.this.getNumColumnsCompatible();
            int headerViewsCount = HeaderAndFooterGridView.this.getHeaderViewsCount() * numColumnsCompatible;
            int count = this.encapsulatedAdapter.getCount();
            if (i >= headerViewsCount) {
                if (i < HeaderAndFooterGridView.this.getHeaderViewsCount() + count + HeaderAndFooterGridView.this.getNumberOfPlaceholderViews()) {
                    if (i < count + headerViewsCount) {
                        return this.encapsulatedAdapter.getItem(i - headerViewsCount);
                    }
                    return null;
                }
                if (i % numColumnsCompatible == 0) {
                    return ((FullWidthItem) HeaderAndFooterGridView.this.footers.get((((i - headerViewsCount) - count) - HeaderAndFooterGridView.this.getNumberOfPlaceholderViews()) / numColumnsCompatible)).data;
                }
                return null;
            }
            if (i % numColumnsCompatible == 0) {
                return ((FullWidthItem) HeaderAndFooterGridView.this.headers.get(i / numColumnsCompatible)).data;
            }
            return null;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int numColumnsCompatible = HeaderAndFooterGridView.this.getNumColumnsCompatible();
            int headerViewsCount = HeaderAndFooterGridView.this.getHeaderViewsCount() * numColumnsCompatible;
            int count = this.encapsulatedAdapter.getCount();
            if (i >= headerViewsCount) {
                int i2 = headerViewsCount + count;
                if (i >= HeaderAndFooterGridView.this.getNumberOfPlaceholderViews() + i2) {
                    FullWidthContainer fullWidthContainer = ((FullWidthItem) HeaderAndFooterGridView.this.footers.get((((i - headerViewsCount) - count) - HeaderAndFooterGridView.this.getNumberOfPlaceholderViews()) / numColumnsCompatible)).view;
                    return i % numColumnsCompatible == 0 ? fullWidthContainer : HeaderAndFooterGridView.this.inflatePlaceholderView(view, fullWidthContainer.getHeight());
                }
                if (i < i2) {
                    ListAdapter listAdapter = this.encapsulatedAdapter;
                    int i3 = i - headerViewsCount;
                    if ((view instanceof FullWidthContainer) || (view instanceof PlaceholderView)) {
                        view = null;
                    }
                    return listAdapter.getView(i3, view, viewGroup);
                }
                HeaderAndFooterGridView headerAndFooterGridView = HeaderAndFooterGridView.this;
                return headerAndFooterGridView.inflatePlaceholderView(view, headerAndFooterGridView.getViewHeight(this, i - 1));
            }
            FullWidthContainer fullWidthContainer2 = ((FullWidthItem) HeaderAndFooterGridView.this.headers.get(i / numColumnsCompatible)).view;
            return i % numColumnsCompatible == 0 ? fullWidthContainer2 : HeaderAndFooterGridView.this.inflatePlaceholderView(view, fullWidthContainer2.getHeight());
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            int numColumnsCompatible = HeaderAndFooterGridView.this.getNumColumnsCompatible();
            int headerViewsCount = HeaderAndFooterGridView.this.getHeaderViewsCount() * numColumnsCompatible;
            int count = this.encapsulatedAdapter.getCount();
            if (i < headerViewsCount) {
                return i % numColumnsCompatible == 0 && ((FullWidthItem) HeaderAndFooterGridView.this.headers.get(i / numColumnsCompatible)).selectable;
            }
            int i2 = headerViewsCount + count;
            return i < HeaderAndFooterGridView.this.getNumberOfPlaceholderViews() + i2 ? i < i2 && this.encapsulatedAdapter.isEnabled(i - headerViewsCount) : i % numColumnsCompatible == 0 && ((FullWidthItem) HeaderAndFooterGridView.this.footers.get((((i - headerViewsCount) - count) - HeaderAndFooterGridView.this.getNumberOfPlaceholderViews()) / numColumnsCompatible)).selectable;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            boolean zAreAllItemsEnabled = this.encapsulatedAdapter.areAllItemsEnabled();
            Iterator it = HeaderAndFooterGridView.this.headers.iterator();
            while (it.hasNext()) {
                zAreAllItemsEnabled &= ((FullWidthItem) it.next()).selectable;
            }
            Iterator it2 = HeaderAndFooterGridView.this.footers.iterator();
            while (it2.hasNext()) {
                zAreAllItemsEnabled &= ((FullWidthItem) it2.next()).selectable;
            }
            return zAreAllItemsEnabled;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.encapsulatedAdapter.hasStableIds();
        }

        @Override // android.widget.WrapperListAdapter
        public ListAdapter getWrappedAdapter() {
            return this.encapsulatedAdapter;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            ListAdapter listAdapter = this.encapsulatedAdapter;
            if (listAdapter instanceof Filterable) {
                return ((Filterable) listAdapter).getFilter();
            }
            return null;
        }
    }

    protected final View inflatePlaceholderView(View view, int i) {
        if (!(view instanceof PlaceholderView)) {
            view = new PlaceholderView(getContext());
        }
        view.setMinimumHeight(i);
        return view;
    }

    protected final int getViewHeight(ListAdapter listAdapter, int i) {
        View view = listAdapter.getView(i, null, this);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new AbsListView.LayoutParams(-1, -2);
            view.setLayoutParams(layoutParams);
        }
        view.measure(getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(getColumnWidthCompatible(), BasicMeasure.EXACTLY), 0, layoutParams.width), getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams.height));
        return view.getMeasuredHeight();
    }

    protected final int getColumnWidthCompatible() {
        return super.getColumnWidth();
    }

    protected final int getNumColumnsCompatible() {
        try {
            Field declaredField = GridView.class.getDeclaredField("mNumColumns");
            declaredField.setAccessible(true);
            return declaredField.getInt(this);
        } catch (Exception e) {
            throw new RuntimeException("Unable to retrieve number of columns", e);
        }
    }

    private AdapterView.OnItemClickListener createItemClickListener(final AdapterView.OnItemClickListener onItemClickListener) {
        return new AdapterView.OnItemClickListener() { // from class: de.mrapp.android.util.view.HeaderAndFooterGridView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                onItemClickListener.onItemClick(adapterView, view, HeaderAndFooterGridView.this.getItemPosition(i), j);
            }
        };
    }

    private AdapterView.OnItemLongClickListener createItemLongClickListener(final AdapterView.OnItemLongClickListener onItemLongClickListener) {
        return new AdapterView.OnItemLongClickListener() { // from class: de.mrapp.android.util.view.HeaderAndFooterGridView.2
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                return onItemLongClickListener.onItemLongClick(adapterView, view, HeaderAndFooterGridView.this.getItemPosition(i), j);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getItemPosition(int i) {
        int numColumnsCompatible = getNumColumnsCompatible();
        int headerViewsCount = getHeaderViewsCount() * numColumnsCompatible;
        int count = this.adapter.getEncapsulatedAdapter().getCount();
        if (i < headerViewsCount) {
            return i / numColumnsCompatible;
        }
        if (i < headerViewsCount + count + getNumberOfPlaceholderViews()) {
            return (i - headerViewsCount) + getHeaderViewsCount();
        }
        return getHeaderViewsCount() + count + ((((i - headerViewsCount) - count) - getNumberOfPlaceholderViews()) / numColumnsCompatible);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNumberOfPlaceholderViews() {
        int numColumnsCompatible = getNumColumnsCompatible();
        int count = this.adapter.getEncapsulatedAdapter().getCount() % numColumnsCompatible;
        if (count > 0) {
            return numColumnsCompatible - count;
        }
        return 0;
    }

    private void notifyDataSetChanged() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            adapterWrapper.notifyDataSetChanged();
        }
    }

    public HeaderAndFooterGridView(Context context) {
        super(context);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public HeaderAndFooterGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public HeaderAndFooterGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public HeaderAndFooterGridView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public final void addHeaderView(View view, Object obj, boolean z) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        this.headers.add(new FullWidthItem(view, obj, z));
        notifyDataSetChanged();
    }

    public final void addFooterView(View view, Object obj, boolean z) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        this.footers.add(new FullWidthItem(view, obj, z));
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeHeaderView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        for (int headerViewsCount = getHeaderViewsCount() - 1; headerViewsCount >= 0; headerViewsCount--) {
            if (this.headers.get(headerViewsCount).view.getChildAt(0) == view) {
                this.headers.remove(headerViewsCount);
                notifyDataSetChanged();
                return;
            }
        }
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View removeHeaderView(int i) {
        FullWidthItem fullWidthItemRemove = this.headers.remove(i);
        notifyDataSetChanged();
        return fullWidthItemRemove.view;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeAllHeaderViews() {
        this.headers.clear();
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View getHeaderView(int i) {
        return this.headers.get(i).view;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final int getHeaderViewsCount() {
        return this.headers.size();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void addFooterView(View view) {
        addFooterView(view, null, true);
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeFooterView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        for (int footerViewsCount = getFooterViewsCount() - 1; footerViewsCount >= 0; footerViewsCount--) {
            if (this.footers.get(footerViewsCount).view.getChildAt(0) == view) {
                this.footers.remove(footerViewsCount);
                notifyDataSetChanged();
                return;
            }
        }
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View removeFooterView(int i) {
        FullWidthItem fullWidthItemRemove = this.footers.remove(i);
        notifyDataSetChanged();
        return fullWidthItemRemove.view;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeAllFooterViews() {
        this.footers.clear();
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View getFooterView(int i) {
        return this.footers.get(i).view;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final int getFooterViewsCount() {
        return this.footers.size();
    }

    @Override // android.view.ViewGroup
    public final void setClipChildren(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Header and footer views require the GridView's children to not be clipped");
        }
        super.setClipChildren(false);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            return adapterWrapper.getEncapsulatedAdapter();
        }
        return null;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != null) {
            AdapterWrapper adapterWrapper = new AdapterWrapper(listAdapter);
            this.adapter = adapterWrapper;
            super.setAdapter((ListAdapter) adapterWrapper);
        } else {
            this.adapter = null;
            super.setAdapter((ListAdapter) null);
        }
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener != null ? createItemClickListener(onItemClickListener) : null);
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        super.setOnItemLongClickListener(onItemLongClickListener != null ? createItemLongClickListener(onItemLongClickListener) : null);
    }
}
