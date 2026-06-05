.class public final Lcom/kelocube/mirrorclient/MirrorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MirrorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/MirrorActivity$Companion;,
        Lcom/kelocube/mirrorclient/MirrorActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0016H\u0014J\u0008\u0010\u001e\u001a\u00020\u0016H\u0014J\u0008\u0010\u001f\u001a\u00020\u0016H\u0014J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0012H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "client",
        "Lcom/kelocube/mirrorclient/MirrorClient;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "layout",
        "Landroid/view/ViewGroup;",
        "nsStartTime",
        "",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "dispatchKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "finishWithResult",
        "",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onStart",
        "onStop",
        "onWindowFocusChanged",
        "hasFocus",
        "showOnboarding",
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
.field public static final Companion:Lcom/kelocube/mirrorclient/MirrorActivity$Companion;

.field public static final RESULT_EXTRA_ACTIVE_TIME:Ljava/lang/String; = "active_time"

.field public static final RESULT_EXTRA_ERROR:Ljava/lang/String; = "error"

.field private static running:I


# instance fields
.field private client:Lcom/kelocube/mirrorclient/MirrorClient;

.field private final handler:Landroid/os/Handler;

.field private layout:Landroid/view/ViewGroup;

.field private nsStartTime:J

.field private onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$1NylvYeTC246ubcOBPiXqTbDs3Y(Lcom/kelocube/mirrorclient/MirrorActivity;Lcom/kelocube/mirrorclient/MirrorClient$State;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->onCreate$lambda$0(Lcom/kelocube/mirrorclient/MirrorActivity;Lcom/kelocube/mirrorclient/MirrorClient$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/MirrorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/MirrorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorActivity;->Companion:Lcom/kelocube/mirrorclient/MirrorActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/kelocube/mirrorclient/MirrorActivity;)Lcom/kelocube/mirrorclient/MirrorClient;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    return-object p0
.end method

.method public static final synthetic access$getRunning$cp()I
    .locals 1

    .line 36
    sget v0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    return v0
.end method

.method public static final synthetic access$setRunning$cp(I)V
    .locals 0

    .line 36
    sput p0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    return-void
.end method

.method private final finishWithResult()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient;->getError()Lcom/kelocube/mirrorclient/AppException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AppException;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 247
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 248
    const-string v3, "error"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 249
    iget-wide v2, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->nsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->nsStartTime:J

    sub-long v4, v2, v4

    :goto_2
    const-string v2, "active_time"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v1, v0}, Lcom/kelocube/mirrorclient/MirrorActivity;->setResult(ILandroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/kelocube/mirrorclient/MirrorActivity;Lcom/kelocube/mirrorclient/MirrorClient$State;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->finishWithResult()V

    goto :goto_1

    .line 178
    :cond_2
    iget-wide v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->nsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->finishWithResult()V

    goto :goto_1

    .line 174
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->nsStartTime:J

    .line 175
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->showOnboarding()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final showOnboarding()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient;->showOnboarding()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 282
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->handleKeyEvent(Landroid/view/KeyEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 292
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->configChanged(Landroid/content/res/Configuration;)V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->layout()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 53
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate begin"

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-lt v0, v2, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v3, v1}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->setResult(I)V

    .line 65
    new-instance p1, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$1;-><init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V

    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 71
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-nez v3, :cond_1

    const-string v3, "onBackPressedCallback"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {p1, v0, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 74
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "getDefaultSharedPreferences(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->prefs:Landroid/content/SharedPreferences;

    .line 77
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    .line 79
    new-instance v2, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;-><init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 138
    :cond_2
    new-instance v2, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;-><init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 77
    :goto_0
    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->layout:Landroid/view/ViewGroup;

    .line 162
    sget-object v2, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/TransportListener;->getClient()Lcom/kelocube/mirrorclient/MirrorClient;

    move-result-object v2

    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 164
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "error"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->finish()V

    return-void

    .line 171
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/MirrorClient;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v4, Lcom/kelocube/mirrorclient/MirrorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/MirrorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V

    invoke-virtual {v2, v0, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 195
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 196
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4

    .line 199
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    .line 203
    :cond_4
    sget-object v0, Lcom/kelocube/mirrorclient/Prefs;->Companion:Lcom/kelocube/mirrorclient/Prefs$Companion;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/Prefs$Companion;->getOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->setRequestedOrientation(I)V

    .line 205
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->layout:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    const-string p1, "layout"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/kelocube/mirrorclient/MirrorActivity;->setContentView(Landroid/view/View;)V

    .line 206
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate end"

    invoke-static {p1, v0}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 302
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/UtilKt;->enableSamsungCrap(Landroid/content/Context;Z)V

    .line 304
    sget-object v2, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kelocube/mirrorclient/TransportListener;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->layout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const-string v3, "layout"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 306
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->layout:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/kelocube/mirrorclient/MirrorClient;->startSession(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 307
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 308
    sget v0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 312
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/UtilKt;->enableSamsungCrap(Landroid/content/Context;Z)V

    .line 314
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity;->client:Lcom/kelocube/mirrorclient/MirrorClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient;->stopSession()V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->finish()V

    .line 316
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 317
    sget v0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kelocube/mirrorclient/MirrorActivity;->running:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 259
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 262
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 263
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {p1, v0}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    const/4 v0, 0x2

    .line 264
    invoke-static {p1, v0}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
