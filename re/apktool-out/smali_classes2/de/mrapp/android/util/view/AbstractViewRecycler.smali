.class public abstract Lde/mrapp/android/util/view/AbstractViewRecycler;
.super Ljava/lang/Object;
.source "AbstractViewRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final activeViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TItemType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
            "TItemType;TParamType;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final logger:Lde/mrapp/android/util/logging/Logger;

.field private unusedViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private useCache:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The layout inflater may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->context:Landroid/content/Context;

    .line 296
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflater:Landroid/view/LayoutInflater;

    .line 297
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->activeViews:Ljava/util/Map;

    .line 298
    new-instance p1, Lde/mrapp/android/util/logging/Logger;

    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    invoke-direct {p1, v0}, Lde/mrapp/android/util/logging/Logger;-><init>(Lde/mrapp/android/util/logging/LogLevel;)V

    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->adapter:Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 300
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->useCache:Z

    return-void
.end method


# virtual methods
.method protected final addUnusedView(Landroid/view/View;I)V
    .locals 2

    .line 213
    iget-boolean v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->useCache:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->adapter:Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewTypeCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    .line 218
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 222
    iget-object v1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final clearCache()V
    .locals 3

    .line 478
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    .line 483
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Removed all unused views from cache"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final clearCache(I)V
    .locals 4

    .line 494
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 498
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed all unused views of view type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method protected getActiveViews()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TItemType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->activeViews:Ljava/util/Map;

    return-object v0
.end method

.method public final getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
            "TItemType;TParamType;>;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->adapter:Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 373
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 271
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final getLogLevel()Lde/mrapp/android/util/logging/LogLevel;
    .locals 1

    .line 406
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method protected final getLogger()Lde/mrapp/android/util/logging/Logger;
    .locals 1

    .line 260
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    return-object v0
.end method

.method public final getView(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 431
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->activeViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public varargs abstract inflate(Ljava/lang/Object;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;Z[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public final varargs inflate(Ljava/lang/Object;[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0, p1, v0, p2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->inflate(Ljava/lang/Object;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final isCacheUsed()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->useCache:Z

    return v0
.end method

.method public final isInflated(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)Z"
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final varargs notifyItemChanged(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;[TParamType;)V"
        }
    .end annotation

    .line 462
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 466
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated view of item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View of item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not updated. It has not been inflated yet"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lde/mrapp/android/util/logging/Logger;->logVerbose(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected final pollUnusedView(I)Landroid/view/View;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->useCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->unusedViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract remove(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation
.end method

.method public abstract removeAll()V
.end method

.method public final setAdapter(Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter<",
            "TItemType;TParamType;>;)V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->adapter:Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 396
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    return-void
.end method

.method public final setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->logger:Lde/mrapp/android/util/logging/Logger;

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/logging/Logger;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method

.method public final useCache(Z)V
    .locals 0

    .line 518
    iput-boolean p1, p0, Lde/mrapp/android/util/view/AbstractViewRecycler;->useCache:Z

    if-nez p1, :cond_0

    .line 521
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->clearCache()V

    :cond_0
    return-void
.end method
