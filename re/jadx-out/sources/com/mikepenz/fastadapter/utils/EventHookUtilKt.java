package com.mikepenz.fastadapter.utils;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.R;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.CustomEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;
import com.mikepenz.fastadapter.listeners.LongClickEventHook;
import com.mikepenz.fastadapter.listeners.TouchEventHook;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventHookUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001\"\u0014\b\u0000\u0010\u0002*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003j\u0002`\u0005*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0000\u001a.\u0010\n\u001a\u00020\u0001*\u001c\u0012\u0018\u0012\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003j\u0002`\u00050\u00060\u000b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0000¨\u0006\f"}, d2 = {"attachToView", "", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/listeners/EventHook;", "viewHolder", "view", "Landroid/view/View;", "bind", "", "fastadapter"}, k = 2, mv = {1, 1, 16})
public final class EventHookUtilKt {
    public static final void bind(List<? extends EventHook<? extends IItem<? extends RecyclerView.ViewHolder>>> bind, RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(bind, "$this$bind");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        for (EventHook<? extends IItem<? extends RecyclerView.ViewHolder>> eventHook : bind) {
            View viewOnBind = eventHook.onBind(viewHolder);
            if (viewOnBind != null) {
                attachToView(eventHook, viewHolder, viewOnBind);
            }
            List<View> listOnBindMany = eventHook.onBindMany(viewHolder);
            if (listOnBindMany != null) {
                Iterator<View> it = listOnBindMany.iterator();
                while (it.hasNext()) {
                    attachToView(eventHook, viewHolder, it.next());
                }
            }
        }
    }

    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> void attachToView(final EventHook<Item> attachToView, final RecyclerView.ViewHolder viewHolder, View view) {
        Intrinsics.checkParameterIsNotNull(attachToView, "$this$attachToView");
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (attachToView instanceof ClickEventHook) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtilKt.attachToView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    int holderAdapterPosition;
                    IItem holderAdapterItemTag;
                    Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
                    if (!(tag instanceof FastAdapter)) {
                        tag = null;
                    }
                    FastAdapter fastAdapter = (FastAdapter) tag;
                    if (fastAdapter == null || (holderAdapterPosition = fastAdapter.getHolderAdapterPosition(viewHolder)) == -1 || (holderAdapterItemTag = FastAdapter.INSTANCE.getHolderAdapterItemTag(viewHolder)) == null) {
                        return;
                    }
                    EventHook eventHook = attachToView;
                    if (eventHook == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.ClickEventHook<Item>");
                    }
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    ((ClickEventHook) eventHook).onClick(v, holderAdapterPosition, fastAdapter, holderAdapterItemTag);
                }
            });
            return;
        }
        if (attachToView instanceof LongClickEventHook) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtilKt.attachToView.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    int holderAdapterPosition;
                    IItem holderAdapterItemTag;
                    Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
                    if (!(tag instanceof FastAdapter)) {
                        tag = null;
                    }
                    FastAdapter fastAdapter = (FastAdapter) tag;
                    if (fastAdapter == null || (holderAdapterPosition = fastAdapter.getHolderAdapterPosition(viewHolder)) == -1 || (holderAdapterItemTag = FastAdapter.INSTANCE.getHolderAdapterItemTag(viewHolder)) == null) {
                        return false;
                    }
                    EventHook eventHook = attachToView;
                    if (eventHook == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.LongClickEventHook<Item>");
                    }
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    return ((LongClickEventHook) eventHook).onLongClick(v, holderAdapterPosition, fastAdapter, holderAdapterItemTag);
                }
            });
        } else if (attachToView instanceof TouchEventHook) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtilKt.attachToView.3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View v, MotionEvent e) {
                    int holderAdapterPosition;
                    IItem holderAdapterItemTag;
                    Object tag = viewHolder.itemView.getTag(R.id.fastadapter_item_adapter);
                    if (!(tag instanceof FastAdapter)) {
                        tag = null;
                    }
                    FastAdapter fastAdapter = (FastAdapter) tag;
                    if (fastAdapter == null || (holderAdapterPosition = fastAdapter.getHolderAdapterPosition(viewHolder)) == -1 || (holderAdapterItemTag = FastAdapter.INSTANCE.getHolderAdapterItemTag(viewHolder)) == null) {
                        return false;
                    }
                    EventHook eventHook = attachToView;
                    if (eventHook == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.TouchEventHook<Item>");
                    }
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    Intrinsics.checkExpressionValueIsNotNull(e, "e");
                    return ((TouchEventHook) eventHook).onTouch(v, e, holderAdapterPosition, fastAdapter, holderAdapterItemTag);
                }
            });
        } else if (attachToView instanceof CustomEventHook) {
            ((CustomEventHook) attachToView).attachEvent(view, viewHolder);
        }
    }
}
