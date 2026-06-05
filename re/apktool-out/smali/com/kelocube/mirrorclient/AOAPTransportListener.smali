.class public final Lcom/kelocube/mirrorclient/AOAPTransportListener;
.super Ljava/lang/Object;
.source "AOAPTransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAOAPTransportListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AOAPTransportListener.kt\ncom/kelocube/mirrorclient/AOAPTransportListener\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,238:1\n13309#2,2:239\n*S KotlinDebug\n*F\n+ 1 AOAPTransportListener.kt\ncom/kelocube/mirrorclient/AOAPTransportListener\n*L\n149#1:239,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001BB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u00104\u001a\u000205J\u0010\u00106\u001a\u0002052\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002052\u0008\u0010:\u001a\u0004\u0018\u00010;J\u0006\u0010<\u001a\u000205J\u0006\u0010=\u001a\u000205J\u0008\u0010>\u001a\u0004\u0018\u00010?J\u0008\u0010@\u001a\u000205H\u0002J\u0008\u0010A\u001a\u000205H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0018\u001a\u0010\u0012\u000c\u0012\n \u001a*\u0004\u0018\u00010\n0\n0\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n \u001a*\u0004\u0018\u00010!0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\rR\u000e\u0010,\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u000e\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/AOAPTransportListener;",
        "",
        "callbacks",
        "Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;",
        "context",
        "Landroid/content/Context;",
        "(Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;Landroid/content/Context;)V",
        "connectingTransport",
        "Lcom/kelocube/mirrorclient/AOAPTransport;",
        "value",
        "",
        "enabled",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "error",
        "Lcom/kelocube/mirrorclient/AppException;",
        "getError",
        "()Lcom/kelocube/mirrorclient/AppException;",
        "setError",
        "(Lcom/kelocube/mirrorclient/AppException;)V",
        "handler",
        "Landroid/os/Handler;",
        "haveAccessory",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "getHaveAccessory",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setHaveAccessory",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "havePermission",
        "permIntent",
        "Landroid/app/PendingIntent;",
        "pipe",
        "Lcom/kelocube/mirrorclient/AOAPPipe;",
        "getPipe",
        "()Lcom/kelocube/mirrorclient/AOAPPipe;",
        "setPipe",
        "(Lcom/kelocube/mirrorclient/AOAPPipe;)V",
        "polling",
        "requested",
        "supported",
        "getSupported",
        "ticking",
        "transport",
        "getTransport",
        "()Lcom/kelocube/mirrorclient/AOAPTransport;",
        "setTransport",
        "(Lcom/kelocube/mirrorclient/AOAPTransport;)V",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "close",
        "",
        "openAccessory",
        "accessory",
        "Landroid/hardware/usb/UsbAccessory;",
        "openFromIntent",
        "intent",
        "Landroid/content/Intent;",
        "reset",
        "startPolling",
        "takeTransport",
        "Lcom/kelocube/mirrorclient/Transport;",
        "tick",
        "tryConnect",
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
.field private final callbacks:Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

.field private connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private error:Lcom/kelocube/mirrorclient/AppException;

.field private final handler:Landroid/os/Handler;

.field private haveAccessory:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private havePermission:Z

.field private final permIntent:Landroid/app/PendingIntent;

.field private pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

.field private polling:Z

.field private requested:Z

.field private final supported:Z

.field private ticking:Z

