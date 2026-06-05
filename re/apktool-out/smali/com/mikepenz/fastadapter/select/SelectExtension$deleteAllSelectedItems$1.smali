.class public final Lcom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1;
.super Ljava/lang/Object;
.source "SelectExtension.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/utils/AdapterPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/select/SelectExtension;->deleteAllSelectedItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
        "TItem;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectExtension.kt\ncom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1\n*L\n1#1,499:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J3\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;",
        "apply",
        "",
        "lastParentAdapter",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "lastParentPosition",
        "",
        "item",
        "position",
        "(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z",
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
.field final synthetic $positions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1;->$positions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;ITItem;I)Z"
        }
    .end annotation

    const-string p2, "lastParentAdapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-interface {p3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 468
    instance-of p1, p3, Lcom/mikepenz/fastadapter/IExpandable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    check-cast p1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz p1, :cond_1

    .line 470
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IExpandable;->getParent()Lcom/mikepenz/fastadapter/IParentItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IParentItem;->getSubItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, -0x1

    if-eq p4, p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1;->$positions:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
