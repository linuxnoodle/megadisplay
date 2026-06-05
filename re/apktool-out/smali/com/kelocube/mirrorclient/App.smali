.class public final Lcom/kelocube/mirrorclient/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/App$AppType;,
        Lcom/kelocube/mirrorclient/App$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0017J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020!H\u0003J\u0008\u0010#\u001a\u00020!H\u0003J\u0008\u0010$\u001a\u00020!H\u0016J\u0008\u0010%\u001a\u00020!H\u0002J\u0008\u0010&\u001a\u00020!H\u0002R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0012@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0018@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/App;",
        "Landroidx/multidex/MultiDexApplication;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "()V",
        "<set-?>",
        "Lcom/kelocube/mirrorclient/Billing;",
        "billing",
        "getBilling",
        "()Lcom/kelocube/mirrorclient/Billing;",
        "Lcom/kelocube/mirrorclient/Diagnostics;",
        "diagnostics",
        "getDiagnostics",
        "()Lcom/kelocube/mirrorclient/Diagnostics;",
        "isActive",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Lcom/kelocube/mirrorclient/TransportListener;",
        "listener",
        "getListener",
        "()Lcom/kelocube/mirrorclient/TransportListener;",
        "startTime",
        "",
        "",
        "userId",
        "getUserId",
        "()Ljava/lang/String;",
        "getTestId",
        "",
        "isResuming",
        "activityStartTime",
        "onCreate",
        "",
        "onStart",
        "onStop",
        "onTerminate",
        "requestPermission",
        "runFgServiceWhenNecessary",
        "AppType",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kelocube/mirrorclient/App$Companion;

.field public static instance:Lcom/kelocube/mirrorclient/App;

.field private static final type:Lcom/kelocube/mirrorclient/App$AppType;


# instance fields
.field private billing:Lcom/kelocube/mirrorclient/Billing;

.field private diagnostics:Lcom/kelocube/mirrorclient/Diagnostics;

.field private final isActive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/kelocube/mirrorclient/TransportListener;

.field private startTime:J

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/App$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    .line 27
    sget-object v0, Lcom/kelocube/mirrorclient/App$AppType;->Superbrush:Lcom/kelocube/mirrorclient/App$AppType;

    .line 26
    sput-object v0, Lcom/kelocube/mirrorclient/App;->type:Lcom/kelocube/mirrorclient/App$AppType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getType$cp()Lcom/kelocube/mirrorclient/App$AppType;
    .locals 1

    .line 18
    sget-object v0, Lcom/kelocube/mirrorclient/App;->type:Lcom/kelocube/mirrorclient/App$AppType;

    return-object v0
.end method

.method public static final synthetic access$requestPermission(Lcom/kelocube/mirrorclient/App;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/App;->requestPermission()V

    return-void
.end method

.method private final onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kelocube/mirrorclient/App;->startTime:J

    .line 71
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final requestPermission()V
    .locals 3

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "REQUEST_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v1, "permission"

    const-string v2, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/App;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final runFgServiceWhenNecessary()V
    .locals 3

    .line 89
    new-instance v0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;-><init>(Lcom/kelocube/mirrorclient/App;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 116
    iget-object v1, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$1;

    invoke-direct {v2, v0}, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/kelocube/mirrorclient/AppKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, v2}, Lcom/kelocube/mirrorclient/AppKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public final getBilling()Lcom/kelocube/mirrorclient/Billing;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->billing:Lcom/kelocube/mirrorclient/Billing;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "billing"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDiagnostics()Lcom/kelocube/mirrorclient/Diagnostics;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->diagnostics:Lcom/kelocube/mirrorclient/Diagnostics;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "diagnostics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListener()Lcom/kelocube/mirrorclient/TransportListener;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->listener:Lcom/kelocube/mirrorclient/TransportListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTestId()I
    .locals 3

    .line 86
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "test_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isActive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isResuming(J)Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App;->isActive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kelocube/mirrorclient/App;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreate()V
    .locals 4

    .line 45
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 47
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 50
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/App;->userId:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/kelocube/mirrorclient/Diagnostics;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/kelocube/mirrorclient/Diagnostics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/App;->diagnostics:Lcom/kelocube/mirrorclient/Diagnostics;

    .line 53
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/TransportListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/App;->listener:Lcom/kelocube/mirrorclient/TransportListener;

    .line 54
    new-instance v0, Lcom/kelocube/mirrorclient/Billing;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/Billing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/App;->billing:Lcom/kelocube/mirrorclient/Billing;

    .line 56
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/App;->runFgServiceWhenNecessary()V

    .line 58
    sget-object v0, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v0, p0}, Lcom/kelocube/mirrorclient/App$Companion;->setInstance(Lcom/kelocube/mirrorclient/App;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TransportListener;->close()V

    .line 64
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onTerminate()V

    return-void
.end method