.field private transport:Lcom/kelocube/mirrorclient/AOAPTransport;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public static synthetic $r8$lambda$ZwtskqvhHy6sPhnmWjQ0oRwtjHQ(Lcom/kelocube/mirrorclient/AOAPTransportListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->tick()V

    return-void
.end method

.method public constructor <init>(Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;Landroid/content/Context;)V
    .locals 4

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->callbacks:Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.usb.accessory"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->supported:Z

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->handler:Landroid/os/Handler;

    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->haveAccessory:Landroidx/lifecycle/MutableLiveData;

    .line 50
    const-string p1, "usb"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 51
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.example.USB_PERMISSION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-static {p2, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->permIntent:Landroid/app/PendingIntent;

    .line 163
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    if-lt v0, v2, :cond_0

    .line 166
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPTransportListener$1;

    invoke-direct {v0, p1, p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$1;-><init>(Ljava/lang/String;Lcom/kelocube/mirrorclient/AOAPTransportListener;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 183
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 166
    invoke-static {p2, v0, p1, v1}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 185
    new-instance p1, Lcom/kelocube/mirrorclient/AOAPTransportListener$2;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$2;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {p2, p1, v0, v1}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;

    invoke-direct {v0, p1, p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;-><init>(Ljava/lang/String;Lcom/kelocube/mirrorclient/AOAPTransportListener;)V

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 211
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance p1, Lcom/kelocube/mirrorclient/AOAPTransportListener$4;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$4;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->tick()V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->callbacks:Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    return-object p0
.end method

.method public static final synthetic access$getConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransport;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    return-object p0
.end method

.method public static final synthetic access$setConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    return-void
.end method

.method private final openAccessory(Landroid/hardware/usb/UsbAccessory;)V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->reset()V

    .line 85
    :try_start_0
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPPipe;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    const-string v1, "openAccessory(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/kelocube/mirrorclient/AOAPPipe;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    .line 86
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->context:Landroid/content/Context;

    const-string v0, "OPEN ACCESSORY"

    invoke-static {p1, v0}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "AOAP open SecurityException"

    invoke-direct {v0, v3, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    .line 89
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->tryConnect()V

    return-void
.end method

.method private final tick()V
    .locals 4

    .line 227
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->polling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->openFromIntent(Landroid/content/Intent;)V

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->tryConnect()V

    .line 233
    :cond_1
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/AOAPTransportListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->ticking:Z

    return-void
.end method

.method private final tryConnect()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    :cond_0
    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    .line 102
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPPipe;->getInUse()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Opening new"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-direct {v1, v0}, Lcom/kelocube/mirrorclient/AOAPTransport;-><init>(Lcom/kelocube/mirrorclient/AOAPPipe;)V

    .line 105
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;

    invoke-direct {v0, p0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->setOnReady(Lkotlin/jvm/functions/Function0;)V

    .line 122
    new-instance v0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$2;

    invoke-direct {v0, p0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$2;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 132
    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/AOAPTransport;->start()V

    .line 104
    iput-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    :cond_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    :cond_1
    return-void
.end method

.method public final getEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    return v0
.end method

.method public final getError()Lcom/kelocube/mirrorclient/AppException;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    return-object v0
.end method

.method public final getHaveAccessory()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->haveAccessory:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPipe()Lcom/kelocube/mirrorclient/AOAPPipe;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    return-object v0
.end method

.method public final getSupported()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->supported:Z

    return v0
.end method

.method public final getTransport()Lcom/kelocube/mirrorclient/AOAPTransport;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    return-object v0
.end method

.method public final openFromIntent(Landroid/content/Intent;)V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    const-string v0, "accessory"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_0

    .line 141
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Intent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->havePermission:Z

    .line 143
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->openAccessory(Landroid/hardware/usb/UsbAccessory;)V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    if-nez p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 239
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 150
    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Android"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getModel(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "superDisplay"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SuperDisplay"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->havePermission:Z

    if-eqz v4, :cond_3

    .line 152
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->openAccessory(Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_2

    .line 153
    :cond_3
    iget-boolean v4, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->requested:Z

    if-nez v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->permIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v3, v5}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 155
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->requested:Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    .line 71
    iget-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    .line 72
    :cond_1
    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    .line 73
    iget-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    if-eqz v1, :cond_2

    .line 74
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CLOSE ACCESSORY"

    invoke-static {v1, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/AOAPPipe;->close()V

    .line 76
    :cond_3
    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    .line 77
    iput-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->requested:Z

    .line 79
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->polling:Z

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->enabled:Z

    if-eqz p1, :cond_0

    .line 32
    iget-boolean p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->ticking:Z

    if-nez p1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->tick()V

    :cond_0
    return-void
.end method

.method public final setError(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->error:Lcom/kelocube/mirrorclient/AppException;

    return-void
.end method

.method public final setHaveAccessory(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->haveAccessory:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPipe(Lcom/kelocube/mirrorclient/AOAPPipe;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->pipe:Lcom/kelocube/mirrorclient/AOAPPipe;

    return-void
.end method

.method public final setTransport(Lcom/kelocube/mirrorclient/AOAPTransport;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    return-void
.end method

.method public final startPolling()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->polling:Z

    return-void
.end method

.method public final takeTransport()Lcom/kelocube/mirrorclient/Transport;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener;->transport:Lcom/kelocube/mirrorclient/AOAPTransport;

    .line 54
    check-cast v0, Lcom/kelocube/mirrorclient/Transport;

    return-object v0
.end method
