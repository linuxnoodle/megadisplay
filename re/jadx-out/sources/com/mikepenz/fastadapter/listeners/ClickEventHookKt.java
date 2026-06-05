package com.mikepenz.fastadapter.listeners;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClickEventHook.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u001a×\u0001\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0016\b\u0001\u0010\u0004\u0018\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0005j\u0002`\u0006*\b\u0012\u0004\u0012\u0002H\u00040\u00072\u0016\b\u0004\u0010\b\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u001c\b\u0006\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\f\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\f0\t2h\b\u0004\u0010\r\u001ab\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00040\u0007¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u0011H\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00010\u000eH\u0086\b¨\u0006\u0016"}, d2 = {"addClickListener", "", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/FastAdapter;", "resolveView", "Lkotlin/Function1;", "Landroid/view/View;", "resolveViews", "", "onClick", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "v", "", "position", "fastAdapter", "item", "fastadapter"}, k = 2, mv = {1, 1, 16})
public final class ClickEventHookKt {

    /* JADX INFO: Add missing generic type declarations: [Item] */
    /* JADX INFO: renamed from: com.mikepenz.fastadapter.listeners.ClickEventHookKt$addClickListener$2, reason: invalid class name */
    /* JADX INFO: compiled from: ClickEventHook.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J3\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0010¨\u0006\u0011"}, d2 = {"com/mikepenz/fastadapter/listeners/ClickEventHookKt$addClickListener$2", "Lcom/mikepenz/fastadapter/listeners/ClickEventHook;", "onBind", "Landroid/view/View;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onBindMany", "", "onClick", "", "v", "position", "", "fastAdapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "item", "(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)V", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class AnonymousClass2<Item> extends ClickEventHook<Item> {
        final /* synthetic */ Function4 $onClick;
        final /* synthetic */ Function1 $resolveView;
        final /* synthetic */ Function1 $resolveViews;

        public AnonymousClass2(Function1 function1, Function1 function12, Function4 function4) {
            this.$resolveView = function1;
            this.$resolveViews = function12;
            this.$onClick = function4;
        }

        @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
        public View onBind(RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
            Intrinsics.reifiedOperationMarker(3, "VH");
            return viewHolder instanceof RecyclerView.ViewHolder ? (View) this.$resolveView.invoke(viewHolder) : super.onBind(viewHolder);
        }

        @Override // com.mikepenz.fastadapter.listeners.ClickEventHook, com.mikepenz.fastadapter.listeners.EventHook
        public List<View> onBindMany(RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
            Intrinsics.reifiedOperationMarker(3, "VH");
            return viewHolder instanceof RecyclerView.ViewHolder ? (List) this.$resolveViews.invoke(viewHolder) : super.onBindMany(viewHolder);
        }

        /* JADX WARN: Incorrect types in method signature: (Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter<TItem;>;TItem;)V */
        @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
        public void onClick(View v, int position, FastAdapter fastAdapter, IItem item) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(fastAdapter, "fastAdapter");
            Intrinsics.checkParameterIsNotNull(item, "item");
            this.$onClick.invoke(v, Integer.valueOf(position), fastAdapter, item);
        }
    }

    public static /* synthetic */ void addClickListener$default(FastAdapter addClickListener, Function1 resolveView, Function1 resolveViews, Function4 onClick, int i, Object obj) {
        if ((i & 2) != 0) {
            resolveViews = new Function1() { // from class: com.mikepenz.fastadapter.listeners.ClickEventHookKt.addClickListener.1
                /* JADX WARN: Incorrect types in method signature: (TVH;)Ljava/lang/Void; */
                @Override // kotlin.jvm.functions.Function1
                public final Void invoke(RecyclerView.ViewHolder it) {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    return null;
                }
            };
        }
        Intrinsics.checkParameterIsNotNull(addClickListener, "$this$addClickListener");
        Intrinsics.checkParameterIsNotNull(resolveView, "resolveView");
        Intrinsics.checkParameterIsNotNull(resolveViews, "resolveViews");
        Intrinsics.checkParameterIsNotNull(onClick, "onClick");
        Intrinsics.needClassReification();
        addClickListener.addEventHook(new AnonymousClass2(resolveView, resolveViews, onClick));
    }

    public static final /* synthetic */ <VH extends RecyclerView.ViewHolder, Item extends IItem<? extends RecyclerView.ViewHolder>> void addClickListener(FastAdapter<Item> addClickListener, Function1<? super VH, ? extends View> resolveView, Function1<? super VH, ? extends List<? extends View>> resolveViews, Function4<? super View, ? super Integer, ? super FastAdapter<Item>, ? super Item, Unit> onClick) {
        Intrinsics.checkParameterIsNotNull(addClickListener, "$this$addClickListener");
        Intrinsics.checkParameterIsNotNull(resolveView, "resolveView");
        Intrinsics.checkParameterIsNotNull(resolveViews, "resolveViews");
        Intrinsics.checkParameterIsNotNull(onClick, "onClick");
        Intrinsics.needClassReification();
        addClickListener.addEventHook(new AnonymousClass2(resolveView, resolveViews, onClick));
    }
}
