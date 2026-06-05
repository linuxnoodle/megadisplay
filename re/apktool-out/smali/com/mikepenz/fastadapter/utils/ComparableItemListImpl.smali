.class public final Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;
.super Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;
.source "ComparableItemListImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl<",
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
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\'\u0008\u0007\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0010\nJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001e\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001e\u0010\u0017\u001a\u00020\u000f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0019H\u0007R.\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;",
        "comparator",
        "Ljava/util/Comparator;",
        "items",
        "",
        "(Ljava/util/Comparator;Ljava/util/List;)V",
        "<set-?>",
        "getComparator",
        "()Ljava/util/Comparator;",
        "addAll",
        "",
        "position",
        "",
        "",
        "preItemCount",
        "move",
        "fromPosition",
        "toPosition",
        "setNewList",
        "notify",
        "",
        "withComparator",
        "sortNow",
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
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;-><init>(Ljava/util/Comparator;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;-><init>(Ljava/util/List;)V

    .line 17
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Comparator;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;-><init>(Ljava/util/Comparator;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic withComparator$default(Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;Ljava/util/Comparator;ZILjava/lang/Object;)Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAll(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 60
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/utils/SortKt;->trySortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;I)V"
        }
    .end annotation

    const-string p2, "items"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/utils/SortKt;->trySortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TItem;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public move(III)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, p3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 46
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/mikepenz/fastadapter/utils/SortKt;->trySortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->set_items(Ljava/util/List;)V

    .line 66
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Lcom/mikepenz/fastadapter/utils/SortKt;->trySortWith(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final withComparator(Ljava/util/Comparator;)Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl<",
            "TItem;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->withComparator$default(Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;Ljava/util/Comparator;ZILjava/lang/Object;)Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;

    move-result-object p1

    return-object p1
.end method

.method public final withComparator(Ljava/util/Comparator;Z)Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl<",
            "TItem;>;"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->get_items()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/ComparableItemListImpl;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-object p0
.end method
