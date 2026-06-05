.class public final Lcom/mikepenz/fastadapter/MutableSubItemList;
.super Ljava/lang/Object;
.source "MutableSubItemList.kt"

# interfaces
.implements Ljava/util/List;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/mikepenz/fastadapter/ISubItem<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutableSubItemList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableSubItemList.kt\ncom/mikepenz/fastadapter/MutableSubItemList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n706#2:57\n783#2,2:58\n1648#2,2:60\n1648#2,2:62\n1648#2,2:64\n1648#2,2:66\n*E\n*S KotlinDebug\n*F\n+ 1 MutableSubItemList.kt\ncom/mikepenz/fastadapter/MutableSubItemList\n*L\n18#1:57\n18#1,2:58\n18#1,2:60\n33#1,2:62\n38#1,2:64\n48#1,2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\t\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010+\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B!\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010\u0010\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\r2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u0016\u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0014H\u0016J\u0016\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0003\u00a2\u0006\u0002\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0001J\u0016\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\rH\u0096\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0001\u00a2\u0006\u0002\u0010 J\t\u0010!\u001a\u00020\u0011H\u0096\u0001J\u000f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000#H\u0096\u0003J\u0016\u0010$\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0001\u00a2\u0006\u0002\u0010 J\u000f\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0096\u0001J\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000&2\u0006\u0010\u0015\u001a\u00020\rH\u0096\u0001J\u0015\u0010\'\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010(\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u0015\u0010)\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0017\u0010*\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0001J\u001e\u0010+\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010,J\u0014\u0010-\u001a\u00020\u00142\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000/J\u001f\u00100\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\rH\u0096\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u00063"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/MutableSubItemList;",
        "E",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        "",
        "parent",
        "Lcom/mikepenz/fastadapter/IParentItem;",
        "list",
        "(Lcom/mikepenz/fastadapter/IParentItem;Ljava/util/List;)V",
        "getList",
        "()Ljava/util/List;",
        "getParent",
        "()Lcom/mikepenz/fastadapter/IParentItem;",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Lcom/mikepenz/fastadapter/ISubItem;)Z",
        "",
        "index",
        "(ILcom/mikepenz/fastadapter/ISubItem;)V",
        "addAll",
        "elements",
        "",
        "clear",
        "contains",
        "containsAll",
        "get",
        "(I)Lcom/mikepenz/fastadapter/ISubItem;",
        "indexOf",
        "(Lcom/mikepenz/fastadapter/ISubItem;)I",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "remove",
        "removeAll",
        "removeAt",
        "retainAll",
        "set",
        "(ILcom/mikepenz/fastadapter/ISubItem;)Lcom/mikepenz/fastadapter/ISubItem;",
        "setNewList",
        "newList",
        "",
        "subList",
        "fromIndex",
        "toIndex",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/mikepenz/fastadapter/IParentItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IParentItem<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/IParentItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IParentItem<",
            "*>;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mikepenz/fastadapter/IParentItem;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/fastadapter/MutableSubItemList;-><init>(Lcom/mikepenz/fastadapter/IParentItem;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/mikepenz/fastadapter/ISubItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p2, v0}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    .line 29
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/MutableSubItemList;->add(ILcom/mikepenz/fastadapter/ISubItem;)V

    return-void
.end method

.method public add(Lcom/mikepenz/fastadapter/ISubItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    .line 24
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->add(Lcom/mikepenz/fastadapter/ISubItem;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/ISubItem;

    .line 33
    iget-object v2, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/ISubItem;

    .line 38
    iget-object v2, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/ISubItem;

    const/4 v2, 0x0

    .line 48
    move-object v3, v2

    check-cast v3, Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Lcom/mikepenz/fastadapter/ISubItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/mikepenz/fastadapter/ISubItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->contains(Lcom/mikepenz/fastadapter/ISubItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
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

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lcom/mikepenz/fastadapter/ISubItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->get(I)Lcom/mikepenz/fastadapter/ISubItem;

    move-result-object p1

    return-object p1
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getParent()Lcom/mikepenz/fastadapter/IParentItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IParentItem<",
            "*>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/mikepenz/fastadapter/ISubItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/mikepenz/fastadapter/ISubItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->indexOf(Lcom/mikepenz/fastadapter/ISubItem;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Lcom/mikepenz/fastadapter/ISubItem;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/mikepenz/fastadapter/ISubItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->lastIndexOf(Lcom/mikepenz/fastadapter/ISubItem;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final bridge remove(I)Lcom/mikepenz/fastadapter/ISubItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->removeAt(I)Lcom/mikepenz/fastadapter/ISubItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->removeAt(I)Lcom/mikepenz/fastadapter/ISubItem;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/mikepenz/fastadapter/ISubItem;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p1, v1}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    :cond_0
    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/mikepenz/fastadapter/ISubItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->remove(Lcom/mikepenz/fastadapter/ISubItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
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

    .line 18
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/mikepenz/fastadapter/ISubItem;

    .line 18
    iget-object v4, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 60
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/ISubItem;

    const/4 v2, 0x0

    .line 18
    move-object v3, v2

    check-cast v3, Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAt(I)Lcom/mikepenz/fastadapter/ISubItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    return-object p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
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

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILcom/mikepenz/fastadapter/ISubItem;)Lcom/mikepenz/fastadapter/ISubItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->parent:Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p2, v0}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    .line 44
    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/ISubItem;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Lcom/mikepenz/fastadapter/IParentItem;

    invoke-interface {p1, p2}, Lcom/mikepenz/fastadapter/ISubItem;->setParent(Lcom/mikepenz/fastadapter/IParentItem;)V

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p2, Lcom/mikepenz/fastadapter/ISubItem;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/MutableSubItemList;->set(ILcom/mikepenz/fastadapter/ISubItem;)Lcom/mikepenz/fastadapter/ISubItem;

    move-result-object p1

    return-object p1
.end method

.method public final setNewList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/MutableSubItemList;->clear()V

    .line 54
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/MutableSubItemList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final bridge size()I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/MutableSubItemList;->getSize()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mikepenz/fastadapter/MutableSubItemList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

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
