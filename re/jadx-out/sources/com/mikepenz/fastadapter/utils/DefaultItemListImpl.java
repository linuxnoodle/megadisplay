package com.mikepenz.fastadapter.utils;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IAdapterNotifier;
import com.mikepenz.fastadapter.IItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultItemListImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0017\b\u0007\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u001e\u0010\u0011\u001a\u00020\u00122\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0016\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0096\u0002¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J \u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J \u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J&\u0010#\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0014H\u0096\u0002¢\u0006\u0002\u0010%J)\u0010#\u001a\u00020\u00122\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u00142\b\u0010&\u001a\u0004\u0018\u00010'H\u0096\u0002J\u001e\u0010(\u001a\u00020\u00122\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010)\u001a\u00020\rH\u0016J\b\u0010*\u001a\u00020\u0014H\u0016R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\n¨\u0006+"}, d2 = {"Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/utils/DefaultItemList;", "_items", "", "(Ljava/util/List;)V", "get_items", "()Ljava/util/List;", "set_items", "isEmpty", "", "()Z", "items", "getItems", "addAll", "", "position", "", "", "preItemCount", "clear", "get", "(I)Lcom/mikepenz/fastadapter/IItem;", "getAdapterPosition", "identifier", "", "move", "fromPosition", "toPosition", "remove", "removeRange", "itemCount", "set", "item", "(ILcom/mikepenz/fastadapter/IItem;I)V", "adapterNotifier", "Lcom/mikepenz/fastadapter/IAdapterNotifier;", "setNewList", "notify", "size", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class DefaultItemListImpl<Item extends IItem<? extends RecyclerView.ViewHolder>> extends DefaultItemList<Item> {
    private List<Item> _items;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultItemListImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DefaultItemListImpl(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList);
    }

    protected final List<Item> get_items() {
        return this._items;
    }

    protected final void set_items(List<Item> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this._items = list;
    }

    public DefaultItemListImpl(List<Item> _items) {
        Intrinsics.checkParameterIsNotNull(_items, "_items");
        this._items = _items;
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public List<Item> getItems() {
        return this._items;
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public boolean isEmpty() {
        return this._items.isEmpty();
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public Item get(int position) {
        return this._items.get(position);
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public int getAdapterPosition(long identifier) {
        Iterator<Item> it = this._items.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getIdentifier() == identifier) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void remove(int position, int preItemCount) {
        this._items.remove(position - preItemCount);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemRemoved(position);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void removeRange(int position, int itemCount, int preItemCount) {
        int iMin = Math.min(itemCount, (this._items.size() - position) + preItemCount);
        for (int i = 0; i < iMin; i++) {
            this._items.remove(position - preItemCount);
        }
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemRangeRemoved(position, iMin);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void move(int fromPosition, int toPosition, int preItemCount) {
        int i = fromPosition - preItemCount;
        Item item = this._items.get(i);
        this._items.remove(i);
        this._items.add(toPosition - preItemCount, item);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemMoved(fromPosition, toPosition);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public int size() {
        return this._items.size();
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void clear(int preItemCount) {
        int size = this._items.size();
        this._items.clear();
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemRangeRemoved(preItemCount, size);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void set(int position, Item item, int preItemCount) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        this._items.set(position - preItemCount, item);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            FastAdapter.notifyAdapterItemChanged$default(fastAdapter, position, null, 2, null);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void addAll(List<? extends Item> items, int preItemCount) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        int size = this._items.size();
        this._items.addAll(items);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemRangeInserted(preItemCount + size, items.size());
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void addAll(int position, List<? extends Item> items, int preItemCount) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        this._items.addAll(position - preItemCount, items);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterItemRangeInserted(position, items.size());
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void set(List<? extends Item> items, int preItemCount, IAdapterNotifier adapterNotifier) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        int size = items.size();
        int size2 = this._items.size();
        if (items != this._items) {
            if (!r2.isEmpty()) {
                this._items.clear();
            }
            this._items.addAll(items);
        }
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            if (adapterNotifier == null) {
                adapterNotifier = IAdapterNotifier.DEFAULT;
            }
            adapterNotifier.notify(fastAdapter, size, size2, preItemCount);
        }
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void setNewList(List<? extends Item> items, boolean notify) {
        FastAdapter<Item> fastAdapter;
        Intrinsics.checkParameterIsNotNull(items, "items");
        this._items = new ArrayList(items);
        if (!notify || (fastAdapter = getFastAdapter()) == null) {
            return;
        }
        fastAdapter.notifyAdapterDataSetChanged();
    }
}
