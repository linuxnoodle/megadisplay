.class public interface abstract Lcom/mikepenz/fastadapter/IItemVHFactoryCache;
.super Ljava/lang/Object;
.source "IItemVHFactoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemVHFactory::",
        "Lcom/mikepenz/fastadapter/IItemVHFactory<",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0016\u0010\u000c\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u000bH\u00a6\u0002\u00a2\u0006\u0002\u0010\rJ\u001d\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IItemVHFactoryCache;",
        "ItemVHFactory",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItemVHFactory;",
        "",
        "clear",
        "",
        "contains",
        "",
        "type",
        "",
        "get",
        "(I)Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "register",
        "item",
        "(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z",
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
.method public abstract clear()V
.end method

.method public abstract contains(I)Z
.end method

.method public abstract get(I)Lcom/mikepenz/fastadapter/IItemVHFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItemVHFactory;"
        }
    .end annotation
.end method

.method public abstract register(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItemVHFactory;)Z"
        }
    .end annotation
.end method
