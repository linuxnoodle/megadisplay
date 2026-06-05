package com.mikepenz.fastadapter.adapters;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemList;
import com.mikepenz.fastadapter.dsl.FastAdapterDsl;
import com.mikepenz.fastadapter.utils.InterceptorUtil;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: ItemAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@FastAdapterDsl
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u0000 \n*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0005:\u0001\nB\u0007\b\u0016¢\u0006\u0002\u0010\u0006B\u0015\b\u0016\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/mikepenz/fastadapter/adapters/ItemAdapter;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "()V", "itemList", "Lcom/mikepenz/fastadapter/IItemList;", "(Lcom/mikepenz/fastadapter/IItemList;)V", "Companion", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class ItemAdapter<Item extends IItem<? extends RecyclerView.ViewHolder>> extends ModelAdapter<Item, Item> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmStatic
    public static final <Item extends IItem<? extends RecyclerView.ViewHolder>> ItemAdapter<Item> items() {
        return INSTANCE.items();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ItemAdapter() {
        Function1<IItem<? extends RecyclerView.ViewHolder>, IItem<? extends RecyclerView.ViewHolder>> function1 = InterceptorUtil.DEFAULT;
        if (function1 == null) {
            throw new TypeCastException("null cannot be cast to non-null type (element: Item) -> Item?");
        }
        super((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ItemAdapter(IItemList<Item> itemList) {
        Intrinsics.checkParameterIsNotNull(itemList, "itemList");
        Function1<IItem<? extends RecyclerView.ViewHolder>, IItem<? extends RecyclerView.ViewHolder>> function1 = InterceptorUtil.DEFAULT;
        if (function1 == null) {
            throw new TypeCastException("null cannot be cast to non-null type (element: Item) -> Item?");
        }
        super(itemList, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
    }

    /* JADX INFO: compiled from: ItemAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\b\u0001\u0010\u0005*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006j\u0002`\bH\u0007¨\u0006\t"}, d2 = {"Lcom/mikepenz/fastadapter/adapters/ItemAdapter$Companion;", "", "()V", "items", "Lcom/mikepenz/fastadapter/adapters/ItemAdapter;", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final <Item extends IItem<? extends RecyclerView.ViewHolder>> ItemAdapter<Item> items() {
            return new ItemAdapter<>();
        }
    }
}
