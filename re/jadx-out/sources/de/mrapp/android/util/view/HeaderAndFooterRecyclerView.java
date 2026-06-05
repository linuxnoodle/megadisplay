package de.mrapp.android.util.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.util.ViewUtil;
import de.mrapp.util.Condition;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderAndFooterRecyclerView extends RecyclerView implements HeaderAndFooterAdapterView {
    private AdapterWrapper adapter;
    private final List<View> footers;
    private final List<View> headers;

    private class AdapterWrapper extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        public static final int VIEW_TYPE_FOOTER = 4320;
        public static final int VIEW_TYPE_HEADER = 4319;
        private final RecyclerView.Adapter encapsulatedAdapter;

        private class HeaderViewHolder extends RecyclerView.ViewHolder {
            HeaderViewHolder(ViewGroup viewGroup) {
                super(viewGroup);
            }
        }

        private class FooterViewHolder extends RecyclerView.ViewHolder {
            public FooterViewHolder(ViewGroup viewGroup) {
                super(viewGroup);
            }
        }

        private RecyclerView.AdapterDataObserver createDataObserver() {
            return new RecyclerView.AdapterDataObserver() { // from class: de.mrapp.android.util.view.HeaderAndFooterRecyclerView.AdapterWrapper.1
                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    super.onChanged();
                    AdapterWrapper.this.notifyDataSetChanged();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeChanged(int i, int i2) {
                    super.onItemRangeChanged(i, i2);
                    AdapterWrapper adapterWrapper = AdapterWrapper.this;
                    adapterWrapper.notifyItemRangeChanged(i + HeaderAndFooterRecyclerView.this.getHeaderViewsCount(), i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeChanged(int i, int i2, Object obj) {
                    super.onItemRangeChanged(i, i2, obj);
                    AdapterWrapper adapterWrapper = AdapterWrapper.this;
                    adapterWrapper.notifyItemRangeChanged(i + HeaderAndFooterRecyclerView.this.getHeaderViewsCount(), i2, obj);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeInserted(int i, int i2) {
                    super.onItemRangeInserted(i, i2);
                    AdapterWrapper adapterWrapper = AdapterWrapper.this;
                    adapterWrapper.notifyItemRangeInserted(i + HeaderAndFooterRecyclerView.this.getHeaderViewsCount(), i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeRemoved(int i, int i2) {
                    super.onItemRangeRemoved(i, i2);
                    AdapterWrapper adapterWrapper = AdapterWrapper.this;
                    adapterWrapper.notifyItemRangeRemoved(i + HeaderAndFooterRecyclerView.this.getHeaderViewsCount(), i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onItemRangeMoved(int i, int i2, int i3) {
                    super.onItemRangeMoved(i, i2, i3);
                    int headerViewsCount = HeaderAndFooterRecyclerView.this.getHeaderViewsCount();
                    for (int i4 = 0; i4 < i3; i4++) {
                        AdapterWrapper.this.notifyItemMoved(i + i4 + headerViewsCount, i2 + i4 + headerViewsCount);
                    }
                }
            };
        }

        public AdapterWrapper(RecyclerView.Adapter adapter) {
            Condition.INSTANCE.ensureNotNull(adapter, "The adapter may not be null");
            this.encapsulatedAdapter = adapter;
            adapter.registerAdapterDataObserver(createDataObserver());
            setHasStableIds(adapter.hasStableIds());
        }

        public RecyclerView.Adapter getEncapsulatedAdapter() {
            return this.encapsulatedAdapter;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 4319) {
                FrameLayout frameLayout = new FrameLayout(HeaderAndFooterRecyclerView.this.getContext());
                frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                return new HeaderViewHolder(frameLayout);
            }
            if (i == 4320) {
                FrameLayout frameLayout2 = new FrameLayout(HeaderAndFooterRecyclerView.this.getContext());
                frameLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                return new FooterViewHolder(frameLayout2);
            }
            return this.encapsulatedAdapter.onCreateViewHolder(viewGroup, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder instanceof HeaderViewHolder) {
                ViewGroup viewGroup = (ViewGroup) viewHolder.itemView;
                viewGroup.removeAllViews();
                View view = (View) HeaderAndFooterRecyclerView.this.headers.get(i);
                ViewUtil.removeFromParent(view);
                viewGroup.addView(view);
                return;
            }
            if (viewHolder instanceof FooterViewHolder) {
                ViewGroup viewGroup2 = (ViewGroup) viewHolder.itemView;
                viewGroup2.removeAllViews();
                View view2 = (View) HeaderAndFooterRecyclerView.this.footers.get((i - this.encapsulatedAdapter.getItemCount()) - HeaderAndFooterRecyclerView.this.getHeaderViewsCount());
                ViewUtil.removeFromParent(view2);
                viewGroup2.addView(view2);
                return;
            }
            this.encapsulatedAdapter.onBindViewHolder(viewHolder, i - HeaderAndFooterRecyclerView.this.getHeaderViewsCount());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i < HeaderAndFooterRecyclerView.this.getHeaderViewsCount() ? VIEW_TYPE_HEADER : i < HeaderAndFooterRecyclerView.this.getHeaderViewsCount() + this.encapsulatedAdapter.getItemCount() ? this.encapsulatedAdapter.getItemViewType(i - HeaderAndFooterRecyclerView.this.getHeaderViewsCount()) : VIEW_TYPE_FOOTER;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.encapsulatedAdapter.getItemCount() + HeaderAndFooterRecyclerView.this.getHeaderViewsCount() + HeaderAndFooterRecyclerView.this.getFooterViewsCount();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            int i2;
            int itemViewType = getItemViewType(i);
            int i3 = 31 + itemViewType;
            if (itemViewType == 4319 || itemViewType == 4320) {
                i2 = 0;
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(this.encapsulatedAdapter.getItemId(i - HeaderAndFooterRecyclerView.this.getHeaderViewsCount()));
                i2 = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
            }
            return (i3 * 31) + i2;
        }
    }

    private void notifyDataSetChanged() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            adapterWrapper.notifyDataSetChanged();
        }
    }

    public HeaderAndFooterRecyclerView(Context context) {
        super(context);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public HeaderAndFooterRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    public HeaderAndFooterRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.headers = new ArrayList();
        this.footers = new ArrayList();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void addHeaderView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        this.headers.add(view);
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeHeaderView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        for (int headerViewsCount = getHeaderViewsCount() - 1; headerViewsCount >= 0; headerViewsCount--) {
            if (this.headers.get(headerViewsCount) == view) {
                this.headers.remove(headerViewsCount);
                notifyDataSetChanged();
                return;
            }
        }
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View removeHeaderView(int i) {
        View viewRemove = this.headers.remove(i);
        notifyDataSetChanged();
        return viewRemove;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeAllHeaderViews() {
        this.headers.clear();
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View getHeaderView(int i) {
        return this.headers.get(i);
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final int getHeaderViewsCount() {
        return this.headers.size();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void addFooterView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        this.footers.add(view);
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeFooterView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        for (int footerViewsCount = getFooterViewsCount() - 1; footerViewsCount >= 0; footerViewsCount--) {
            if (this.footers.get(footerViewsCount) == view) {
                this.footers.remove(footerViewsCount);
                notifyDataSetChanged();
                return;
            }
        }
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View removeFooterView(int i) {
        View viewRemove = this.footers.remove(i);
        notifyDataSetChanged();
        return viewRemove;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final void removeAllFooterViews() {
        this.footers.clear();
        notifyDataSetChanged();
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final View getFooterView(int i) {
        return this.footers.get(i);
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterAdapterView
    public final int getFooterViewsCount() {
        return this.footers.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final RecyclerView.Adapter getAdapter() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            return adapterWrapper.getEncapsulatedAdapter();
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setAdapter(RecyclerView.Adapter adapter) {
        if (adapter != null) {
            AdapterWrapper adapterWrapper = new AdapterWrapper(adapter);
            this.adapter = adapterWrapper;
            super.setAdapter(adapterWrapper);
        } else {
            this.adapter = null;
            super.setAdapter(null);
        }
    }
}
