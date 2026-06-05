package com.mikepenz.fastadapter.utils;

import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItemVHFactory;
import com.mikepenz.fastadapter.IItemVHFactoryCache;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultItemVHFactoryCache.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0002¢\u0006\u0002\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;", "ItemVHFactory", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItemVHFactory;", "Lcom/mikepenz/fastadapter/IItemVHFactoryCache;", "()V", "typeInstances", "Landroid/util/SparseArray;", "clear", "", "contains", "", "type", "", "get", "(I)Lcom/mikepenz/fastadapter/IItemVHFactory;", "register", "item", "(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z", "fastadapter"}, k = 1, mv = {1, 1, 16})
public final class DefaultItemVHFactoryCache<ItemVHFactory extends IItemVHFactory<? extends RecyclerView.ViewHolder>> implements IItemVHFactoryCache<ItemVHFactory> {
    private final SparseArray<ItemVHFactory> typeInstances = new SparseArray<>();

    @Override // com.mikepenz.fastadapter.IItemVHFactoryCache
    public boolean register(int type, ItemVHFactory item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (this.typeInstances.indexOfKey(type) >= 0) {
            return false;
        }
        this.typeInstances.put(type, item);
        return true;
    }

    @Override // com.mikepenz.fastadapter.IItemVHFactoryCache
    public ItemVHFactory get(int type) {
        ItemVHFactory itemvhfactory = this.typeInstances.get(type);
        Intrinsics.checkExpressionValueIsNotNull(itemvhfactory, "typeInstances.get(type)");
        return itemvhfactory;
    }

    @Override // com.mikepenz.fastadapter.IItemVHFactoryCache
    public boolean contains(int type) {
        return this.typeInstances.indexOfKey(type) >= 0;
    }

    @Override // com.mikepenz.fastadapter.IItemVHFactoryCache
    public void clear() {
        this.typeInstances.clear();
    }
}
