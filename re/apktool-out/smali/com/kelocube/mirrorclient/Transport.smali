.class public abstract Lcom/kelocube/mirrorclient/Transport;
.super Ljava/lang/Object;
.source "Transport.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/Transport$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transport.kt\ncom/kelocube/mirrorclient/Transport\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,419:1\n13309#2,2:420\n*S KotlinDebug\n*F\n+ 1 Transport.kt\ncom/kelocube/mirrorclient/Transport\n*L\n221#1:420,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001:\u0001SB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010=\u001a\u00020\u001aJ\u0008\u0010>\u001a\u00020\u001aH\u0014J\u0008\u0010?\u001a\u00020\u001aH\u0002J\u0008\u0010@\u001a\u00020/H\u0016J\u0008\u0010A\u001a\u00020\u001aH\u0014J\u0018\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u0002012\u0006\u0010D\u001a\u00020\u0008H\u0002J\u0008\u0010E\u001a\u00020\u001aH\u0002J\u0008\u0010F\u001a\u00020\u001aH\u0002J\u0016\u0010G\u001a\u00020\u001a2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u001a0%H\u0002J5\u0010I\u001a\u00020\u001a2\u0006\u0010J\u001a\u00020\u00082%\u0010K\u001a!\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(L\u0012\u0004\u0012\u00020\u001a0\u0015j\u0002`MJ\u0006\u0010N\u001a\u00020\u001aJ\u0014\u0010O\u001a\u00020\u001a2\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010 H\u0002J\u0008\u0010Q\u001a\u00020\u001aH\u0002J\u0008\u0010R\u001a\u00020\u001aH\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\n\"\u0004\u0008\u0011\u0010\u000cR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R5\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001a0\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR5\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u001a0\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010\u001eR \u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001a0%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00160,X\u0082.\u00a2\u0006\u0004\n\u0002\u0010-R\u000e\u0010.\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u00102\u001a\n 4*\u0004\u0018\u00010303X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000207X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Transport;",
        "",
        "stream",
        "Ljava/nio/channels/ScatteringByteChannel;",
        "sendStream",
        "Ljava/nio/channels/GatheringByteChannel;",
        "(Ljava/nio/channels/ScatteringByteChannel;Ljava/nio/channels/GatheringByteChannel;)V",
        "clientVersion",
        "",
        "getClientVersion",
        "()I",
        "setClientVersion",
        "(I)V",
        "handler",
        "Landroid/os/Handler;",
        "hostVersion",
        "getHostVersion",
        "setHostVersion",
        "initLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "onData",
        "Lkotlin/Function1;",
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "Lkotlin/ParameterName;",
        "name",
        "data",
        "",
        "getOnData",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnData",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onError",
        "Lcom/kelocube/mirrorclient/AppException;",
        "e",
        "getOnError",
        "setOnError",
        "onReady",
        "Lkotlin/Function0;",
        "getOnReady",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnReady",
        "(Lkotlin/jvm/functions/Function0;)V",
        "readData",
        "readStreams",
        "",
        "[Lcom/kelocube/mirrorclient/Transport$Data;",
        "running",
        "",
        "sendBuffer",
        "Ljava/nio/ByteBuffer;",
        "sendCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "sendLock",
        "sendThread",
        "Ljava/lang/Thread;",
        "sendingBuffer",
        "started",
        "thread",
        "timeoutTicks",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "close",
        "doClose",
        "initStream",
        "isRemote",
        "readFinished",
        "readFromSocket",
        "buffer",
        "bytes",
        "runRead",
        "runSend",
        "runThreadLoop",
        "loop",
        "send",
        "length",
        "callback",
        "to",
        "Lcom/kelocube/mirrorclient/DataCallback;",
        "start",
        "stop",
        "error",
        "tickTimeout",
        "writeFinished",
        "Data",
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
.field private volatile clientVersion:I

.field private final handler:Landroid/os/Handler;

.field private volatile hostVersion:I

.field private final initLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile onData:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/Transport$Data;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onReady:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private readData:Lcom/kelocube/mirrorclient/Transport$Data;

