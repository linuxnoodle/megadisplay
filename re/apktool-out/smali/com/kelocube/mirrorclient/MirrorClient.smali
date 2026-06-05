.class public final Lcom/kelocube/mirrorclient/MirrorClient;
.super Ljava/lang/Object;
.source "MirrorClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;,
        Lcom/kelocube/mirrorclient/MirrorClient$DataType;,
        Lcom/kelocube/mirrorclient/MirrorClient$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003ABCB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u000cH\u0002J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020#J\u0010\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020/H\u0002J?\u00100\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00082%\u00104\u001a!\u0012\u0013\u0012\u001106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u00020#05j\u0002`:H\u0002J\u0006\u0010;\u001a\u00020#J\u0016\u0010<\u001a\u00020#2\u0006\u0010=\u001a\u00020>2\u0006\u0010,\u001a\u00020?J\u0006\u0010@\u001a\u00020#R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006D"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorClient;",
        "",
        "transport",
        "Lcom/kelocube/mirrorclient/Transport;",
        "callbacks",
        "Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;",
        "(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;)V",
        "clientVersion",
        "",
        "getClientVersion",
        "()I",
        "error",
        "Lcom/kelocube/mirrorclient/AppException;",
        "getError",
        "()Lcom/kelocube/mirrorclient/AppException;",
        "setError",
        "(Lcom/kelocube/mirrorclient/AppException;)V",
        "handler",
        "Landroid/os/Handler;",
        "hostVersion",
        "getHostVersion",
        "isRemote",
        "",
        "()Z",
        "session",
        "Lcom/kelocube/mirrorclient/MirrorSession;",
        "state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        "kotlin.jvm.PlatformType",
        "getState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getTransport",
        "()Lcom/kelocube/mirrorclient/Transport;",
        "close",
        "",
        "configChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "handleError",
        "e",
        "handleKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "layout",
        "onData",
        "data",
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "sendData",
        "type",
        "Lcom/kelocube/mirrorclient/MirrorClient$DataType;",
        "maxLength",
        "callback",
        "Lkotlin/Function1;",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "to",
        "Lcom/kelocube/mirrorclient/DataCallback;",
        "showOnboarding",
        "startSession",
        "context",
        "Landroid/content/Context;",
        "Landroid/view/ViewGroup;",
        "stopSession",
        "Callbacks",
        "DataType",
        "State",
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
.field private final callbacks:Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;

.field private final clientVersion:I

.field private error:Lcom/kelocube/mirrorclient/AppException;

.field private final handler:Landroid/os/Handler;

.field private final hostVersion:I

.field private session:Lcom/kelocube/mirrorclient/MirrorSession;

.field private final state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/kelocube/mirrorclient/MirrorClient$State;",
            ">;"
        }
    .end annotation
.end field

.field private final transport:Lcom/kelocube/mirrorclient/Transport;


