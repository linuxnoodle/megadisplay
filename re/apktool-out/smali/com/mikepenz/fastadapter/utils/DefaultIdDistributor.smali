.class public abstract Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;
.super Ljava/lang/Object;
.source "DefaultIdDistributor.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IIdDistributor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Identifiable::",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IIdDistributor<",
        "TIdentifiable;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0007J)\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t2\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\t\"\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;",
        "Identifiable",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        "Lcom/mikepenz/fastadapter/IIdDistributor;",
        "()V",
        "checkId",
        "identifiable",
        "(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;",
        "checkIds",
        "",
        "identifiables",
        "([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;",
        "",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)TIdentifiable;"
        }
    .end annotation

    const-string v0, "identifiable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IIdentifyable;->getIdentifier()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->nextId(Lcom/mikepenz/fastadapter/IIdentifyable;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/mikepenz/fastadapter/IIdentifyable;->setIdentifier(J)V

    :cond_0
    return-object p1
.end method

.method public checkIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TIdentifiable;>;)",
            "Ljava/util/List<",
            "TIdentifiable;>;"
        }
    .end annotation

    const-string v0, "identifiables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IIdentifyable;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public varargs checkIds([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TIdentifiable;)[TIdentifiable;"
        }
    .end annotation

    const-string v0, "identifiables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 29
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
