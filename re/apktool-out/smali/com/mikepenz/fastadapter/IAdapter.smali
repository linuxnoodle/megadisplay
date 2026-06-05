.class public interface abstract Lcom/mikepenz/fastadapter/IAdapter;
.super Ljava/lang/Object;
.source "IAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IAdapter$DefaultImpls;
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
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J\u0015\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0007H&\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H&J\u0017\u0010!\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\u001aR\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "",
        "adapterItemCount",
        "",
        "getAdapterItemCount",
        "()I",
        "adapterItems",
        "",
        "getAdapterItems",
        "()Ljava/util/List;",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "getFastAdapter",
        "()Lcom/mikepenz/fastadapter/FastAdapter;",
        "setFastAdapter",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)V",
        "order",
        "getOrder",
        "setOrder",
        "(I)V",
        "getAdapterItem",
        "position",
        "(I)Lcom/mikepenz/fastadapter/IItem;",
        "getAdapterPosition",
        "item",
        "(Lcom/mikepenz/fastadapter/IItem;)I",
        "identifier",
        "",
        "getGlobalPosition",
        "peekAdapterItem",
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
.method public abstract getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract getAdapterItemCount()I
.end method

.method public abstract getAdapterItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getAdapterPosition(J)I
.end method

.method public abstract getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation
.end method

.method public abstract getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract getGlobalPosition(I)I
.end method

.method public abstract getOrder()I
.end method

.method public abstract peekAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public abstract setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)V"
        }
    .end annotation
.end method

.method public abstract setOrder(I)V
.end method