# direct methods
.method public static synthetic $r8$lambda$-YaejeBtSFWkwuDAswR1NcRCvbc(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->handleError$lambda$0(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V

    return-void
.end method

.method public constructor <init>(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;)V
    .locals 1

    const-string v0, "transport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->transport:Lcom/kelocube/mirrorclient/Transport;

    .line 21
    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorClient;->callbacks:Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;

    .line 54
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->Ready:Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-direct {p2, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorClient;->state:Landroidx/lifecycle/MutableLiveData;

    .line 56
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport;->getHostVersion()I

    move-result p2

    iput p2, p0, Lcom/kelocube/mirrorclient/MirrorClient;->hostVersion:I

    .line 57
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport;->getClientVersion()I

    move-result p2

    iput p2, p0, Lcom/kelocube/mirrorclient/MirrorClient;->clientVersion:I

    .line 61
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorClient;->handler:Landroid/os/Handler;

    .line 66
    new-instance p2, Lcom/kelocube/mirrorclient/MirrorClient$1;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/MirrorClient$1;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/Transport;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 67
    new-instance p2, Lcom/kelocube/mirrorclient/MirrorClient$2;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/MirrorClient$2;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/Transport;->setOnData(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$handleError(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->handleError(Lcom/kelocube/mirrorclient/AppException;)V

    return-void
.end method

.method public static final synthetic access$onData(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->onData(Lcom/kelocube/mirrorclient/Transport$Data;)V

    return-void
.end method

.method public static final synthetic access$sendData(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/MirrorClient$DataType;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/MirrorClient;->sendData(Lcom/kelocube/mirrorclient/MirrorClient$DataType;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final handleError(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/MirrorClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/kelocube/mirrorclient/MirrorClient$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final handleError$lambda$0(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->error:Lcom/kelocube/mirrorclient/AppException;

    .line 79
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorClient;->close()V

    .line 80
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->callbacks:Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;->getOnError()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onData(Lcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 4

    .line 104
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 106
    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Error:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v1

    if-ne v0, v1, :cond_7

    .line 107
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 108
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_DRIVER_ERROR$p()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    .line 109
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_LICENSE_ERROR$p()I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 110
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_TRIAL_EXPIRED$p()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 111
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_WARN_BAD_RESOLUTION$p()I

    move-result v0

    const-string v2, "ERROR_WARN_BAD_RESOLUTION"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    const/16 v3, 0x9

    invoke-direct {v0, v2, v1, v3}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/kelocube/mirrorclient/MirrorSession;->showWarning(Lcom/kelocube/mirrorclient/AppException;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_GPU_DRIVER_ERROR$p()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 113
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_NO_ENCODER$p()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 114
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClientKt;->access$getERROR_WARN_SOFTWARE_ENCODER$p()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    const/16 v3, 0xe

    invoke-direct {v0, v2, v1, v3}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/kelocube/mirrorclient/MirrorSession;->showWarning(Lcom/kelocube/mirrorclient/AppException;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "Unknown host error"

    const/16 v2, 0xa

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 113
    :cond_2
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "ERROR_NO_ENCODER"

    const/16 v2, 0xd

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 112
    :cond_3
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "ERROR_GPU_DRIVER_ERROR"

    const/16 v2, 0xc

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "ERROR_TRIAL_EXPIRED"

    const/4 v2, 0x7

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 109
    :cond_5
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "ERROR_LICENSE_ERROR"

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 108
    :cond_6
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v0, "ERROR_DRIVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 118
    :cond_7
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0, p1}, Lcom/kelocube/mirrorclient/MirrorSession;->onData(BLcom/kelocube/mirrorclient/Transport$Data;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private final sendData(Lcom/kelocube/mirrorclient/MirrorClient$DataType;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kelocube/mirrorclient/MirrorClient$DataType;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->transport:Lcom/kelocube/mirrorclient/Transport;

    add-int/lit8 p2, p2, 0x1

    new-instance v1, Lcom/kelocube/mirrorclient/MirrorClient$sendData$1;

    invoke-direct {v1, p1, p3}, Lcom/kelocube/mirrorclient/MirrorClient$sendData$1;-><init>(Lcom/kelocube/mirrorclient/MirrorClient$DataType;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p2, v1}, Lcom/kelocube/mirrorclient/Transport;->send(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorClient;->stopSession()V

    .line 72
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->transport:Lcom/kelocube/mirrorclient/Transport;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport;->close()V

    .line 73
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final configChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/MirrorSession;->configChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final getClientVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->clientVersion:I

    return v0
.end method

.method public final getError()Lcom/kelocube/mirrorclient/AppException;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->error:Lcom/kelocube/mirrorclient/AppException;

    return-object v0
.end method

.method public final getHostVersion()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->hostVersion:I

    return v0
.end method

.method public final getState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/kelocube/mirrorclient/MirrorClient$State;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->state:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTransport()Lcom/kelocube/mirrorclient/Transport;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->transport:Lcom/kelocube/mirrorclient/Transport;

    return-object v0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/MirrorSession;->handleKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public final isRemote()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->transport:Lcom/kelocube/mirrorclient/Transport;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport;->isRemote()Z

    move-result v0

    return v0
.end method

.method public final layout()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession;->layout()V

    :cond_0
    return-void
.end method

.method public final setError(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorClient;->error:Lcom/kelocube/mirrorclient/AppException;

    return-void
.end method

.method public final showOnboarding()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession;->showOnboarding()V

    :cond_0
    return-void
.end method

.method public final startSession(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorSession;

    new-instance v1, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    .line 87
    new-instance v2, Lcom/kelocube/mirrorclient/MirrorClient$startSession$1;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/MirrorClient$startSession$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 86
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorClient$startSession$2;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorClient$startSession$2;-><init>(Lcom/kelocube/mirrorclient/MirrorClient;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 89
    new-instance v4, Lcom/kelocube/mirrorclient/MirrorClient$startSession$3;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/MirrorClient$startSession$3;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 86
    invoke-direct {v1, v2, v3, v4}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/kelocube/mirrorclient/MirrorSession;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    :cond_0
    return-void
.end method

.method public final stopSession()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Ready:Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient;->session:Lcom/kelocube/mirrorclient/MirrorSession;

    :cond_1
    return-void
.end method
