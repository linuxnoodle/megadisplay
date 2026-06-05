.class public Lde/mrapp/android/util/view/AttachedViewRecycler;
.super Lde/mrapp/android/util/view/AbstractViewRecycler;
.source "AttachedViewRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/util/view/AbstractViewRecycler<",
        "TItemType;TParamType;>;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItemType;>;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItemType;>;"
        }
    .end annotation
.end field

.field private final parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/Comparator<",
            "TItemType;>;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p2}, Lde/mrapp/android/util/view/AbstractViewRecycler;-><init>(Landroid/view/LayoutInflater;)V

    .line 159
    sget-object p2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The parent may not be null"

    invoke-virtual {p2, p1, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    .line 161
    iput-object p3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Comparator<",
            "TItemType;>;)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    return-void
.end method

.method private binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItemType;>;TItemType;",
            "Ljava/util/Comparator<",
            "TItemType;>;)I"
        }
    .end annotation

    .line 82
    invoke-static {p1, p2, p3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_0

    not-int p1, p1

    :cond_0
    return p1
.end method


# virtual methods
.method public final bringToFront(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation

    .line 180
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    const-string v2, "No adapter has been set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Using the bringToFront-method is not recommended when using a comparator"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logWarn(Ljava/lang/Class;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Brought view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to front"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not brought to front. View is not inflated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final varargs inflate(Ljava/lang/Object;Z[Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;Z[TParamType;)",
            "Landroidx/core/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 251
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    const-string v2, "No adapter has been set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 255
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 259
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_0

    .line 262
    invoke-virtual {p0, v2}, Lde/mrapp/android/util/view/AttachedViewRecycler;->pollUnusedView(I)Landroid/view/View;

    move-result-object v0

    .line 265
    :cond_0
    const-string p2, " using view type "

    if-nez v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    .line 267
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    move-object v6, p1

    move v7, v2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inflated view to visualize item "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reusing view to visualize item "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 276
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    if-eqz p2, :cond_2

    .line 280
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-direct {p0, v2, p1, p2}, Lde/mrapp/android/util/view/AttachedViewRecycler;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p2

    goto :goto_1

    .line 282
    :cond_2
    iget-object p2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 285
    :goto_1
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v2, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 287
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Added view of item "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 290
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v4

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    move-object v7, p1

    move v8, v1

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 292
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation

    .line 297
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The item may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    const-string v2, "No adapter has been set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 305
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    .line 306
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 307
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v0

    .line 308
    invoke-virtual {p0, v1, v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->addUnusedView(Landroid/view/View;I)V

    .line 309
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Did not remove view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". View is not inflated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeAll()V
    .locals 4

    .line 318
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v1

    const-string v2, "No adapter has been set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 321
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 322
    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 324
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    .line 325
    iget-object v3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 326
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v1

    .line 327
    invoke-virtual {p0, v2, v1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->addUnusedView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Removed all views"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final setComparator(Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItemType;>;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    if-eqz p1, :cond_3

    .line 217
    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 222
    iget-object v3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 223
    invoke-direct {p0, v0, v3, p1}, Lde/mrapp/android/util/view/AttachedViewRecycler;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    .line 224
    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 226
    iget-object v5, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 227
    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 233
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 236
    :cond_1
    iput-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    .line 237
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Comparator changed. Views have been reordered"

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Comparator changed"

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AttachedViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Comparator set to null"

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
