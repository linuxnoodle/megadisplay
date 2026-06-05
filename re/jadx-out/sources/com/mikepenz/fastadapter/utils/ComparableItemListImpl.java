package com.mikepenz.fastadapter.utils;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ComparableItemListImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B'\b\u0007\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0002\u0010\nJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001e\u0010\u0017\u001a\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u0019H\u0007R.\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;", "comparator", "Ljava/util/Comparator;", "items", "", "(Ljava/util/Comparator;Ljava/util/List;)V", "<set-?>", "getComparator", "()Ljava/util/Comparator;", "addAll", "", "position", "", "", "preItemCount", "move", "fromPosition", "toPosition", "setNewList", "notify", "", "withComparator", "sortNow", "fastadapter"}, k = 1, mv = {1, 1, 16})
public final class ComparableItemListImpl<Item extends IItem<? extends RecyclerView.ViewHolder>> extends DefaultItemListImpl<Item> {
    private Comparator<Item> comparator;

    /* JADX WARN: Multi-variable type inference failed */
    public ComparableItemListImpl(Comparator<Item> comparator) {
        this(comparator, null, 2, 0 == true ? 1 : 0);
    }

    public final ComparableItemListImpl<Item> withComparator(Comparator<Item> comparator) {
        return withComparator$default(this, comparator, false, 2, null);
    }

    public /* synthetic */ ComparableItemListImpl(Comparator comparator, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(comparator, (i & 2) != 0 ? new ArrayList() : arrayList);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComparableItemListImpl(Comparator<Item> comparator, List<Item> items) {
        super(items);
        Intrinsics.checkParameterIsNotNull(items, "items");
        this.comparator = comparator;
    }

    public final Comparator<Item> getComparator() {
        return this.comparator;
    }

    public static /* synthetic */ ComparableItemListImpl withComparator$default(ComparableItemListImpl comparableItemListImpl, Comparator comparator, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return comparableItemListImpl.withComparator(comparator, z);
    }

    public final ComparableItemListImpl<Item> withComparator(Comparator<Item> comparator, boolean sortNow) {
        this.comparator = comparator;
        if (comparator != null && sortNow) {
            Collections.sort(get_items(), this.comparator);
            FastAdapter<Item> fastAdapter = getFastAdapter();
            if (fastAdapter != null) {
                fastAdapter.notifyAdapterDataSetChanged();
            }
        }
        return this;
    }

    @Override // com.mikepenz.fastadapter.utils.DefaultItemListImpl, com.mikepenz.fastadapter.IItemList
    public void move(int fromPosition, int toPosition, int preItemCount) {
        int i = fromPosition - preItemCount;
        Item item = get_items().get(i);
        get_items().remove(i);
        get_items().add(toPosition - preItemCount, item);
        SortKt.trySortWith(get_items(), this.comparator);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterDataSetChanged();
        }
    }

    @Override // com.mikepenz.fastadapter.utils.DefaultItemListImpl, com.mikepenz.fastadapter.IItemList
    public void addAll(List<? extends Item> items, int preItemCount) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        get_items().addAll(items);
        SortKt.trySortWith(get_items(), this.comparator);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterDataSetChanged();
        }
    }

    @Override // com.mikepenz.fastadapter.utils.DefaultItemListImpl, com.mikepenz.fastadapter.IItemList
    public void addAll(int position, List<? extends Item> items, int preItemCount) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        get_items().addAll(position - preItemCount, items);
        SortKt.trySortWith(get_items(), this.comparator);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterDataSetChanged();
        }
    }

    @Override // com.mikepenz.fastadapter.utils.DefaultItemListImpl, com.mikepenz.fastadapter.IItemList
    public void setNewList(List<? extends Item> items, boolean notify) {
        FastAdapter<Item> fastAdapter;
        Intrinsics.checkParameterIsNotNull(items, "items");
        set_items(new ArrayList(items));
        SortKt.trySortWith(get_items(), this.comparator);
        if (!notify || (fastAdapter = getFastAdapter()) == null) {
            return;
        }
        fastAdapter.notifyAdapterDataSetChanged();
    }
}
