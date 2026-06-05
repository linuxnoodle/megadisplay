package com.mikepenz.fastadapter.listeners;

import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OnBindViewHolderListenerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\u0014"}, d2 = {"Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/listeners/OnBindViewHolderListener;", "()V", "onBindViewHolder", "", "viewHolder", "position", "", "payloads", "", "", "onFailedToRecycleView", "", "onViewAttachedToWindow", "onViewDetachedFromWindow", "unBindViewHolder", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class OnBindViewHolderListenerImpl<Item extends IItem<? extends RecyclerView.ViewHolder>> implements OnBindViewHolderListener {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position, List<? extends Object> payloads) {
        IItem item;
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        FastAdapter<Item> fromHolderTag = FastAdapter.INSTANCE.getFromHolderTag(viewHolder);
        if (fromHolderTag == null || (item = fromHolderTag.getItem(position)) == null) {
            return;
        }
        IItem iItem = !(item instanceof IItem) ? null : item;
        if (iItem != null) {
            iItem.bindView(viewHolder, payloads);
        }
        FastAdapter.ViewHolder viewHolder2 = (FastAdapter.ViewHolder) (viewHolder instanceof FastAdapter.ViewHolder ? viewHolder : null);
        if (viewHolder2 != 0) {
            viewHolder2.bindView(item, payloads);
        }
        viewHolder.itemView.setTag(R.id.fastadapter_item, item);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void unBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        IItem holderAdapterItemTag = FastAdapter.INSTANCE.getHolderAdapterItemTag(viewHolder);
        if (holderAdapterItemTag != null) {
            holderAdapterItemTag.unbindView(viewHolder);
            FastAdapter.ViewHolder viewHolder2 = (FastAdapter.ViewHolder) (!(viewHolder instanceof FastAdapter.ViewHolder) ? null : viewHolder);
            if (viewHolder2 != 0) {
                viewHolder2.unbindView(holderAdapterItemTag);
            }
            viewHolder.itemView.setTag(R.id.fastadapter_item, null);
            viewHolder.itemView.setTag(R.id.fastadapter_item_adapter, null);
            return;
        }
        Log.e("FastAdapter", "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.kt#L22)");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        IItem holderAdapterItem = FastAdapter.INSTANCE.getHolderAdapterItem(viewHolder, position);
        if (holderAdapterItem != null) {
            try {
                holderAdapterItem.attachToWindow(viewHolder);
                if (!(viewHolder instanceof FastAdapter.ViewHolder)) {
                    viewHolder = null;
                }
                FastAdapter.ViewHolder viewHolder2 = (FastAdapter.ViewHolder) viewHolder;
                if (viewHolder2 != 0) {
                    viewHolder2.attachToWindow(holderAdapterItem);
                }
            } catch (AbstractMethodError e) {
                Log.e("FastAdapter", e.toString());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        IItem holderAdapterItemTag = FastAdapter.INSTANCE.getHolderAdapterItemTag(viewHolder);
        if (holderAdapterItemTag != null) {
            holderAdapterItemTag.detachFromWindow(viewHolder);
            if (!(viewHolder instanceof FastAdapter.ViewHolder)) {
                viewHolder = null;
            }
            FastAdapter.ViewHolder viewHolder2 = (FastAdapter.ViewHolder) viewHolder;
            if (viewHolder2 != 0) {
                if (holderAdapterItemTag == null) {
                    throw new TypeCastException("null cannot be cast to non-null type Item");
                }
                viewHolder2.detachFromWindow(holderAdapterItemTag);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onFailedToRecycleView(androidx.recyclerview.widget.RecyclerView.ViewHolder r4, int r5) {
        /*
            r3 = this;
            java.lang.String r5 = "viewHolder"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r5)
            com.mikepenz.fastadapter.FastAdapter$Companion r5 = com.mikepenz.fastadapter.FastAdapter.INSTANCE
            com.mikepenz.fastadapter.IItem r5 = r5.getHolderAdapterItemTag(r4)
            r0 = 0
            if (r5 == 0) goto L2e
            boolean r1 = r5.failedToRecycle(r4)
            boolean r2 = r4 instanceof com.mikepenz.fastadapter.FastAdapter.ViewHolder
            if (r2 == 0) goto L2d
            if (r1 != 0) goto L2b
            com.mikepenz.fastadapter.FastAdapter$ViewHolder r4 = (com.mikepenz.fastadapter.FastAdapter.ViewHolder) r4
            if (r5 == 0) goto L23
            boolean r4 = r4.failedToRecycle(r5)
            if (r4 == 0) goto L2c
            goto L2b
        L23:
            kotlin.TypeCastException r4 = new kotlin.TypeCastException
            java.lang.String r5 = "null cannot be cast to non-null type Item"
            r4.<init>(r5)
            throw r4
        L2b:
            r0 = 1
        L2c:
            r1 = r0
        L2d:
            return r1
        L2e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.fastadapter.listeners.OnBindViewHolderListenerImpl.onFailedToRecycleView(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):boolean");
    }
}
