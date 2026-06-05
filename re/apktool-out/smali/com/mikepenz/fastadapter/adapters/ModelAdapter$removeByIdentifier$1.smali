.class public final Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;
.super Ljava/lang/Object;
.source "ModelAdapter.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/utils/AdapterPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeByIdentifier(J)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
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
    value = "SMAP\nModelAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelAdapter.kt\ncom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1\n*L\n1#1,502:1\n*E\n"
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
        "com/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1",
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
.field final synthetic $identifier:J

.field final synthetic this$0:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;->this$0:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    iput-wide p2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;->$identifier:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z
    .locals 3
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

    .line 415
    iget-wide p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;->$identifier:J

    invoke-interface {p3}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 417
    instance-of p1, p3, Lcom/mikepenz/fastadapter/IExpandable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    check-cast p1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz p1, :cond_1

    .line 419
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

    .line 423
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;->this$0:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {p1, p4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
