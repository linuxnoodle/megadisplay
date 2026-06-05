.class public final Lcom/kelocube/mirrorclient/TCPTransportListener;
.super Ljava/lang/Object;
.source "TCPTransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/TCPTransportListener;",
        "",
        "callbacks",
        "Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;",
        "(Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;)V",
        "activeCond",
        "Landroid/os/ConditionVariable;",
        "error",
        "Lcom/kelocube/mirrorclient/AppException;",
        "getError",
        "()Lcom/kelocube/mirrorclient/AppException;",
        "setError",
        "(Lcom/kelocube/mirrorclient/AppException;)V",
        "handler",
        "Landroid/os/Handler;",
        "thread",
        "Ljava/lang/Thread;",
        "transport",
        "Lcom/kelocube/mirrorclient/Transport;",
        "getTransport",
        "()Lcom/kelocube/mirrorclient/Transport;",
        "setTransport",
        "(Lcom/kelocube/mirrorclient/Transport;)V",
        "close",
        "",
        "runThread",
        "setEnabled",
        "enabled",
        "",
        "takeTransport",
        "Callbacks",
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
.field private final activeCond:Landroid/os/ConditionVariable;

.field private final callbacks:Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

.field private error:Lcom/kelocube/mirrorclient/AppException;

.field private final handler:Landroid/os/Handler;

.field private final thread:Ljava/lang/Thread;

.field private transport:Lcom/kelocube/mirrorclient/Transport;


# direct methods
.method public static synthetic $r8$lambda$2C-wnGSVd4mSQIL1Vsi8hWdEMW8(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->runThread$lambda$1(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lH3-jIxo4XsqTyzvGCsR21eShaQ(Lcom/kelocube/mirrorclient/TCPTransportListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->runThread()V

    return-void
.end method

.method public constructor <init>(Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;)V
    .locals 2

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->callbacks:Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    .line 20
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/TCPTransportListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->thread:Ljava/lang/Thread;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->handler:Landroid/os/Handler;

    .line 29
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->activeCond:Landroid/os/ConditionVariable;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/kelocube/mirrorclient/TCPTransportListener;)Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->callbacks:Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    return-object p0
.end method

.method private final runThread()V
    .locals 4

    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x5a5

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    check-cast v2, Ljava/net/SocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 57
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 59
    :catch_0
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->activeCond:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0}, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;-><init>(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 94
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final runThread$lambda$1(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/TCPTransport;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 65
    invoke-static {p1}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accepted TCP client from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;

    invoke-direct {p0, p1, v0}, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;-><init>(Lcom/kelocube/mirrorclient/TCPTransportListener;Lcom/kelocube/mirrorclient/TCPTransport;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0}, Lcom/kelocube/mirrorclient/TCPTransport;->setOnReady(Lkotlin/jvm/functions/Function0;)V

    .line 78
    new-instance p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;

    invoke-direct {p0, p1, v0}, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;-><init>(Lcom/kelocube/mirrorclient/TCPTransportListener;Lcom/kelocube/mirrorclient/TCPTransport;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Lcom/kelocube/mirrorclient/TCPTransport;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 88
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransport;->start()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 35
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public final getError()Lcom/kelocube/mirrorclient/AppException;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    return-object v0
.end method

.method public final getTransport()Lcom/kelocube/mirrorclient/Transport;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->transport:Lcom/kelocube/mirrorclient/Transport;

    return-object v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->activeCond:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->activeCond:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    :goto_0
    return-void
.end method

.method public final setError(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    return-void
.end method

.method public final setTransport(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->transport:Lcom/kelocube/mirrorclient/Transport;

    return-void
.end method

.method public final takeTransport()Lcom/kelocube/mirrorclient/Transport;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->transport:Lcom/kelocube/mirrorclient/Transport;

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener;->transport:Lcom/kelocube/mirrorclient/Transport;

    return-object v0
.end method
