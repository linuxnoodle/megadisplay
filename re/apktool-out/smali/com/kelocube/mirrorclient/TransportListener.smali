.class public final Lcom/kelocube/mirrorclient/TransportListener;
.super Ljava/lang/Object;
.source "TransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/TransportListener$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransportListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransportListener.kt\ncom/kelocube/mirrorclient/TransportListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n1#2:256\n1002#3,2:257\n*S KotlinDebug\n*F\n+ 1 TransportListener.kt\ncom/kelocube/mirrorclient/TransportListener\n*L\n184#1:257,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u00018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u00101\u001a\u000202J\u0010\u00103\u001a\u0002022\u0008\u00104\u001a\u0004\u0018\u000105J\u0008\u00106\u001a\u000202H\u0002J\u0006\u00107\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\r\"\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001f\u0010&\u001a\u0010\u0012\u000c\u0012\n (*\u0004\u0018\u00010\n0\n0\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010)R\u000e\u0010*\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001f\u0010,\u001a\u0010\u0012\u000c\u0012\n (*\u0004\u0018\u00010\u00160\u00160\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010)R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/TransportListener;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "aoap",
        "Lcom/kelocube/mirrorclient/AOAPTransportListener;",
        "batteryState",
        "",
        "<set-?>",
        "",
        "canAutoConnectUSB",
        "getCanAutoConnectUSB",
        "()Z",
        "value",
        "Lcom/kelocube/mirrorclient/MirrorClient;",
        "client",
        "getClient",
        "()Lcom/kelocube/mirrorclient/MirrorClient;",
        "setClient",
        "(Lcom/kelocube/mirrorclient/MirrorClient;)V",
        "clientReadyState",
        "Lcom/kelocube/mirrorclient/TransportListener$State;",
        "clientStateObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        "getClientStateObserver",
        "()Landroidx/lifecycle/Observer;",
        "clients",
        "",
        "enabled",
        "getEnabled",
        "setEnabled",
        "(Z)V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "isSessionActive",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isUSBConnected",
        "lastState",
        "state",
        "getState",
        "tcp",
        "Lcom/kelocube/mirrorclient/TCPTransportListener;",
        "usbDisconnectEvent",
        "close",
        "",
        "openIntent",
        "intent",
        "Landroid/content/Intent;",
        "update",
        "useAutoConnectUSB",
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
.field private final aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

.field private batteryState:I

.field private canAutoConnectUSB:Z

.field private client:Lcom/kelocube/mirrorclient/MirrorClient;

.field private clientReadyState:Lcom/kelocube/mirrorclient/TransportListener$State;

.field private final clientStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/kelocube/mirrorclient/MirrorClient$State;",
            ">;"
        }
    .end annotation
.end field

.field private clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kelocube/mirrorclient/MirrorClient;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private final handler:Landroid/os/Handler;

.field private final isSessionActive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isUSBConnected:Z

.field private lastState:Lcom/kelocube/mirrorclient/TransportListener$State;

.field private final state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/kelocube/mirrorclient/TransportListener$State;",
            ">;"
        }
    .end annotation
.end field

.field private final tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

.field private usbDisconnectEvent:I


