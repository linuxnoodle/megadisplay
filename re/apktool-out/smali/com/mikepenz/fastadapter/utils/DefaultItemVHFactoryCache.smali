.class public final Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;
.super Ljava/lang/Object;
.source "DefaultItemVHFactoryCache.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemVHFactoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemVHFactory::",
        "Lcom/mikepenz/fastadapter/IItemVHFactory<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItemVHFactoryCache<",
        "TItemVHFactory;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;",
        "ItemVHFactory",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItemVHFactory;",
        "Lcom/mikepenz/fastadapter/IItemVHFactoryCache;",
        "()V",
        "typeInstances",
        "Landroid/util/SparseArray;",
        "clear",
        "",
        "contains",
        "",
        "type",
        "",
        "get",
        "(I)Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "register",
        "item",
        "(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z",
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
.field private final typeInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TItemVHFactory;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(I)Lcom/mikepenz/fastadapter/IItemVHFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItemVHFactory;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "typeInstances.get(type)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mikepenz/fastadapter/IItemVHFactory;

    return-object p1
.end method

.method public register(ILcom/mikepenz/fastadapter/IItemVHFactory;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItemVHFactory;)Z"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemVHFactoryCache;->typeInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
