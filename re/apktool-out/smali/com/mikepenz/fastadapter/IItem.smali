.class public interface abstract Lcom/mikepenz/fastadapter/IItem;
.super Ljava/lang/Object;
.source "IItem.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdentifyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdentifyable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0008\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u001eJ#\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00120!H&\u00a2\u0006\u0002\u0010\"J\u0015\u0010#\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u0018H&J\u0015\u0010&\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u001eR\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\r\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u0018\u0010\u000f\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IItem;",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        "factory",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "getFactory",
        "()Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "isEnabled",
        "",
        "()Z",
        "setEnabled",
        "(Z)V",
        "isSelectable",
        "setSelectable",
        "isSelected",
        "setSelected",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/Object;",
        "setTag",
        "(Ljava/lang/Object;)V",
        "type",
        "",
        "getType",
        "()I",
        "attachToWindow",
        "",
        "holder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "bindView",
        "payloads",
        "",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V",
        "detachFromWindow",
        "equals",
        "id",
        "failedToRecycle",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "unbindView",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract attachToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation
.end method

.method public abstract bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract detachFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation
.end method

.method public abstract equals(I)Z
.end method

.method public abstract failedToRecycle(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/mikepenz/fastadapter/IItemVHFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "TVH;>;"
        }
    .end annotation
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getType()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isSelectable()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setSelectable(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setTag(Ljava/lang/Object;)V
.end method

.method public abstract unbindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation
.end method
