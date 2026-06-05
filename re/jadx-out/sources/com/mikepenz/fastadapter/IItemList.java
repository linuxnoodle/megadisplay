package com.mikepenz.fastadapter;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: IItemList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H&J\u001e\u0010\u0011\u001a\u00020\u00122\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0018\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0013\u001a\u00020\u0014H¦\u0002¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0017\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¢\u0006\u0002\u0010\u0019J\u0018\u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J \u0010\"\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J&\u0010$\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010%\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0014H¦\u0002¢\u0006\u0002\u0010&J)\u0010$\u001a\u00020\u00122\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u00142\b\u0010'\u001a\u0004\u0018\u00010(H¦\u0002J\u001e\u0010)\u001a\u00020\u00122\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010*\u001a\u00020\u0007H&J\b\u0010+\u001a\u00020\u0014H&R\u0018\u0010\u0006\u001a\u00020\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\tR\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006,"}, d2 = {"Lcom/mikepenz/fastadapter/IItemList;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "", "active", "", "getActive", "()Z", "setActive", "(Z)V", "isEmpty", "items", "", "getItems", "()Ljava/util/List;", "addAll", "", "position", "", "", "preItemCount", "clear", "get", "(I)Lcom/mikepenz/fastadapter/IItem;", "getAdapterPosition", "identifier", "", "move", "fromPosition", "toPosition", "peek", "remove", "removeRange", "itemCount", "set", "item", "(ILcom/mikepenz/fastadapter/IItem;I)V", "adapterNotifier", "Lcom/mikepenz/fastadapter/IAdapterNotifier;", "setNewList", "notify", "size", "fastadapter"}, k = 1, mv = {1, 1, 16})
public interface IItemList<Item extends IItem<? extends RecyclerView.ViewHolder>> {
    void addAll(int position, List<? extends Item> items, int preItemCount);

    void addAll(List<? extends Item> items, int preItemCount);

    void clear(int preItemCount);

    Item get(int position);

    boolean getActive();

    int getAdapterPosition(long identifier);

    List<Item> getItems();

    boolean isEmpty();

    void move(int fromPosition, int toPosition, int preItemCount);

    Item peek(int position);

    void remove(int position, int preItemCount);

    void removeRange(int position, int itemCount, int preItemCount);

    void set(int position, Item item, int preItemCount);

    void set(List<? extends Item> items, int preItemCount, IAdapterNotifier adapterNotifier);

    void setActive(boolean z);

    void setNewList(List<? extends Item> items, boolean notify);

    int size();

    /* JADX INFO: compiled from: IItemList.kt */
    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    public static final class DefaultImpls {
        public static <Item extends IItem<? extends RecyclerView.ViewHolder>> Item peek(IItemList<Item> iItemList, int i) {
            return (Item) iItemList.get(i);
        }
    }
}
