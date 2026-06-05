.class public final Lcom/kelocube/mirrorclient/TCPTransport;
.super Lcom/kelocube/mirrorclient/Transport;
.source "Transport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/TCPTransport;",
        "Lcom/kelocube/mirrorclient/Transport;",
        "socket",
        "Ljava/nio/channels/SocketChannel;",
        "(Ljava/nio/channels/SocketChannel;)V",
        "doClose",
        "",
        "isRemote",
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
.field private final socket:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    move-object v0, p1

    check-cast v0, Ljava/nio/channels/ScatteringByteChannel;

    move-object v1, p1

    check-cast v1, Ljava/nio/channels/GatheringByteChannel;

    invoke-direct {p0, v0, v1}, Lcom/kelocube/mirrorclient/Transport;-><init>(Ljava/nio/channels/ScatteringByteChannel;Ljava/nio/channels/GatheringByteChannel;)V

    .line 377
    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransport;->socket:Ljava/nio/channels/SocketChannel;

    .line 382
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method


# virtual methods
.method protected doClose()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransport;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method public isRemote()Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransport;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
