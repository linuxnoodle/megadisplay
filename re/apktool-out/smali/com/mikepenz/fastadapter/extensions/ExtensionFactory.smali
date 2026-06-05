.class public interface abstract Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mikepenz/fastadapter/IAdapterExtension<",
        "+",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>;>",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u001c\u0008\u0000\u0010\u0001*\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00050\u00022\u00020\u0006J+\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u001a\u0010\u000c\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00050\rH&\u00a2\u0006\u0002\u0010\u000eR\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;",
        "T",
        "Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "",
        "clazz",
        "Ljava/lang/Class;",
        "getClazz",
        "()Ljava/lang/Class;",
        "create",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;",
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
.method public abstract create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method
