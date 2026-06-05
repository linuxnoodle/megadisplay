.class public final Lcom/kelocube/mirrorclient/AOAPPipe;
.super Ljava/lang/Object;
.source "AOAPPipe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/AOAPPipe;",
        "",
        "pfd",
        "Landroid/os/ParcelFileDescriptor;",
        "(Landroid/os/ParcelFileDescriptor;)V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "inUse",
        "",
        "getInUse",
        "()Z",
        "setInUse",
        "(Z)V",
        "inputChannel",
        "Ljava/nio/channels/FileChannel;",
        "kotlin.jvm.PlatformType",
        "getInputChannel",
        "()Ljava/nio/channels/FileChannel;",
        "outputChannel",
        "getOutputChannel",
        "close",
        "",
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
.field private final handler:Landroid/os/Handler;

.field private inUse:Z

.field private final inputChannel:Ljava/nio/channels/FileChannel;

.field private final outputChannel:Ljava/nio/channels/FileChannel;

.field private final pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    const-string v0, "pfd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 11
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->inputChannel:Ljava/nio/channels/FileChannel;

    .line 12
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->outputChannel:Ljava/nio/channels/FileChannel;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getInUse()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->inUse:Z

    return v0
.end method

.method public final getInputChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->inputChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public final getOutputChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->outputChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public final setInUse(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/AOAPPipe;->inUse:Z

    return-void
.end method
