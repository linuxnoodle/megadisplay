.class public interface abstract Lcom/mikepenz/fastadapter/IItemList;
.super Ljava/lang/Object;
.source "IItemList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IItemList$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H&J\u001e\u0010\u0011\u001a\u00020\u00122\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0018\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u00a6\u0002\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J\u0017\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J \u0010\"\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&J&\u0010$\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010%\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0014H\u00a6\u0002\u00a2\u0006\u0002\u0010&J)\u0010$\u001a\u00020\u00122\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u00142\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u00a6\u0002J\u001e\u0010)\u001a\u00020\u00122\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010*\u001a\u00020\u0007H&J\u0008\u0010+\u001a\u00020\u0014H&R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\tR\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006,"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IItemList;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "",
        "active",
        "",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "isEmpty",
        "items",
        "",
        "getItems",
        "()Ljava/util/List;",
        "addAll",
        "",
        "position",
        "",
        "",
        "preItemCount",
        "clear",
        "get",
        "(I)Lcom/mikepenz/fastadapter/IItem;",
        "getAdapterPosition",
        "identifier",
        "",
        "move",
        "fromPosition",
        "toPosition",
        "peek",
        "remove",
        "removeRange",
        "itemCount",
        "set",
        "item",
        "(ILcom/mikepenz/fastadapter/IItem;I)V",
        "adapterNotifier",
        "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
        "setNewList",
        "notify",
        "size",
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
.method public abstract addAll(ILjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation
.end method

.method public abstract clear(I)V
.end method

.method public abstract get(I)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract getActive()Z
.end method

.method public abstract getAdapterPosition(J)I
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract move(III)V
.end method

.method public abstract peek(I)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract remove(II)V
.end method

.method public abstract removeRange(III)V
.end method

.method public abstract set(ILcom/mikepenz/fastadapter/IItem;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;I)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/util/List;ILcom/mikepenz/fastadapter/IAdapterNotifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;I",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setNewList(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;Z)V"
        }
    .end annotation
.end method

.method public abstract size()I
.end method
