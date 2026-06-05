.class public final Lde/mrapp/util/datastructure/ListenerList;
.super Ljava/lang/Object;
.source "ListenerList.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/util/datastructure/ListenerList$CompareMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListenerList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListenerList.kt\nde/mrapp/util/datastructure/ListenerList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n673#2:207\n746#2,2:208\n1591#2,2:210\n*E\n*S KotlinDebug\n*F\n+ 1 ListenerList.kt\nde/mrapp/util/datastructure/ListenerList\n*L\n144#1:207\n144#1,2:208\n144#1,2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001$B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002J\u0006\u0010\u0014\u001a\u00020\u0012J#\u0010\u0015\u001a\u00020\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000f\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0016J!\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cJ\u0006\u0010\u001d\u001a\u00020\u000eJ\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001fH\u0096\u0002J\u0013\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010!\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002J\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lde/mrapp/util/datastructure/ListenerList;",
        "T",
        "",
        "()V",
        "compareMethod",
        "Lde/mrapp/util/datastructure/ListenerList$CompareMethod;",
        "(Lde/mrapp/util/datastructure/ListenerList$CompareMethod;)V",
        "getCompareMethod",
        "()Lde/mrapp/util/datastructure/ListenerList$CompareMethod;",
        "listeners",
        "",
        "lock",
        "",
        "add",
        "",
        "listener",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "",
        "iterable",
        "clear",
        "contains",
        "(Ljava/lang/Iterable;Ljava/lang/Object;)Z",
        "equals",
        "listener1",
        "listener2",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "getAll",
        "",
        "isEmpty",
        "iterator",
        "",
        "remove",
        "removeAll",
        "size",
        "",
        "CompareMethod",
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
.field private final compareMethod:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    sget-object v0, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->EQUALITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    invoke-direct {p0, v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>(Lde/mrapp/util/datastructure/ListenerList$CompareMethod;)V

    return-void
.end method

.method public constructor <init>(Lde/mrapp/util/datastructure/ListenerList$CompareMethod;)V
    .locals 1

    const-string v0, "compareMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/mrapp/util/datastructure/ListenerList;->compareMethod:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    .line 56
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    return-void
.end method

.method private final contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)Z"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lde/mrapp/util/datastructure/ListenerList;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    .line 65
    iget-object v2, p0, Lde/mrapp/util/datastructure/ListenerList;->compareMethod:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    sget-object v3, Lde/mrapp/util/datastructure/ListenerList$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-ne p1, p2, :cond_3

    goto :goto_1

    .line 67
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 66
    :cond_2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-direct {p0, v1, p1}, Lde/mrapp/util/datastructure/ListenerList;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 105
    :cond_0
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final addAll(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "iterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    sget-object v3, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v4, "The listener may not be null"

    invoke-virtual {v3, v2, v4}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 119
    iget-object v3, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-direct {p0, v3, v2}, Lde/mrapp/util/datastructure/ListenerList;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 120
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-direct {p0, v3, v2}, Lde/mrapp/util/datastructure/ListenerList;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_0

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    iget-object v3, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v1, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .line 127
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 132
    iput-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    .line 134
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final clear()V
    .locals 2

    .line 183
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    .line 185
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getAll()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lde/mrapp/util/datastructure/ListenerList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 195
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "Collections.unmodifiable\u2026nkedList(this.listeners))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 193
    monitor-exit v0

    throw v1
.end method

.method public final getCompareMethod()Lde/mrapp/util/datastructure/ListenerList$CompareMethod;
    .locals 1

    .line 35
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->compareMethod:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0

    throw v1
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

    .line 200
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 200
    monitor-exit v0

    throw v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-direct {p0, v1, p1}, Lde/mrapp/util/datastructure/ListenerList;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 147
    iget-object v2, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 208
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 147
    invoke-direct {p0, v4, p1}, Lde/mrapp/util/datastructure/ListenerList;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 210
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_2
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    return v5

    .line 152
    :cond_3
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 144
    monitor-exit v0

    throw p1
.end method

.method public final removeAll(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "iterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 161
    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 163
    iget-object v2, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 164
    invoke-direct {p0, p1, v3}, Lde/mrapp/util/datastructure/ListenerList;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 169
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 174
    iput-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    .line 176
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final size()I
    .locals 2

    .line 87
    iget-object v0, p0, Lde/mrapp/util/datastructure/ListenerList;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lde/mrapp/util/datastructure/ListenerList;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0

    throw v1
.end method