.field private readStreams:[Lcom/kelocube/mirrorclient/Transport$Data;

.field private volatile running:Z

.field private sendBuffer:Ljava/nio/ByteBuffer;

.field private final sendCondition:Ljava/util/concurrent/locks/Condition;

.field private final sendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final sendStream:Ljava/nio/channels/GatheringByteChannel;

.field private final sendThread:Ljava/lang/Thread;

.field private sendingBuffer:Ljava/nio/ByteBuffer;

.field private volatile started:Z

.field private final stream:Ljava/nio/channels/ScatteringByteChannel;

.field private final thread:Ljava/lang/Thread;

.field private final timeoutTicks:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$H7lsX5Fjvc15bP1GX26bCOhmjeg(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/Transport;->stop$lambda$0(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NULobGxQWPcj5RWj5_3U0mGF1vo(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Transport;->runSend()V

    return-void
.end method

.method public static synthetic $r8$lambda$UrPIy4XJai8sUxjIrIMQZ6_ImA8(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Transport;->runRead()V

    return-void
.end method

.method public static synthetic $r8$lambda$aWuB4qb5gcG5kdJZIvBpekhkDIE(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/Transport;->initStream$lambda$5(Lcom/kelocube/mirrorclient/Transport;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDbIi4Qv4XTNa_PaeEUQLTFPY4A(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/Transport;->runSend$lambda$8(Lcom/kelocube/mirrorclient/Transport;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUIJxKLs6wGroLMoFFAIFCWEMuo(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Transport;->tickTimeout()V

    return-void
.end method

.method public static synthetic $r8$lambda$xkEFiwxO944a-TLnO7BiLH7wN7Q(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/Transport;->runRead$lambda$7(Lcom/kelocube/mirrorclient/Transport;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ScatteringByteChannel;Ljava/nio/channels/GatheringByteChannel;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->stream:Ljava/nio/channels/ScatteringByteChannel;

    .line 37
    iput-object p2, p0, Lcom/kelocube/mirrorclient/Transport;->sendStream:Ljava/nio/channels/GatheringByteChannel;

    .line 44
    sget-object p1, Lcom/kelocube/mirrorclient/Transport$onData$1;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$onData$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onData:Lkotlin/jvm/functions/Function1;

    .line 45
    sget-object p1, Lcom/kelocube/mirrorclient/Transport$onReady$1;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$onReady$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onReady:Lkotlin/jvm/functions/Function0;

    .line 46
    sget-object p1, Lcom/kelocube/mirrorclient/Transport$onError$1;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$onError$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    .line 55
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda3;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (read)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->thread:Ljava/lang/Thread;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->timeoutTicks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda4;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (send)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendThread:Ljava/lang/Thread;

    .line 61
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendCondition:Ljava/util/concurrent/locks/Condition;

    .line 64
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getReadStreams$p(Lcom/kelocube/mirrorclient/Transport;)[Lcom/kelocube/mirrorclient/Transport$Data;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->readStreams:[Lcom/kelocube/mirrorclient/Transport$Data;

    return-object p0
.end method

.method public static final synthetic access$getSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static final synthetic access$getSendCondition$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->sendCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static final synthetic access$getSendLock$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->sendLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getSendStream$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/channels/GatheringByteChannel;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->sendStream:Ljava/nio/channels/GatheringByteChannel;

    return-object p0
.end method

.method public static final synthetic access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->sendingBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static final synthetic access$readFromSocket(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/Transport;->readFromSocket(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public static final synthetic access$setSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final synthetic access$setSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendingBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final initStream()V
    .locals 14

    .line 173
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->initLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 174
    :try_start_0
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    if-eqz v1, :cond_e

    .line 176
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/Transport;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 179
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->readStreams:[Lcom/kelocube/mirrorclient/Transport$Data;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "readStreams"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 182
    move-object v5, p0

    check-cast v5, Lcom/kelocube/mirrorclient/Transport;

    .line 184
    const-string v5, "MIRR"

    .line 185
    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_BASE$p()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 187
    invoke-direct {p0, v1, v7}, Lcom/kelocube/mirrorclient/Transport;->readFromSocket(Ljava/nio/ByteBuffer;I)V

    .line 188
    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-static {v9, v4, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x2

    const-string v9, "Old host version"

    if-nez v5, :cond_d

    .line 191
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_VERSION_LENGTH$p()I

    move-result v10

    add-int/2addr v5, v10

    sub-int/2addr v5, v7

    invoke-direct {p0, v1, v5}, Lcom/kelocube/mirrorclient/Transport;->readFromSocket(Ljava/nio/ByteBuffer;I)V

    .line 192
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v7, v4, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v7, "Wrong protocol"

    const/4 v10, 0x1

    if-eqz v5, :cond_c

    .line 195
    :try_start_4
    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_VERSION_LENGTH$p()I

    move-result v13

    invoke-static {v11, v12, v13}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "toString(...)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {v5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 197
    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getSUPPORTED_HOST_VERSIONS$p()[Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v5, :cond_b

    .line 200
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v11, v12, :cond_a

    .line 201
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 202
    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getSUPPORTED_HOST_VERSIONS$p()[Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    .line 203
    :cond_2
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    invoke-direct {v1, v9, v3, v8}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 207
    :cond_3
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/kelocube/mirrorclient/Transport;->hostVersion:I

    .line 208
    iput v11, p0, Lcom/kelocube/mirrorclient/Transport;->clientVersion:I

    .line 209
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_VERSION_LENGTH$p()I

    move-result v8

    const/16 v9, 0x30

    invoke-static {v5, v8, v9}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-direct {p0, v1, v10}, Lcom/kelocube/mirrorclient/Transport;->readFromSocket(Ljava/nio/ByteBuffer;I)V

    .line 212
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_VERSION_LENGTH$p()I

    move-result v9

    add-int/2addr v6, v9

    aget-byte v6, v8, v6

    if-nez v6, :cond_9

    .line 216
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Read handshake"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/kelocube/mirrorclient/Transport;->readStreams:[Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v6, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    .line 420
    :cond_4
    array-length v2, v6

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v7, v6, v4

    .line 221
    invoke-virtual {v7}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v4, "sendBuffer"

    if-nez v2, :cond_6

    :try_start_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 225
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport;->sendingBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_7

    const-string v2, "sendingBuffer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->sendLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :try_start_6
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v3, v2

    :goto_2
    invoke-static {}, Lcom/kelocube/mirrorclient/TransportKt;->access$getHANDSHAKE_BASE$p()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v5, "US_ASCII"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport;->sendCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 231
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 228
    :try_start_7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 235
    iput-boolean v10, p0, Lcom/kelocube/mirrorclient/Transport;->started:Z

    .line 237
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stream started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 173
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 240
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda2;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v2

    .line 228
    :try_start_8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 213
    :cond_9
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    invoke-direct {v1, v7, v3, v10}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 200
    :cond_a
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    const-string v2, "Old client version"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 199
    :cond_b
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    invoke-direct {v1, v7, v3, v10}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 193
    :cond_c
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    invoke-direct {v1, v7, v3, v10}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 189
    :cond_d
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    invoke-direct {v1, v9, v3, v8}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 175
    :cond_e
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    .line 173
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static final initStream$lambda$5(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Transport;->onReady:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final readFromSocket(Ljava/nio/ByteBuffer;I)V
    .locals 12

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_12

    if-lez p2, :cond_12

    :goto_0
    if-lez p2, :cond_10

    .line 145
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    const/4 v1, 0x0

    const-string v2, "readData"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 147
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->timeoutTicks:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 148
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v4, p0, Lcom/kelocube/mirrorclient/Transport;->stream:Ljava/nio/channels/ScatteringByteChannel;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v5, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_4
    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kelocube/mirrorclient/Transport$Data;->setLength(I)V

    .line 150
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    if-eqz v0, :cond_8

    .line 155
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    goto :goto_1

    .line 156
    :cond_7
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "EOF"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_8
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 159
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v0

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v3, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_b
    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v0, v3

    .line 160
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 161
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v3, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_c
    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v4, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_d
    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v3, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_e
    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    if-nez v4, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int/2addr p2, v0

    goto/16 :goto_0

    :cond_10
    if-nez p2, :cond_11

    return-void

    .line 167
    :cond_11
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toRead = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 141
    :cond_12
    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    array-length p1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Packet too large ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final runRead()V
    .locals 2

    .line 296
    new-instance v0, Lcom/kelocube/mirrorclient/Transport$runRead$1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/Transport$runRead$1;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/Transport;->runThreadLoop(Lkotlin/jvm/functions/Function0;)V

    .line 346
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final runRead$lambda$7(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Transport;->readFinished()V

    return-void
.end method

.method private final runSend()V
    .locals 2

    .line 350
    new-instance v0, Lcom/kelocube/mirrorclient/Transport$runSend$1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/Transport$runSend$1;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/Transport;->runThreadLoop(Lkotlin/jvm/functions/Function0;)V

    .line 373
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda5;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final runSend$lambda$8(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Transport;->writeFinished()V

    return-void
.end method

.method private final runThreadLoop(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Entering "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Transport;->initStream()V

    .line 273
    :goto_0
    iget-boolean v2, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    if-eqz v2, :cond_0

    .line 274
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 287
    :try_start_1
    new-instance v2, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Network error"

    invoke-direct {v2, v3, p1, v0}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    :goto_2
    invoke-direct {p0, v2}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    goto :goto_3

    .line 283
    :catch_0
    :try_start_2
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Thread interrupted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 280
    new-instance v2, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Disconnected"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v2, v3, p1, v0}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 278
    new-instance v2, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Socket timed out"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v2, v3, p1, v0}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 289
    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    throw p1

    :catch_3
    move-exception p1

    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    .line 292
    :goto_3
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exiting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final stop(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic stop$default(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final stop$lambda$0(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AppException;->printStackTrace()V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    .line 104
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_1

    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "No error"

    invoke-direct {p1, v3, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :cond_1
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 107
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 110
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Transport;->doClose()V

    .line 115
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private final tickTimeout()V
    .locals 4

    .line 121
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->timeoutTicks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 124
    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Read timed out"

    invoke-direct {v0, v3, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/Transport;->stop(Lcom/kelocube/mirrorclient/AppException;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Transport;->started:Z

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/kelocube/mirrorclient/Transport$tickTimeout$1;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$tickTimeout$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/kelocube/mirrorclient/Transport;->send(ILkotlin/jvm/functions/Function1;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda6;-><init>(Lcom/kelocube/mirrorclient/Transport;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/kelocube/mirrorclient/Transport$close$1;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$close$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onData:Lkotlin/jvm/functions/Function1;

    .line 135
    sget-object v0, Lcom/kelocube/mirrorclient/Transport$close$2;->INSTANCE:Lcom/kelocube/mirrorclient/Transport$close$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-static {p0, v0, v1, v0}, Lcom/kelocube/mirrorclient/Transport;->stop$default(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;ILjava/lang/Object;)V

    return-void
.end method

.method protected doClose()V
    .locals 0

    return-void
.end method

.method public final getClientVersion()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/kelocube/mirrorclient/Transport;->clientVersion:I

    return v0
.end method

.method public final getHostVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/kelocube/mirrorclient/Transport;->hostVersion:I

    return v0
.end method

.method public final getOnData()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kelocube/mirrorclient/Transport$Data;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onData:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnReady()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->onReady:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public isRemote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected readFinished()V
    .locals 0

    return-void
.end method

.method public final send(ILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Wrote wrong packet length ("

    const-string v1, "callback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_8

    .line 249
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport;->sendLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const-string v5, "sendBuffer"

    if-nez v3, :cond_0

    :try_start_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    iget-object v6, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v3, v6

    if-gt v1, v3, :cond_7

    .line 254
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 257
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_4
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v4, p2

    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p2, p1, :cond_6

    .line 263
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->sendCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 264
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 260
    :cond_6
    :try_start_2
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 251
    :cond_7
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v4, "Network send buffer overflow"

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 249
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 247
    :cond_8
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Outgoing packet too large ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > 10000)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final setClientVersion(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/kelocube/mirrorclient/Transport;->clientVersion:I

    return-void
.end method

.method public final setHostVersion(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/kelocube/mirrorclient/Transport;->hostVersion:I

    return-void
.end method

.method public final setOnData(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/Transport$Data;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onData:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnReady(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport;->onReady:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final start()V
    .locals 6

    .line 74
    const-string v0, "allocate(...)"

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 77
    :try_start_1
    new-instance v1, Lcom/kelocube/mirrorclient/Transport$Data;

    const/16 v3, 0x4000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/kelocube/mirrorclient/Transport$Data;-><init>(Ljava/nio/ByteBuffer;I)V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->readData:Lcom/kelocube/mirrorclient/Transport$Data;

    const/4 v1, 0x2

    .line 79
    new-array v1, v1, [Lcom/kelocube/mirrorclient/Transport$Data;

    new-instance v3, Lcom/kelocube/mirrorclient/Transport$Data;

    const v5, 0x186a0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v4}, Lcom/kelocube/mirrorclient/Transport$Data;-><init>(Ljava/nio/ByteBuffer;I)V

    aput-object v3, v1, v4

    .line 80
    new-instance v3, Lcom/kelocube/mirrorclient/Transport$Data;

    const v5, 0x989680

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v4}, Lcom/kelocube/mirrorclient/Transport$Data;-><init>(Ljava/nio/ByteBuffer;I)V

    aput-object v3, v1, v2

    .line 78
    iput-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->readStreams:[Lcom/kelocube/mirrorclient/Transport$Data;

    const/16 v1, 0x2710

    .line 82
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kelocube/mirrorclient/Transport;->sendBuffer:Ljava/nio/ByteBuffer;

    .line 83
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->sendingBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :try_start_2
    iput-boolean v2, p0, Lcom/kelocube/mirrorclient/Transport;->running:Z

    .line 88
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport;->sendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Transport;->tickTimeout()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/kelocube/mirrorclient/AppException;

    const-string v2, "Failed to allocate network buffers"

    check-cast v0, Ljava/lang/Throwable;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v0, v3}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 75
    :cond_0
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected writeFinished()V
    .locals 0

    return-void
.end method
