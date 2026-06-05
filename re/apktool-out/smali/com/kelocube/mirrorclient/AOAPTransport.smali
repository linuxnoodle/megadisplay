.class public final Lcom/kelocube/mirrorclient/AOAPTransport;
.super Lcom/kelocube/mirrorclient/Transport;
.source "Transport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/AOAPTransport;",
        "Lcom/kelocube/mirrorclient/Transport;",
        "pipe",
        "Lcom/kelocube/mirrorclient/AOAPPipe;",
        "(Lcom/kelocube/mirrorclient/AOAPPipe;)V",
        "threads",
        "",
        "readFinished",
        "",
        "writeFinished",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

.field private threads:I


# direct methods
.method public constructor <init>(Lcom/kelocube/mirrorclient/AOAPPipe;)V
    .locals 3

    const-string v0, "pipe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-string v1, "<get-inputChannel>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/nio/channels/ScatteringByteChannel;

    .line 396
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AOAPPipe;->getOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-string v2, "<get-outputChannel>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/nio/channels/GatheringByteChannel;

    .line 394
    invoke-direct {p0, v0, v1}, Lcom/kelocube/mirrorclient/Transport;-><init>(Ljava/nio/channels/ScatteringByteChannel;Ljava/nio/channels/GatheringByteChannel;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    const/4 v0, 0x2

    .line 398
    iput v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->threads:I

    .line 401
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInUse()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p1, v1}, Lcom/kelocube/mirrorclient/AOAPPipe;->setInUse(Z)V

    return-void

    .line 401
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected readFinished()V
    .locals 2

    .line 406
    iget v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->threads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->threads:I

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/AOAPPipe;->setInUse(Z)V

    goto :goto_0

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected writeFinished()V
    .locals 2

    .line 413
    iget v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->threads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->threads:I

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransport;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/AOAPPipe;->setInUse(Z)V

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
