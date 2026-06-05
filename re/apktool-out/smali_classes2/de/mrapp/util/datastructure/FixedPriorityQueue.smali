.class public final Lde/mrapp/util/datastructure/FixedPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "FixedPriorityQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFixedPriorityQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixedPriorityQueue.kt\nde/mrapp/util/datastructure/FixedPriorityQueue\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1591#2,2:62\n*E\n*S KotlinDebug\n*F\n+ 1 FixedPriorityQueue.kt\nde/mrapp/util/datastructure/FixedPriorityQueue\n*L\n43#1,2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\u0008\u0002\u0010\u0007\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0008\u0002\u0010\u0007\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lde/mrapp/util/datastructure/FixedPriorityQueue;",
        "T",
        "Ljava/util/PriorityQueue;",
        "maxSize",
        "",
        "items",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "(ILjava/util/Collection;Ljava/util/Comparator;)V",
        "(ILjava/util/Comparator;)V",
        "compare",
        "first",
        "second",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "offer",
        "",
        "e",
        "(Ljava/lang/Object;)Z",
        "JavaUtil"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;-><init>(ILjava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lde/mrapp/util/datastructure/FixedPriorityQueue;-><init>(ILjava/util/Collection;Ljava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Collection;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p3}, Lde/mrapp/util/datastructure/FixedPriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 43
    check-cast p2, Ljava/lang/Iterable;

    .line 62
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 43
    invoke-virtual {p0, p2}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Collection;Ljava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 42
    move-object p4, p3

    check-cast p4, Ljava/util/Comparator;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/util/datastructure/FixedPriorityQueue;-><init>(ILjava/util/Collection;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput p1, p0, Lde/mrapp/util/datastructure/FixedPriorityQueue;->maxSize:I

    .line 37
    sget-object p2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v0, 0x1

    const-string v1, "The maximum size must be at least 1"

    invoke-virtual {p2, p1, v0, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 29
    move-object p3, p2

    check-cast p3, Ljava/util/Comparator;

    :cond_0
    invoke-direct {p0, p1, p2}, Lde/mrapp/util/datastructure/FixedPriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method private final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Comparable<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge getSize()I
    .locals 1

    .line 28
    invoke-super {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->size()I

    move-result v0

    iget v1, p0, Lde/mrapp/util/datastructure/FixedPriorityQueue;->maxSize:I

    if-lt v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 50
    invoke-direct {p0, p1, v0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->poll()Ljava/lang/Object;

    .line 52
    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_1
    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge size()I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/FixedPriorityQueue;->getSize()I

    move-result v0

    return v0
.end method
