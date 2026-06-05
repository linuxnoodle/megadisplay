package com.mikepenz.fastadapter;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IAdapter;
import com.mikepenz.fastadapter.IItem;
import kotlin.Metadata;

/* JADX INFO: compiled from: AbstractAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/mikepenz/fastadapter/AbstractAdapter;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/IAdapter;", "()V", "fastAdapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "getFastAdapter", "()Lcom/mikepenz/fastadapter/FastAdapter;", "setFastAdapter", "(Lcom/mikepenz/fastadapter/FastAdapter;)V", "order", "", "getOrder", "()I", "setOrder", "(I)V", "fastadapter"}, k = 1, mv = {1, 1, 16})
public abstract class AbstractAdapter<Item extends IItem<? extends RecyclerView.ViewHolder>> implements IAdapter<Item> {
    private FastAdapter<Item> fastAdapter;
    private int order = -1;

    @Override // com.mikepenz.fastadapter.IAdapter
    public Item peekAdapterItem(int i) {
        return (Item) IAdapter.DefaultImpls.peekAdapterItem(this, i);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public FastAdapter<Item> getFastAdapter() {
        return this.fastAdapter;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public void setFastAdapter(FastAdapter<Item> fastAdapter) {
        this.fastAdapter = fastAdapter;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getOrder() {
        return this.order;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public void setOrder(int i) {
        this.order = i;
    }
}
