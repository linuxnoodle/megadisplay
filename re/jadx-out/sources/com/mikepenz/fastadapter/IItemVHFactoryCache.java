package com.mikepenz.fastadapter;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItemVHFactory;
import kotlin.Metadata;

/* JADX INFO: compiled from: IItemVHFactoryCache.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bf\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J\b\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\f\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u000bH¦\u0002¢\u0006\u0002\u0010\rJ\u001d\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/mikepenz/fastadapter/IItemVHFactoryCache;", "ItemVHFactory", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItemVHFactory;", "", "clear", "", "contains", "", "type", "", "get", "(I)Lcom/mikepenz/fastadapter/IItemVHFactory;", "register", "item", "(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z", "fastadapter"}, k = 1, mv = {1, 1, 16})
public interface IItemVHFactoryCache<ItemVHFactory extends IItemVHFactory<? extends RecyclerView.ViewHolder>> {
    void clear();

    boolean contains(int type);

    ItemVHFactory get(int type);

    boolean register(int type, ItemVHFactory item);
}
