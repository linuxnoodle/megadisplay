.class public Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;
.super Lcom/mikepenz/fastadapter/utils/DefaultItemList;
.source "DefaultItemListImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Lcom/mikepenz/fastadapter/utils/DefaultItemList<",
        "TItem;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultItemListImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultItemListImpl.kt\ncom/mikepenz/fastadapter/utils/DefaultItemListImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n310#2,7:112\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultItemListImpl.kt\ncom/mikepenz/fastadapter/utils/DefaultItemListImpl\n*L\n27#1,7:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0017\u0008\u0007\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u001e\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0016\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J \u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J \u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J&\u0010#\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0014H\u0096\u0002\u00a2\u0006\u0002\u0010%J)\u0010#\u001a\u00020\u00122\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010\u0016\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0096\u0002J\u001e\u0010(\u001a\u00020\u00122\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00152\u0006\u0010)\u001a\u00020\rH\u0016J\u0008\u0010*\u001a\u00020\u0014H\u0016R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006+"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/utils/DefaultItemList;",
        "_items",
        "",
        "(Ljava/util/List;)V",
        "get_items",
        "()Ljava/util/List;",
        "set_items",
        "isEmpty",
        "",
        "()Z",
        "items",
        "getItems",
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


# instance fields
.field private _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "_items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemList;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addAll(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int p3, p1, p3

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, p3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 75
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/2addr p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public get(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public getAdapterPosition(J)I
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 27
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    return-object v0
.end method

.method protected final get_items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public move(III)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int v1, p1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 47
    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int p3, p2, p3

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemMoved(II)V

    :cond_0
    return-void
.end method

.method public remove(II)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int p2, p1, p2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeRange(III)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, p3

    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int v2, p1, p3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    :cond_1
    return-void
.end method

.method public set(ILcom/mikepenz/fastadapter/IItem;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;I)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    sub-int p3, p1, p3

    invoke-interface {v0, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public set(Ljava/util/List;ILcom/mikepenz/fastadapter/IAdapterNotifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;I",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    if-eq p1, v2, :cond_1

    .line 86
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 95
    :cond_2
    sget-object p3, Lcom/mikepenz/fastadapter/IAdapterNotifier;->DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    :goto_0
    invoke-interface {p3, p1, v0, v1, p2}, Lcom/mikepenz/fastadapter/IAdapterNotifier;->notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z

    :cond_3
    return-void
.end method

.method public setNewList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;Z)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final set_items(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    return-void
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