# direct methods
.method public static synthetic $r8$lambda$8g_JacWzPPsILfkkW8EW0eE_9Ic(ILcom/kelocube/mirrorclient/TransportListener;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/TransportListener;->update$lambda$4(ILcom/kelocube/mirrorclient/TransportListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->handler:Landroid/os/Handler;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->NoCable:Lcom/kelocube/mirrorclient/TransportListener$State;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    .line 38
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->lastState:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 47
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientStateObserver:Landroidx/lifecycle/Observer;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clients:Ljava/util/List;

    .line 55
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientReadyState:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 62
    new-instance v0, Lcom/kelocube/mirrorclient/TCPTransportListener;

    new-instance v1, Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    .line 63
    new-instance v2, Lcom/kelocube/mirrorclient/TransportListener$tcp$1;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/TransportListener$tcp$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 62
    invoke-direct {v1, v2}, Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/TCPTransportListener;-><init>(Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

    .line 65
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPTransportListener;

    new-instance v1, Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    .line 66
    new-instance v2, Lcom/kelocube/mirrorclient/TransportListener$aoap$1;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/TransportListener$aoap$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 65
    invoke-direct {v1, v2}, Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1, p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    .line 76
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->isSessionActive:Landroidx/lifecycle/MutableLiveData;

    .line 81
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/TransportListener;->update()V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    const/16 v4, 0x21

    if-lt v1, v4, :cond_0

    .line 84
    new-instance v1, Lcom/kelocube/mirrorclient/TransportListener$1;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/TransportListener$1;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p1, v1, v5, v2}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Lcom/kelocube/mirrorclient/TransportListener$2;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/TransportListener$2;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    :goto_0
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getHaveAccessory()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/kelocube/mirrorclient/TransportListener$3;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/TransportListener$3;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/kelocube/mirrorclient/TransportListenerKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v1}, Lcom/kelocube/mirrorclient/TransportListenerKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.net.wifi.STATE_CHANGE"

    if-lt v0, v4, :cond_1

    .line 119
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$4;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/TransportListener$4;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    invoke-static {p1, v0, v3, v2}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 130
    :cond_1
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$6;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/TransportListener$6;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 130
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method public static final synthetic access$getClients$p(Lcom/kelocube/mirrorclient/TransportListener;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clients:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setBatteryState$p(Lcom/kelocube/mirrorclient/TransportListener;I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/kelocube/mirrorclient/TransportListener;->batteryState:I

    return-void
.end method

.method public static final synthetic access$update(Lcom/kelocube/mirrorclient/TransportListener;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/TransportListener;->update()V

    return-void
.end method

.method private final setClient(Lcom/kelocube/mirrorclient/MirrorClient;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method private final update()V
    .locals 6

    .line 154
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Updating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->takeTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->takeTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    if-nez v0, :cond_10

    .line 184
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clients:Ljava/util/List;

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    new-instance v2, Lcom/kelocube/mirrorclient/TransportListener$update$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/kelocube/mirrorclient/TransportListener$update$$inlined$sortBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clients:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kelocube/mirrorclient/MirrorClient;

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/TransportListener;->setClient(Lcom/kelocube/mirrorclient/MirrorClient;)V

    .line 191
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_2

    .line 192
    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient;->isRemote()Z

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->ReadyWifi:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

    :goto_1
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getError()Lcom/kelocube/mirrorclient/AppException;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getError()Lcom/kelocube/mirrorclient/AppException;

    move-result-object v0

    :cond_3
    const/4 v2, 0x2

    if-eqz v0, :cond_7

    .line 197
    iget-object v3, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AppException;->getType()I

    move-result v4

    if-eq v4, v2, :cond_6

    const/4 v2, 0x3

    if-eq v4, v2, :cond_5

    const/4 v2, 0x4

    if-eq v4, v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AppException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Error:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_2

    .line 200
    :cond_4
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->AOAPDenied:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_2

    .line 199
    :cond_5
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateClient:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_2

    .line 198
    :cond_6
    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateHost:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 197
    :goto_2
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 206
    :cond_7
    iget v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->batteryState:I

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_3

    .line 217
    :cond_8
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/kelocube/mirrorclient/TransportListener$State;->NoCable:Lcom/kelocube/mirrorclient/TransportListener$State;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 208
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getHaveAccessory()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 209
    sget-object v2, Lcom/kelocube/mirrorclient/TransportListener$State;->WaitingAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_4

    .line 210
    :cond_a
    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getSupported()Z

    move-result v2

    if-nez v2, :cond_b

    .line 211
    sget-object v2, Lcom/kelocube/mirrorclient/TransportListener$State;->NoAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_4

    .line 213
    :cond_b
    sget-object v2, Lcom/kelocube/mirrorclient/TransportListener$State;->Waiting:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 208
    :goto_4
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 222
    :goto_5
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->lastState:Lcom/kelocube/mirrorclient/TransportListener$State;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_c

    .line 223
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "State: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->lastState:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 232
    :cond_c
    iget v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->batteryState:I

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    .line 233
    :goto_6
    iget-boolean v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->isUSBConnected:Z

    if-eq v2, v0, :cond_f

    .line 234
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->isUSBConnected:Z

    .line 235
    iget v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->usbDisconnectEvent:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kelocube/mirrorclient/TransportListener;->usbDisconnectEvent:I

    if-eqz v0, :cond_e

    const-wide/16 v3, 0x7d0

    goto :goto_7

    :cond_e
    const-wide/16 v3, 0x1f4

    .line 237
    :goto_7
    iget-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p0, v0}, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;-><init>(ILcom/kelocube/mirrorclient/TransportListener;Z)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void

    .line 160
    :cond_10
    instance-of v2, v0, Lcom/kelocube/mirrorclient/TCPTransport;

    if-eqz v2, :cond_11

    move-object v2, v0

    check-cast v2, Lcom/kelocube/mirrorclient/TCPTransport;

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/TCPTransport;->isRemote()Z

    move-result v2

    if-ne v2, v1, :cond_12

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->ReadyWifi:Lcom/kelocube/mirrorclient/TransportListener$State;

    goto :goto_9

    :cond_12
    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

    :goto_9
    iput-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientReadyState:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 161
    iget-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->clients:Ljava/util/List;

    new-instance v2, Lcom/kelocube/mirrorclient/MirrorClient;

    new-instance v3, Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;

    new-instance v4, Lcom/kelocube/mirrorclient/TransportListener$update$1;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/TransportListener$update$1;-><init>(Lcom/kelocube/mirrorclient/TransportListener;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v4}, Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {v2, v0, v3}, Lcom/kelocube/mirrorclient/MirrorClient;-><init>(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static final update$lambda$4(ILcom/kelocube/mirrorclient/TransportListener;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget v0, p1, Lcom/kelocube/mirrorclient/TransportListener;->usbDisconnectEvent:I

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_0

    .line 240
    invoke-static {p1}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "USB connected"

    invoke-static {p0, p2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p0, p1, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->startPolling()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "USB disconnected"

    invoke-static {p0, p2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 247
    iput-boolean p0, p1, Lcom/kelocube/mirrorclient/TransportListener;->canAutoConnectUSB:Z

    .line 248
    iget-object p0, p1, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->reset()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/TransportListener;->setClient(Lcom/kelocube/mirrorclient/MirrorClient;)V

    .line 145
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->close()V

    .line 146
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->close()V

    return-void
.end method

.method public final getCanAutoConnectUSB()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->canAutoConnectUSB:Z

    return v0
.end method

.method public final getClient()Lcom/kelocube/mirrorclient/MirrorClient;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    return-object v0
.end method

.method public final getClientStateObserver()Landroidx/lifecycle/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/Observer<",
            "Lcom/kelocube/mirrorclient/MirrorClient$State;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->clientStateObserver:Landroidx/lifecycle/Observer;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->enabled:Z

    return v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/kelocube/mirrorclient/TransportListener$State;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->state:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isSessionActive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->isSessionActive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final openIntent(Landroid/content/Intent;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->openFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->tcp:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->aoap:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->setEnabled(Z)V

    .line 73
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/TransportListener;->enabled:Z

    return-void
.end method

.method public final useAutoConnectUSB()Z
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/TransportListener;->canAutoConnectUSB:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/TransportListener;->canAutoConnectUSB:Z

    return v0
.end method
