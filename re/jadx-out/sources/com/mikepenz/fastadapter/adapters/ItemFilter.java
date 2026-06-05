package com.mikepenz.fastadapter.adapters;

import android.widget.Filter;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IAdapterExtension;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.listeners.ItemFilterListener;
import com.mikepenz.fastadapter.select.SelectExtension;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemFilter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\u00020\u0006B\u0019\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0002\u0010\tJ+\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0012\u0010)\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00010*\"\u00028\u0001H\u0007¢\u0006\u0002\u0010+J3\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010,\u001a\u00020&2\u0012\u0010)\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00010*\"\u00028\u0001H\u0007¢\u0006\u0002\u0010-J&\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010,\u001a\u00020&2\f\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010.J\u001e\u0010(\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\f\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010.J\u0010\u0010/\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\bJ\u000e\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u000bJ\u0013\u00103\u001a\u00020&2\u0006\u0010\u0013\u001a\u00028\u0001¢\u0006\u0002\u00104J\u000e\u00103\u001a\u00020&2\u0006\u00105\u001a\u000206J \u00107\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u00108\u001a\u00020&2\u0006\u00109\u001a\u00020&J\u0012\u0010:\u001a\u00020;2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014J\u001a\u0010<\u001a\u0002012\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010=\u001a\u00020;H\u0014J\u0018\u0010>\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010,\u001a\u00020&J \u0010?\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010,\u001a\u00020&2\u0006\u0010@\u001a\u00020&J\u0006\u0010A\u001a\u000201J(\u0010B\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\b2\u0006\u0010,\u001a\u00020&2\u0006\u0010\u0013\u001a\u00028\u0001H\u0086\u0002¢\u0006\u0002\u0010CR\"\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eRN\u0010\u000f\u001a6\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010$¨\u0006D"}, d2 = {"Lcom/mikepenz/fastadapter/adapters/ItemFilter;", "Model", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Landroid/widget/Filter;", "itemAdapter", "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V", "<set-?>", "", "constraint", "getConstraint", "()Ljava/lang/CharSequence;", "filterPredicate", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "item", "", "getFilterPredicate", "()Lkotlin/jvm/functions/Function2;", "setFilterPredicate", "(Lkotlin/jvm/functions/Function2;)V", "itemFilterListener", "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;", "getItemFilterListener", "()Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;", "setItemFilterListener", "(Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;)V", "originalItems", "", "selectedItems", "", "getSelectedItems", "()Ljava/util/Set;", "selections", "", "getSelections", "add", "items", "", "([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "position", "(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "", "clear", "filterItems", "", "filter", "getAdapterPosition", "(Lcom/mikepenz/fastadapter/IItem;)I", "identifier", "", "move", "fromPosition", "toPosition", "performFiltering", "Landroid/widget/Filter$FilterResults;", "publishResults", "results", "remove", "removeRange", "itemCount", "resetFilter", "set", "(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class ItemFilter<Model, Item extends IItem<? extends RecyclerView.ViewHolder>> extends Filter {
    private CharSequence constraint;
    private Function2<? super Item, ? super CharSequence, Boolean> filterPredicate;
    private final ModelAdapter<Model, Item> itemAdapter;
    private ItemFilterListener<Item> itemFilterListener;
    private List<Item> originalItems;

    public ItemFilter(ModelAdapter<Model, Item> itemAdapter) {
        Intrinsics.checkParameterIsNotNull(itemAdapter, "itemAdapter");
        this.itemAdapter = itemAdapter;
    }

    public final CharSequence getConstraint() {
        return this.constraint;
    }

    public final ItemFilterListener<Item> getItemFilterListener() {
        return this.itemFilterListener;
    }

    public final void setItemFilterListener(ItemFilterListener<Item> itemFilterListener) {
        this.itemFilterListener = itemFilterListener;
    }

    public final Function2<Item, CharSequence, Boolean> getFilterPredicate() {
        return this.filterPredicate;
    }

    public final void setFilterPredicate(Function2<? super Item, ? super CharSequence, Boolean> function2) {
        this.filterPredicate = function2;
    }

    public Set<Integer> getSelections() {
        FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
        if (fastAdapter == null) {
            return SetsKt.emptySet();
        }
        int preItemCountByOrder = fastAdapter.getPreItemCountByOrder(this.itemAdapter.getOrder());
        List<Item> list = this.originalItems;
        HashSet selections = null;
        if (list == null) {
            SelectExtension selectExtension = (SelectExtension) fastAdapter.getExtension(SelectExtension.class);
            if (selectExtension != null) {
                selections = selectExtension.getSelections();
            }
        } else {
            HashSet hashSet = new HashSet();
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Integer numValueOf = ((IItem) obj).getIsSelected() ? Integer.valueOf(i + preItemCountByOrder) : null;
                if (numValueOf != null) {
                    hashSet.add(numValueOf);
                }
                i = i2;
            }
            selections = hashSet;
        }
        return selections != null ? selections : SetsKt.emptySet();
    }

    public Set<Item> getSelectedItems() {
        HashSet selectedItems;
        SelectExtension selectExtension;
        List<Item> list = this.originalItems;
        if (list == null) {
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            selectedItems = (fastAdapter == null || (selectExtension = (SelectExtension) fastAdapter.getExtension(SelectExtension.class)) == null) ? null : selectExtension.getSelectedItems();
        } else {
            HashSet hashSet = new HashSet();
            for (Object obj : list) {
                if (((IItem) obj).getIsSelected()) {
                    hashSet.add(obj);
                }
            }
            selectedItems = hashSet;
        }
        return selectedItems != null ? selectedItems : SetsKt.emptySet();
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence constraint) {
        ArrayList adapterItems;
        Collection<IAdapterExtension<Item>> extensions;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (this.originalItems == null && (constraint == null || constraint.length() == 0)) {
            return filterResults;
        }
        FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
        if (fastAdapter != null && (extensions = fastAdapter.getExtensions()) != null) {
            Iterator<T> it = extensions.iterator();
            while (it.hasNext()) {
                ((IAdapterExtension) it.next()).performFiltering(constraint);
            }
        }
        this.constraint = constraint;
        ArrayList arrayList = this.originalItems;
        if (arrayList == null) {
            arrayList = new ArrayList(this.itemAdapter.getAdapterItems());
            this.originalItems = arrayList;
        }
        if (constraint == null || constraint.length() == 0) {
            filterResults.values = arrayList;
            filterResults.count = arrayList.size();
            this.originalItems = null;
            ItemFilterListener<Item> itemFilterListener = this.itemFilterListener;
            if (itemFilterListener != null) {
                itemFilterListener.onReset();
            }
        } else {
            Function2<? super Item, ? super CharSequence, Boolean> function2 = this.filterPredicate;
            if (function2 == null) {
                adapterItems = this.itemAdapter.getAdapterItems();
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (function2.invoke((IItem) obj, constraint).booleanValue()) {
                        arrayList2.add(obj);
                    }
                }
                adapterItems = arrayList2;
            }
            filterResults.values = adapterItems;
            filterResults.count = adapterItems.size();
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence constraint, Filter.FilterResults results) {
        ItemFilterListener<Item> itemFilterListener;
        Intrinsics.checkParameterIsNotNull(results, "results");
        if (results.values != null) {
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            Object obj = results.values;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.List<Item>");
            }
            modelAdapter.setInternal((List) obj, false, null);
        }
        if (this.originalItems == null || (itemFilterListener = this.itemFilterListener) == null) {
            return;
        }
        Object obj2 = results.values;
        if (obj2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.List<Item>");
        }
        itemFilterListener.itemsFiltered(constraint, (List) obj2);
    }

    public final void resetFilter() {
        performFiltering(null);
    }

    public final void filterItems(CharSequence filter) {
        Intrinsics.checkParameterIsNotNull(filter, "filter");
        publishResults(filter, performFiltering(filter));
    }

    public final int getAdapterPosition(Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        return getAdapterPosition(item.getIdentifier());
    }

    public final int getAdapterPosition(long identifier) {
        List<Item> list = this.originalItems;
        if (list == null) {
            return -1;
        }
        Iterator<Item> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getIdentifier() == identifier) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @SafeVarargs
    public final ModelAdapter<?, Item> add(Item... items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return add(CollectionsKt.listOf(Arrays.copyOf(items, items.length)));
    }

    public final ModelAdapter<?, Item> add(List<? extends Item> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        if (items.isEmpty()) {
            return this.itemAdapter;
        }
        List<Item> list = this.originalItems;
        if (list != null) {
            if (this.itemAdapter.getIsUseIdDistributor()) {
                this.itemAdapter.getIdDistributor().checkIds(items);
            }
            list.addAll(items);
            CharSequence charSequence = this.constraint;
            publishResults(charSequence, performFiltering(charSequence));
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.addInternal((List) items);
    }

    @SafeVarargs
    public final ModelAdapter<?, Item> add(int position, Item... items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        List<? extends Item> listAsList = Arrays.asList((IItem[]) Arrays.copyOf(items, items.length));
        Intrinsics.checkExpressionValueIsNotNull(listAsList, "asList(*items)");
        return add(position, listAsList);
    }

    public final ModelAdapter<?, Item> add(int position, List<? extends Item> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        if (items.isEmpty()) {
            return this.itemAdapter;
        }
        List<Item> list = this.originalItems;
        if (list != null) {
            if (this.itemAdapter.getIsUseIdDistributor()) {
                this.itemAdapter.getIdDistributor().checkIds(items);
            }
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            if (fastAdapter != null) {
                list.addAll(getAdapterPosition(this.itemAdapter.getAdapterItems().get(position)) - fastAdapter.getPreItemCount(position), items);
            }
            CharSequence charSequence = this.constraint;
            publishResults(charSequence, performFiltering(charSequence));
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.addInternal(position, (List) items);
    }

    public final ModelAdapter<?, Item> set(int position, Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        List<Item> list = this.originalItems;
        if (list != null) {
            if (this.itemAdapter.getIsUseIdDistributor()) {
                this.itemAdapter.getIdDistributor().checkId(item);
            }
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            if (fastAdapter != null) {
                list.set(getAdapterPosition(this.itemAdapter.getAdapterItems().get(position)) - fastAdapter.getPreItemCount(position), item);
            }
            CharSequence charSequence = this.constraint;
            publishResults(charSequence, performFiltering(charSequence));
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.setInternal(position, (IItem) item);
    }

    public final ModelAdapter<?, Item> move(int fromPosition, int toPosition) {
        List<Item> list = this.originalItems;
        if (list != null) {
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            if (fastAdapter != null) {
                int preItemCount = fastAdapter.getPreItemCount(fromPosition);
                int adapterPosition = getAdapterPosition(this.itemAdapter.getAdapterItems().get(fromPosition));
                int adapterPosition2 = getAdapterPosition(this.itemAdapter.getAdapterItems().get(toPosition));
                int i = adapterPosition - preItemCount;
                Item item = list.get(i);
                list.remove(i);
                list.add(adapterPosition2 - preItemCount, item);
                performFiltering(this.constraint);
            }
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.move(fromPosition, toPosition);
    }

    public final ModelAdapter<?, Item> remove(int position) {
        List<Item> list = this.originalItems;
        if (list != null) {
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            if (fastAdapter != null) {
                list.remove(getAdapterPosition(this.itemAdapter.getAdapterItems().get(position)) - fastAdapter.getPreItemCount(position));
            }
            CharSequence charSequence = this.constraint;
            publishResults(charSequence, performFiltering(charSequence));
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.remove(position);
    }

    public final ModelAdapter<?, Item> removeRange(int position, int itemCount) {
        List<Item> list = this.originalItems;
        if (list != null) {
            int size = list.size();
            FastAdapter<Item> fastAdapter = this.itemAdapter.getFastAdapter();
            if (fastAdapter != null) {
                int preItemCount = fastAdapter.getPreItemCount(position);
                int iMin = Math.min(itemCount, (size - position) + preItemCount);
                for (int i = 0; i < iMin; i++) {
                    list.remove(position - preItemCount);
                }
                CharSequence charSequence = this.constraint;
                publishResults(charSequence, performFiltering(charSequence));
            }
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.removeRange(position, itemCount);
    }

    public final ModelAdapter<?, Item> clear() {
        List<Item> list = this.originalItems;
        if (list != null) {
            list.clear();
            CharSequence charSequence = this.constraint;
            publishResults(charSequence, performFiltering(charSequence));
            ModelAdapter<Model, Item> modelAdapter = this.itemAdapter;
            if (modelAdapter != null) {
                return modelAdapter;
            }
        }
        return this.itemAdapter.clear();
    }
}
