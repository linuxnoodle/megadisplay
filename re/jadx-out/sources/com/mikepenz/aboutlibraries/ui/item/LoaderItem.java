package com.mikepenz.aboutlibraries.ui.item;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.aboutlibraries.R;
import com.mikepenz.fastadapter.items.AbstractItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoaderItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;", "Lcom/mikepenz/fastadapter/items/AbstractItem;", "Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;", "()V", "value", "", "isSelectable", "()Z", "setSelectable", "(Z)V", "layoutRes", "", "getLayoutRes", "()I", "type", "getType", "getViewHolder", "v", "Landroid/view/View;", "ViewHolder", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LoaderItem extends AbstractItem<ViewHolder> {
    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isSelectable */
    public boolean getIsSelectable() {
        return false;
    }

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    public void setSelectable(boolean z) {
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return R.id.loader_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public int getLayoutRes() {
        return R.layout.listloader_opensource;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View v) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        return new ViewHolder(v);
    }

    /* JADX INFO: compiled from: LoaderItem.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "headerView", "Landroid/view/View;", "(Landroid/view/View;)V", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View headerView) {
            super(headerView);
            Intrinsics.checkParameterIsNotNull(headerView, "headerView");
        }
    }
}
