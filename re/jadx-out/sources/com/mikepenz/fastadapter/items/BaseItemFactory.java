package com.mikepenz.fastadapter.items;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.mikepenz.fastadapter.IItemVHFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0015\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\nH&¢\u0006\u0002\u0010\u0011J\u0015\u0010\u000f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00068gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/mikepenz/fastadapter/items/BaseItemFactory;", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "()V", "layoutRes", "", "getLayoutRes", "()I", "createView", "Landroid/view/View;", "ctx", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "getViewHolder", "v", "(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "fastadapter"}, k = 1, mv = {1, 1, 16})
public abstract class BaseItemFactory<VH extends RecyclerView.ViewHolder> implements IItemVHFactory<VH> {
    public abstract int getLayoutRes();

    public abstract VH getViewHolder(View v);

    @Override // com.mikepenz.fastadapter.IItemVHFactory
    public VH getViewHolder(ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        return (VH) getViewHolder(createView(context, parent));
    }

    public View createView(Context ctx, ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        View viewInflate = LayoutInflater.from(ctx).inflate(getLayoutRes(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(ctx)…layoutRes, parent, false)");
        return viewInflate;
    }
}
