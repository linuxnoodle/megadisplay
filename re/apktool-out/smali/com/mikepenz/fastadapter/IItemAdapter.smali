.class public interface abstract Lcom/mikepenz/fastadapter/IItemAdapter;
.super Ljava/lang/Object;
.source "IItemAdapter.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IItemAdapter$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapter<",
        "TItem;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\u0008\u0012\u0004\u0012\u0002H\u00020\u0006J-\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u000f\"\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0010J5\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u000f\"\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0013J*\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H&J\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H&J*\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0014H&J\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0014H&J\u0014\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H&J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH&J$\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0012H&J\u001c\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u0012H&J$\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012H&J*\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00028\u0000H\u00a6\u0002\u00a2\u0006\u0002\u0010#J\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H&J)\u0010$\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010%J,\u0010&\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0008\u0008\u0002\u0010\'\u001a\u00020(H&R\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IItemAdapter;",
        "Model",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "idDistributor",
        "Lcom/mikepenz/fastadapter/IIdDistributor;",
        "getIdDistributor",
        "()Lcom/mikepenz/fastadapter/IIdDistributor;",
        "setIdDistributor",
        "(Lcom/mikepenz/fastadapter/IIdDistributor;)V",
        "add",
        "items",
        "",
        "([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;",
        "position",
        "",
        "(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;",
        "",
        "addInternal",
        "clear",
        "filter",
        "",
        "constraint",
        "",
        "move",
        "fromPosition",
        "toPosition",
        "remove",
        "removeRange",
        "itemCount",
        "set",
        "item",
        "(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;",
        "setInternal",
        "(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;",
        "setNewList",
        "retainFilter",
        "",
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
.method public abstract add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public varargs abstract add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public varargs abstract add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract clear()Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract filter(Ljava/lang/CharSequence;)V
.end method

.method public abstract getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;"
        }
    .end annotation
.end method

.method public abstract move(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract setIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;)V"
        }
    .end annotation
.end method

.method public abstract setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method

.method public abstract setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/IItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end method
