package com.mikepenz.fastadapter.items;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.mikepenz.fastadapter.IItemVHFactory;
import com.mikepenz.fastadapter.IItemViewGenerator;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AbstractItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\fH&¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\b8gX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/mikepenz/fastadapter/items/AbstractItem;", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/items/BaseItem;", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "Lcom/mikepenz/fastadapter/IItemViewGenerator;", "()V", "layoutRes", "", "getLayoutRes", "()I", "createView", "Landroid/view/View;", "ctx", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "generateView", "getViewHolder", "v", "(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "fastadapter"}, k = 1, mv = {1, 1, 16})
public abstract class AbstractItem<VH extends RecyclerView.ViewHolder> extends BaseItem<VH> implements IItemVHFactory<VH>, IItemViewGenerator {
    public abstract int getLayoutRes();

    public abstract VH getViewHolder(View v);

    public View createView(Context ctx, ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        View viewInflate = LayoutInflater.from(ctx).inflate(getLayoutRes(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(ctx)…layoutRes, parent, false)");
        return viewInflate;
    }

    @Override // com.mikepenz.fastadapter.IItemViewGenerator
    public View generateView(Context ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        RecyclerView.ViewHolder viewHolder = getViewHolder(createView(ctx, null));
        List<? extends Object> listEmptyList = Collections.emptyList();
        Intrinsics.checkExpressionValueIsNotNull(listEmptyList, "Collections.emptyList()");
        bindView(viewHolder, listEmptyList);
        View view = viewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "viewHolder.itemView");
        return view;
    }

    @Override // com.mikepenz.fastadapter.IItemViewGenerator
    public View generateView(Context ctx, ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        RecyclerView.ViewHolder viewHolder = getViewHolder(createView(ctx, parent));
        List<? extends Object> listEmptyList = Collections.emptyList();
        Intrinsics.checkExpressionValueIsNotNull(listEmptyList, "Collections.emptyList()");
        bindView(viewHolder, listEmptyList);
        View view = viewHolder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "viewHolder.itemView");
        return view;
    }

    @Override // com.mikepenz.fastadapter.IItemVHFactory
    public VH getViewHolder(ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        return (VH) getViewHolder(createView(context, parent));
    }
}
