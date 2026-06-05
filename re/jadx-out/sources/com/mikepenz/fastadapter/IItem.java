package com.mikepenz.fastadapter;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: IItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\b\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001eJ#\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00120!H&¢\u0006\u0002\u0010\"J\u0015\u0010#\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001eJ\u0010\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0018H&J\u0015\u0010&\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00028\u0000H&¢\u0006\u0002\u0010'J\u0015\u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001eR\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\n\"\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u0018\u0010\u000f\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u0012X¦\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/mikepenz/fastadapter/IItem;", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/IIdentifyable;", "factory", "Lcom/mikepenz/fastadapter/IItemVHFactory;", "getFactory", "()Lcom/mikepenz/fastadapter/IItemVHFactory;", "isEnabled", "", "()Z", "setEnabled", "(Z)V", "isSelectable", "setSelectable", "isSelected", "setSelected", "tag", "", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "type", "", "getType", "()I", "attachToWindow", "", "holder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "bindView", "payloads", "", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V", "detachFromWindow", "equals", "id", "failedToRecycle", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z", "unbindView", "fastadapter"}, k = 1, mv = {1, 1, 16})
public interface IItem<VH extends RecyclerView.ViewHolder> extends IIdentifyable {
    void attachToWindow(VH holder);

    void bindView(VH holder, List<? extends Object> payloads);

    void detachFromWindow(VH holder);

    boolean equals(int id);

    boolean failedToRecycle(VH holder);

    IItemVHFactory<VH> getFactory();

    Object getTag();

    int getType();

    boolean isEnabled();

    boolean isSelectable();

    boolean isSelected();

    void setEnabled(boolean z);

    void setSelectable(boolean z);

    void setSelected(boolean z);

    void setTag(Object obj);

    void unbindView(VH holder);
}
