package com.mikepenz.fastadapter.items;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemVHFactory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0015\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J#\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u00002\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00190$H\u0017¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J\u0013\u0010'\u001a\u00020\u00102\b\u0010(\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0010\u0010'\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*H\u0016J\u0015\u0010+\u001a\u00020\u00102\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010,J\b\u0010-\u001a\u00020*H\u0016J\u0015\u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!R\u001c\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006/"}, d2 = {"Lcom/mikepenz/fastadapter/items/BaseItem;", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/IItem;", "()V", "factory", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "getFactory", "()Lcom/mikepenz/fastadapter/IItemVHFactory;", "identifier", "", "getIdentifier", "()J", "setIdentifier", "(J)V", "isEnabled", "", "()Z", "setEnabled", "(Z)V", "isSelectable", "setSelectable", "isSelected", "setSelected", "tag", "", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "attachToWindow", "", "holder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "bindView", "payloads", "", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V", "detachFromWindow", "equals", "other", "id", "", "failedToRecycle", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", "hashCode", "unbindView", "fastadapter"}, k = 1, mv = {1, 1, 16})
public abstract class BaseItem<VH extends RecyclerView.ViewHolder> implements IItem<VH> {
    private final IItemVHFactory<VH> factory;
    private long identifier = -1;
    private boolean isEnabled = true;
    private boolean isSelectable = true;
    private boolean isSelected;
    private Object tag;

    @Override // com.mikepenz.fastadapter.IItem
    public void attachToWindow(VH holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void detachFromWindow(VH holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean failedToRecycle(VH holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        return false;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void unbindView(VH holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
    }

    @Override // com.mikepenz.fastadapter.IIdentifyable
    public long getIdentifier() {
        return this.identifier;
    }

    @Override // com.mikepenz.fastadapter.IIdentifyable
    public void setIdentifier(long j) {
        this.identifier = j;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Object getTag() {
        return this.tag;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void setTag(Object obj) {
        this.tag = obj;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public IItemVHFactory<VH> getFactory() {
        return this.factory;
    }

    @Override // com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isEnabled, reason: from getter */
    public boolean getIsEnabled() {
        return this.isEnabled;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    @Override // com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public boolean getIsSelected() {
        return this.isSelected;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    @Override // com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isSelectable, reason: from getter */
    public boolean getIsSelectable() {
        return this.isSelectable;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void setSelectable(boolean z) {
        this.isSelectable = z;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void bindView(VH holder, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        View view = holder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        view.setSelected(getIsSelected());
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean equals(int id) {
        return ((long) id) == getIdentifier();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || (!Intrinsics.areEqual(getClass(), other.getClass()))) {
            return false;
        }
        if (!(other instanceof AbstractItem)) {
            other = null;
        }
        AbstractItem abstractItem = (AbstractItem) other;
        return abstractItem != null && getIdentifier() == abstractItem.getIdentifier();
    }

    public int hashCode() {
        return Long.valueOf(getIdentifier()).hashCode();
    }
}
