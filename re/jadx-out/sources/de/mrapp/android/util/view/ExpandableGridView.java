package de.mrapp.android.util.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import de.mrapp.android.util.view.HeaderAndFooterGridView;
import de.mrapp.util.Condition;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ExpandableGridView extends HeaderAndFooterGridView {
    private static final long PACKED_POSITION_INT_MASK_GROUP = 2147483647L;
    private static final long PACKED_POSITION_MASK_CHILD = 4294967295L;
    private static final long PACKED_POSITION_MASK_GROUP = 9223372032559808512L;
    private static final long PACKED_POSITION_MASK_TYPE = Long.MIN_VALUE;
    private static final long PACKED_POSITION_SHIFT_GROUP = 32;
    private static final long PACKED_POSITION_SHIFT_TYPE = 63;
    public static final int PACKED_POSITION_TYPE_CHILD = 1;
    public static final int PACKED_POSITION_TYPE_GROUP = 0;
    public static final int PACKED_POSITION_TYPE_NULL = 2;
    public static final long PACKED_POSITION_VALUE_NULL = 4294967295L;
    private AdapterWrapper adapter;
    private OnChildClickListener childClickListener;
    private Set<Integer> expandedGroups;
    private OnGroupClickListener groupClickListener;
    private AdapterView.OnItemClickListener itemClickListener;
    private AdapterView.OnItemLongClickListener itemLongClickListener;

    public interface OnChildClickListener {
        boolean onChildClick(ExpandableGridView expandableGridView, View view, int i, int i2, long j);
    }

    public interface OnGroupClickListener {
        boolean onGroupClick(ExpandableGridView expandableGridView, View view, int i, long j);
    }

    public static int getPackedPositionChild(long j) {
        if (j == 4294967295L || (j & Long.MIN_VALUE) != Long.MIN_VALUE) {
            return -1;
        }
        return (int) (j & 4294967295L);
    }

    public static long getPackedPositionForChild(int i, int i2) {
        return ((long) i2) | ((((long) i) & PACKED_POSITION_INT_MASK_GROUP) << 32) | Long.MIN_VALUE;
    }

    public static long getPackedPositionForGroup(int i) {
        return (((long) i) & PACKED_POSITION_INT_MASK_GROUP) << 32;
    }

    public static int getPackedPositionGroup(long j) {
        if (j == 4294967295L) {
            return -1;
        }
        return (int) ((j & PACKED_POSITION_MASK_GROUP) >> 32);
    }

    public static int getPackedPositionType(long j) {
        if (j == 4294967295L) {
            return 2;
        }
        return (j & Long.MIN_VALUE) == Long.MIN_VALUE ? 1 : 0;
    }

    private class AdapterWrapper extends BaseAdapter {
        private final ExpandableListAdapter encapsulatedAdapter;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        private DataSetObserver createDataSetObserver() {
            return new DataSetObserver() { // from class: de.mrapp.android.util.view.ExpandableGridView.AdapterWrapper.1
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

        public AdapterWrapper(ExpandableListAdapter expandableListAdapter) {
            Condition.INSTANCE.ensureNotNull(expandableListAdapter, "The adapter may not be null");
            this.encapsulatedAdapter = expandableListAdapter;
            expandableListAdapter.registerDataSetObserver(createDataSetObserver());
        }

        public ExpandableListAdapter getEncapsulatedAdapter() {
            return this.encapsulatedAdapter;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int numColumnsCompatible = ExpandableGridView.this.getNumColumnsCompatible();
            int i = 0;
            for (int i2 = 0; i2 < this.encapsulatedAdapter.getGroupCount(); i2++) {
                i += numColumnsCompatible;
                if (ExpandableGridView.this.isGroupExpanded(i2)) {
                    int childrenCount = this.encapsulatedAdapter.getChildrenCount(i2);
                    int i3 = childrenCount % numColumnsCompatible;
                    i += childrenCount + (i3 > 0 ? numColumnsCompatible - i3 : 0);
                }
            }
            return i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            Pair itemPosition = ExpandableGridView.this.getItemPosition(i);
            int iIntValue = ((Integer) itemPosition.first).intValue();
            int iIntValue2 = ((Integer) itemPosition.second).intValue();
            if (iIntValue == -1 && iIntValue2 == -1) {
                return null;
            }
            if (iIntValue2 != -1) {
                return this.encapsulatedAdapter.getChild(iIntValue, iIntValue2);
            }
            return this.encapsulatedAdapter.getGroup(iIntValue);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Pair itemPosition = ExpandableGridView.this.getItemPosition(i);
            int iIntValue = ((Integer) itemPosition.first).intValue();
            int iIntValue2 = ((Integer) itemPosition.second).intValue();
            if (iIntValue == -1 && iIntValue2 == -1) {
                ExpandableGridView expandableGridView = ExpandableGridView.this;
                return expandableGridView.inflatePlaceholderView(view, expandableGridView.getViewHeight(this, i - 1));
            }
            if (iIntValue2 != -1) {
                ExpandableListAdapter expandableListAdapter = this.encapsulatedAdapter;
                return expandableListAdapter.getChildView(iIntValue, iIntValue2, iIntValue2 == expandableListAdapter.getChildrenCount(iIntValue) - 1, view, viewGroup);
            }
            ExpandableGridView expandableGridView2 = ExpandableGridView.this;
            return new HeaderAndFooterGridView.FullWidthContainer(this.encapsulatedAdapter.getGroupView(iIntValue, expandableGridView2.isGroupExpanded(iIntValue), null, viewGroup));
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return this.encapsulatedAdapter.areAllItemsEnabled();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return this.encapsulatedAdapter.hasStableIds();
        }
    }

    private void initialize() {
        this.expandedGroups = new HashSet();
        super.setOnItemClickListener(createItemClickListener());
        super.setOnItemLongClickListener(createItemLongClickListener());
    }

    private AdapterView.OnItemClickListener createItemClickListener() {
        return new AdapterView.OnItemClickListener() { // from class: de.mrapp.android.util.view.ExpandableGridView.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                long packedPositionForChild;
                ExpandableGridView expandableGridView = ExpandableGridView.this;
                Pair itemPosition = expandableGridView.getItemPosition(i - expandableGridView.getHeaderViewsCount());
                int iIntValue = ((Integer) itemPosition.first).intValue();
                int iIntValue2 = ((Integer) itemPosition.second).intValue();
                if (iIntValue2 != -1) {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForChild(iIntValue, iIntValue2);
                    ExpandableGridView.this.notifyOnChildClicked(view, iIntValue, iIntValue2, packedPositionForChild);
                } else if (iIntValue != -1) {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForGroup(iIntValue);
                    ExpandableGridView.this.notifyOnGroupClicked(view, iIntValue, packedPositionForChild);
                } else {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForChild(Integer.MAX_VALUE, i);
                }
                ExpandableGridView expandableGridView2 = ExpandableGridView.this;
                expandableGridView2.notifyOnItemClicked(view, expandableGridView2.getPackedPosition(i), packedPositionForChild);
            }
        };
    }

    private AdapterView.OnItemLongClickListener createItemLongClickListener() {
        return new AdapterView.OnItemLongClickListener() { // from class: de.mrapp.android.util.view.ExpandableGridView.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                long packedPositionForChild;
                ExpandableGridView expandableGridView = ExpandableGridView.this;
                Pair itemPosition = expandableGridView.getItemPosition(i - expandableGridView.getHeaderViewsCount());
                int iIntValue = ((Integer) itemPosition.first).intValue();
                int iIntValue2 = ((Integer) itemPosition.second).intValue();
                if (iIntValue2 != -1) {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForChild(iIntValue, iIntValue2);
                } else if (iIntValue != -1) {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForGroup(iIntValue);
                } else {
                    packedPositionForChild = ExpandableGridView.getPackedPositionForChild(Integer.MAX_VALUE, i);
                }
                ExpandableGridView expandableGridView2 = ExpandableGridView.this;
                return expandableGridView2.notifyOnItemLongClicked(view, expandableGridView2.getPackedPosition(i), packedPositionForChild);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPackedPosition(int i) {
        if (i < getHeaderViewsCount()) {
            return i;
        }
        Pair<Integer, Integer> itemPosition = getItemPosition(i - getHeaderViewsCount());
        int iIntValue = itemPosition.first.intValue();
        int iIntValue2 = itemPosition.second.intValue();
        if (iIntValue2 != -1 || iIntValue != -1) {
            if (iIntValue2 != -1) {
                return getPackedChildPosition(iIntValue, iIntValue2);
            }
            return getPackedGroupPosition(iIntValue);
        }
        int childrenCount = 0;
        for (int i2 = 0; i2 < getExpandableListAdapter().getGroupCount(); i2++) {
            childrenCount += getExpandableListAdapter().getChildrenCount(i2);
        }
        return (((getHeaderViewsCount() + getExpandableListAdapter().getGroupCount()) + childrenCount) + i) - (getHeaderViewsCount() + this.adapter.getCount());
    }

    private int getPackedGroupPosition(int i) {
        int headerViewsCount = getHeaderViewsCount();
        if (i > 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                headerViewsCount += getExpandableListAdapter().getChildrenCount(i2) + 1;
            }
        }
        return headerViewsCount;
    }

    private int getPackedChildPosition(int i, int i2) {
        return getPackedGroupPosition(i) + i2 + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        r2 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.util.Pair<java.lang.Integer, java.lang.Integer> getItemPosition(int r6) {
        /*
            r5 = this;
            int r0 = r5.getNumColumnsCompatible()
            r1 = 0
            r2 = 0
        L6:
            android.widget.ExpandableListAdapter r3 = r5.getExpandableListAdapter()
            int r3 = r3.getGroupCount()
            r4 = -1
            if (r2 >= r3) goto L38
            if (r6 != 0) goto L14
            goto L39
        L14:
            if (r6 >= r0) goto L17
            goto L38
        L17:
            int r4 = r6 - r0
            boolean r6 = r5.isGroupExpanded(r2)
            if (r6 == 0) goto L34
            android.widget.ExpandableListAdapter r6 = r5.getExpandableListAdapter()
            int r6 = r6.getChildrenCount(r2)
            if (r4 >= r6) goto L2a
            goto L39
        L2a:
            int r3 = r6 % r0
            if (r3 <= 0) goto L31
            int r3 = r0 - r3
            goto L32
        L31:
            r3 = 0
        L32:
            int r6 = r6 + r3
            int r4 = r4 - r6
        L34:
            r6 = r4
            int r2 = r2 + 1
            goto L6
        L38:
            r2 = -1
        L39:
            androidx.core.util.Pair r6 = new androidx.core.util.Pair
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r4)
            r6.<init>(r0, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: de.mrapp.android.util.view.ExpandableGridView.getItemPosition(int):androidx.core.util.Pair");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnGroupClicked(View view, int i, long j) {
        OnGroupClickListener onGroupClickListener = this.groupClickListener;
        return onGroupClickListener != null && onGroupClickListener.onGroupClick(this, view, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnChildClicked(View view, int i, int i2, long j) {
        OnChildClickListener onChildClickListener = this.childClickListener;
        return onChildClickListener != null && onChildClickListener.onChildClick(this, view, i, i2, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnItemClicked(View view, int i, long j) {
        AdapterView.OnItemClickListener onItemClickListener = this.itemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(this, view, i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnItemLongClicked(View view, int i, long j) {
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.itemLongClickListener;
        return onItemLongClickListener != null && onItemLongClickListener.onItemLongClick(this, view, i, j);
    }

    private void notifyDataSetChanged() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            adapterWrapper.notifyDataSetChanged();
        }
    }

    public ExpandableGridView(Context context) {
        super(context, null);
        initialize();
    }

    public ExpandableGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize();
    }

    public ExpandableGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public ExpandableGridView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public final void setAdapter(ExpandableListAdapter expandableListAdapter) {
        this.expandedGroups.clear();
        if (expandableListAdapter != null) {
            AdapterWrapper adapterWrapper = new AdapterWrapper(expandableListAdapter);
            this.adapter = adapterWrapper;
            super.setAdapter((ListAdapter) adapterWrapper);
        } else {
            this.adapter = null;
            super.setAdapter((ListAdapter) null);
        }
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        AdapterWrapper adapterWrapper = this.adapter;
        if (adapterWrapper != null) {
            return adapterWrapper.getEncapsulatedAdapter();
        }
        return null;
    }

    public final boolean isGroupExpanded(int i) {
        return this.expandedGroups.contains(Integer.valueOf(i));
    }

    public final boolean expandGroup(int i) {
        if (getExpandableListAdapter() == null || isGroupExpanded(i)) {
            return false;
        }
        this.expandedGroups.add(Integer.valueOf(i));
        notifyDataSetChanged();
        return true;
    }

    public final boolean collapseGroup(int i) {
        if (getExpandableListAdapter() == null || !isGroupExpanded(i)) {
            return false;
        }
        this.expandedGroups.remove(Integer.valueOf(i));
        notifyDataSetChanged();
        return true;
    }

    public final void setOnGroupClickListener(OnGroupClickListener onGroupClickListener) {
        this.groupClickListener = onGroupClickListener;
    }

    public final void setOnChildClickListener(OnChildClickListener onChildClickListener) {
        this.childClickListener = onChildClickListener;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterGridView, android.widget.AdapterView
    public final void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterGridView, android.widget.AdapterView
    public final void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.itemLongClickListener = onItemLongClickListener;
    }

    @Override // de.mrapp.android.util.view.HeaderAndFooterGridView, android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        this.expandedGroups.clear();
        super.setAdapter(listAdapter);
    }
}
