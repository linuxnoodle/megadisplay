.class public final Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;
.super Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;
.source "DefaultIdDistributorImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Identifiable::",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        ">",
        "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor<",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;",
        "Identifiable",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        "Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;",
        "()V",
        "idDistributor",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "nextId",
        "",
        "identifiable",
        "(Lcom/mikepenz/fastadapter/IIdentifyable;)J",
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
.field private final idDistributor:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributor;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;->idDistributor:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public nextId(Lcom/mikepenz/fastadapter/IIdentifyable;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)J"
        }
    .end annotation

    const-string v0, "identifiable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;->idDistributor:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method
