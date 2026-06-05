package com.mikepenz.fastadapter.utils;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemList;
import kotlin.Metadata;

/* JADX INFO: compiled from: DefaultItemList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b&\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR4\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/mikepenz/fastadapter/utils/DefaultItemList;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/IItemList;", "()V", "_fastAdapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "active", "", "getActive", "()Z", "setActive", "(Z)V", "value", "fastAdapter", "getFastAdapter", "()Lcom/mikepenz/fastadapter/FastAdapter;", "setFastAdapter", "(Lcom/mikepenz/fastadapter/FastAdapter;)V", "fastadapter"}, k = 1, mv = {1, 1, 16})
public abstract class DefaultItemList<Item extends IItem<? extends RecyclerView.ViewHolder>> implements IItemList<Item> {
    private FastAdapter<Item> _fastAdapter;
    private boolean active = true;

    @Override // com.mikepenz.fastadapter.IItemList
    public Item peek(int i) {
        return (Item) IItemList.DefaultImpls.peek(this, i);
    }

    public final FastAdapter<Item> getFastAdapter() {
        if (getActive()) {
            return this._fastAdapter;
        }
        return null;
    }

    public final void setFastAdapter(FastAdapter<Item> fastAdapter) {
        this._fastAdapter = fastAdapter;
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public boolean getActive() {
        return this.active;
    }

    @Override // com.mikepenz.fastadapter.IItemList
    public void setActive(boolean z) {
        this.active = z;
    }
}
