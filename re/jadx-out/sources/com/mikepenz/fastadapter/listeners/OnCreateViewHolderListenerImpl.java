package com.mikepenz.fastadapter.listeners;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IHookable;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemVHFactory;
import com.mikepenz.fastadapter.utils.EventHookUtilKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OnCreateViewHolderListenerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0016\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005¢\u0006\u0002\u0010\u0006J*\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\n\u001a\u00020\u00032\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0016J2\u0010\r\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;", "()V", "onPostCreateViewHolder", "fastAdapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "viewHolder", "itemVHFactory", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "onPreCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class OnCreateViewHolderListenerImpl<Item extends IItem<? extends RecyclerView.ViewHolder>> implements OnCreateViewHolderListener<Item> {
    @Override // com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener
    public RecyclerView.ViewHolder onPreCreateViewHolder(FastAdapter<Item> fastAdapter, ViewGroup parent, int viewType, IItemVHFactory<?> itemVHFactory) {
        Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(itemVHFactory, "itemVHFactory");
        return itemVHFactory.getViewHolder(parent);
    }

    @Override // com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener
    public RecyclerView.ViewHolder onPostCreateViewHolder(FastAdapter<Item> fastAdapter, RecyclerView.ViewHolder viewHolder, IItemVHFactory<?> itemVHFactory) {
        List<EventHook<Item>> eventHooks;
        Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Intrinsics.checkParameterIsNotNull(itemVHFactory, "itemVHFactory");
        EventHookUtilKt.bind(fastAdapter.getEventHooks(), viewHolder);
        if (!(itemVHFactory instanceof IHookable)) {
            itemVHFactory = null;
        }
        IHookable iHookable = (IHookable) itemVHFactory;
        if (iHookable != null && (eventHooks = iHookable.getEventHooks()) != null) {
            EventHookUtilKt.bind(eventHooks, viewHolder);
        }
        return viewHolder;
    }
}
