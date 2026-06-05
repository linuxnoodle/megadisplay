.class public Lde/mrapp/util/datastructure/SortedArraySet;
.super Ljava/lang/Object;
.source "SortedArraySet.kt"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/SortedSet<",
        "TT;>;",
        "Ljava/util/NavigableSet<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortedArraySet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortedArraySet.kt\nde/mrapp/util/datastructure/SortedArraySet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,218:1\n1313#2:219\n1382#2,3:220\n1813#2,7:223\n1313#2:230\n1382#2,3:231\n1813#2,7:234\n1313#2:241\n1382#2,3:242\n1813#2,7:245\n*E\n*S KotlinDebug\n*F\n+ 1 SortedArraySet.kt\nde/mrapp/util/datastructure/SortedArraySet\n*L\n101#1:219\n101#1,3:220\n101#1,7:223\n104#1:230\n104#1,3:231\n104#1,7:234\n128#1:241\n128#1,3:242\n128#1,7:245\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u001b\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u0004B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0005B\u0015\u0008\u0016\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB\u0019\u0008\u0016\u0012\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eB\'\u0008\u0016\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0010\u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0010J\u0015\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u0015\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020#H\u0016J\u0012\u0010\u000c\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\rH\u0016J\u0016\u0010$\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010%\u001a\u00020\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00000\'H\u0016J\u000e\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0013\u0010)\u001a\u00020\u001a2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\r\u0010,\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010-J\u0015\u0010.\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010/\u001a\u00020\nH\u0016J\u001b\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00102J#\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00028\u00002\u0006\u00103\u001a\u00020\u001aH\u0016\u00a2\u0006\u0002\u00104J\u0015\u00105\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u00106\u001a\u00020\u001aH\u0016J\u000f\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u00000\'H\u0096\u0002J\r\u00108\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010-J\u0015\u00109\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\r\u0010:\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010-J\r\u0010;\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010-J\u0015\u0010<\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010=\u001a\u00020\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u0016\u0010>\u001a\u00020\u001a2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J#\u0010?\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u00101\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010AJ3\u0010?\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u0010B\u001a\u00020\u001a2\u0006\u00101\u001a\u00028\u00002\u0006\u0010C\u001a\u00020\u001aH\u0016\u00a2\u0006\u0002\u0010DJ\u001b\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00102J#\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u00103\u001a\u00020\u001aH\u0016\u00a2\u0006\u0002\u00104J\u0008\u0010F\u001a\u00020GH\u0016R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0012j\u0008\u0012\u0004\u0012\u00020\n`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lde/mrapp/util/datastructure/SortedArraySet;",
        "T",
        "Ljava/util/SortedSet;",
        "Ljava/util/NavigableSet;",
        "Ljava/io/Serializable;",
        "()V",
        "items",
        "",
        "(Ljava/util/Collection;)V",
        "initialCapacity",
        "",
        "(I)V",
        "comparator",
        "Ljava/util/Comparator;",
        "(Ljava/util/Comparator;)V",
        "(Ljava/util/Collection;Ljava/util/Comparator;)V",
        "(ILjava/util/Comparator;)V",
        "hashCodes",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "size",
        "getSize",
        "()I",
        "sortedArrayList",
        "Lde/mrapp/util/datastructure/SortedArrayList;",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "elements",
        "ceiling",
        "e",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "clear",
        "",
        "contains",
        "containsAll",
        "descendingIterator",
        "",
        "descendingSet",
        "equals",
        "other",
        "",
        "first",
        "()Ljava/lang/Object;",
        "floor",
        "hashCode",
        "headSet",
        "toElement",
        "(Ljava/lang/Object;)Ljava/util/NavigableSet;",
        "inclusive",
        "(Ljava/lang/Object;Z)Ljava/util/NavigableSet;",
        "higher",
        "isEmpty",
        "iterator",
        "last",
        "lower",
        "pollFirst",
        "pollLast",
        "remove",
        "removeAll",
        "retainAll",
        "subSet",
        "fromElement",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;",
        "fromInclusive",
        "toInclusive",
        "(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;",
        "tailSet",
        "toString",
        "",
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
.field private final hashCodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/SortedArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, v0, v1}, Lde/mrapp/util/datastructure/SortedArraySet;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lde/mrapp/util/datastructure/SortedArraySet;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/datastructure/SortedArrayList;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    .line 41
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v0, v1}, Lde/mrapp/util/datastructure/SortedArraySet;-><init>(ILjava/util/Comparator;)V

    .line 46
    invoke-virtual {p0, p1}, Lde/mrapp/util/datastructure/SortedArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p2}, Lde/mrapp/util/datastructure/SortedArraySet;-><init>(ILjava/util/Comparator;)V

    .line 54
    invoke-virtual {p0, p1}, Lde/mrapp/util/datastructure/SortedArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1}, Lde/mrapp/util/datastructure/SortedArraySet;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/SortedArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 231
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v2}, Lde/mrapp/util/datastructure/SortedArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 234
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 235
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 237
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 104
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    .line 235
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    :goto_3
    return v1
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 131
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 132
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    check-cast p1, Ljava/lang/Iterable;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-virtual {p0, v1}, Lde/mrapp/util/datastructure/SortedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 226
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 101
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 229
    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 224
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 208
    move-object v0, p0

    check-cast v0, Lde/mrapp/util/datastructure/SortedArraySet;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 212
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    return v1

    .line 214
    :cond_2
    check-cast p1, Lde/mrapp/util/datastructure/SortedArraySet;

    .line 215
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    iget-object p1, p1, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public first()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/util/datastructure/SortedArraySet;->isEmpty()Z

    move-result v1

    const-string v2, "Set is empty"

    const-class v3, Ljava/util/NoSuchElementException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureFalse(ZLjava/lang/String;Ljava/lang/Class;)V

    .line 61
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/util/datastructure/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 159
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public getSize()I
    .locals 1

    .line 70
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 203
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lde/mrapp/util/datastructure/SortedArraySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lde/mrapp/util/datastructure/SortedArraySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "sortedArrayList.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/util/datastructure/SortedArraySet;->isEmpty()Z

    move-result v1

    const-string v2, "Set is empty"

    const-class v3, Ljava/util/NoSuchElementException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureFalse(ZLjava/lang/String;Ljava/lang/Class;)V

    .line 66
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lde/mrapp/util/datastructure/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 175
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    invoke-virtual {p0, v0}, Lde/mrapp/util/datastructure/SortedArraySet;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 185
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lde/mrapp/util/datastructure/SortedArraySet;->remove(Ljava/lang/Object;)Z

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/SortedArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 242
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 128
    invoke-virtual {p0, v2}, Lde/mrapp/util/datastructure/SortedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 245
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 248
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 249
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 128
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    .line 246
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    :goto_3
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/SortedArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 111
    iget-object v3, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v3, v0}, Lde/mrapp/util/datastructure/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 115
    iget-object v3, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v3, v0}, Lde/mrapp/util/datastructure/SortedArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lde/mrapp/util/datastructure/SortedArraySet;->hashCodes:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final bridge size()I
    .locals 1

    .line 36
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/SortedArraySet;->getSize()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, p1, v0, p2, v1}, Lde/mrapp/util/datastructure/SortedArraySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZTT;Z)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 139
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/datastructure/SortedArraySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, v0}, Lde/mrapp/util/datastructure/SortedArraySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/util/NavigableSet<",
            "TT;>;"
        }
    .end annotation

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lde/mrapp/util/datastructure/SortedArraySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    iget-object v0, p0, Lde/mrapp/util/datastructure/SortedArraySet;->sortedArrayList:Lde/mrapp/util/datastructure/SortedArrayList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/SortedArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sortedArrayList.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
