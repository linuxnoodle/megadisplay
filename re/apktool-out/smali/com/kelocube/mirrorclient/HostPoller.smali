.class public final Lcom/kelocube/mirrorclient/HostPoller;
.super Ljava/lang/Object;
.source "HostPoller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/HostPoller$PollRequest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010!\u001a\u00020\rH\u0002J\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000RJ\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/HostPoller;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
        "Lkotlin/ParameterName;",
        "name",
        "request",
        "",
        "online",
        "",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getOnline",
        "()Z",
        "setOnline",
        "(Z)V",
        "getRequest",
        "()Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
        "setRequest",
        "(Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V",
        "running",
        "socket",
        "Ljava/net/Socket;",
        "socketLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "thread",
        "Ljava/lang/Thread;",
        "runPoll",
        "start",
        "stop",
        "PollRequest",
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

.field private onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private online:Z

.field private volatile request:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;

.field private running:Z

.field private socket:Ljava/net/Socket;

.field private final socketLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$-5tpWFweD9asmVFMI7EioMP9LDE(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/HostPoller;->runPoll$lambda$4$lambda$1(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLg0q2q76jPcoJgCIdsmakrfCeI(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/HostPoller;->runPoll$lambda$4$lambda$2(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Td-usH33m39AEVCZIpwOCRE02Vs(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/HostPoller;->runPoll$lambda$4$lambda$3(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hh05y5uXUo-wSBvXTnnSkd5su_4(Lcom/kelocube/mirrorclient/HostPoller;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/HostPoller;->runPoll()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->handler:Landroid/os/Handler;

    .line 24
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->thread:Ljava/lang/Thread;

    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    sget-object v0, Lcom/kelocube/mirrorclient/HostPoller$onResult$1;->INSTANCE:Lcom/kelocube/mirrorclient/HostPoller$onResult$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private final runPoll()V
    .locals 7

    .line 36
    const-string v0, "Host "

    .line 38
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/kelocube/mirrorclient/HostPollerKt;->access$getPOLL_DELAY_FAIL$p()I

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/kelocube/mirrorclient/HostPoller;->request:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_3

    .line 43
    :try_start_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 44
    iget-object v4, p0, Lcom/kelocube/mirrorclient/HostPoller;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 45
    :try_start_2
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Lcom/kelocube/mirrorclient/HostPoller;->socket:Ljava/net/Socket;

    .line 46
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47
    iget-object v4, p0, Lcom/kelocube/mirrorclient/HostPoller;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Ljava/net/SocketAddress;

    invoke-static {}, Lcom/kelocube/mirrorclient/HostPollerKt;->access$getPOLL_TIMEOUT$p()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 48
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is online"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lcom/kelocube/mirrorclient/HostPoller;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v3, p0, Lcom/kelocube/mirrorclient/HostPoller;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 56
    invoke-static {}, Lcom/kelocube/mirrorclient/HostPollerKt;->access$getPOLL_DELAY_SUCCESS$p()I

    move-result v1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 49
    :cond_0
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    .line 44
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 66
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is offline (unknown host)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/kelocube/mirrorclient/HostPoller;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda3;-><init>(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 58
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is offline (no connection)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lcom/kelocube/mirrorclient/HostPoller;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;-><init>(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    int-to-long v1, v1

    .line 76
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 79
    :catch_2
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host poller thread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final runPoll$lambda$4$lambda$1(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->online:Z

    .line 53
    iget-object p0, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final runPoll$lambda$4$lambda$2(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->online:Z

    .line 63
    iget-object p0, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final runPoll$lambda$4$lambda$3(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->online:Z

    .line 71
    iget-object p0, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getOnResult()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOnline()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->online:Z

    return v0
.end method

.method public final getRequest()Lcom/kelocube/mirrorclient/HostPoller$PollRequest;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->request:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;

    return-object v0
.end method

.method public final setOnResult(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/kelocube/mirrorclient/HostPoller;->onResult:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnline(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/HostPoller;->online:Z

    return-void
.end method

.method public final setRequest(Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kelocube/mirrorclient/HostPoller;->request:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;

    return-void
.end method

.method public final start()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->running:Z

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/HostPoller;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->thread:Ljava/lang/Thread;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->running:Z

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->running:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->socketLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/HostPoller;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/HostPoller;->running:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 94
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
