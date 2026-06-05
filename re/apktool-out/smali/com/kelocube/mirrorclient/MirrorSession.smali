.class public final Lcom/kelocube/mirrorclient/MirrorSession;
.super Ljava/lang/Object;
.source "MirrorSession.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;,
        Lcom/kelocube/mirrorclient/MirrorSession$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMirrorSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MirrorSession.kt\ncom/kelocube/mirrorclient/MirrorSession\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,360:1\n362#2,4:361\n*S KotlinDebug\n*F\n+ 1 MirrorSession.kt\ncom/kelocube/mirrorclient/MirrorSession\n*L\n345#1:361,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0002:;B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010 \u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0006\u0010\"\u001a\u00020\u000fJ\u000e\u0010#\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020$J\u000e\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'J\u0006\u0010(\u001a\u00020\u000fJ\u0018\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\nH\u0002J\u0016\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J\u0008\u00102\u001a\u00020\u000fH\u0002J\u0008\u00103\u001a\u00020\u000fH\u0002J\u0008\u00104\u001a\u00020\u000fH\u0002J\u0006\u00105\u001a\u00020\u000fJ\u000e\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\u0008\u00109\u001a\u00020\u000fH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorSession;",
        "",
        "context",
        "Landroid/content/Context;",
        "parentView",
        "Landroid/view/ViewGroup;",
        "callbacks",
        "Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;",
        "(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;)V",
        "alive",
        "",
        "config",
        "Lcom/kelocube/mirrorclient/MirrorSession$Config;",
        "configCallback",
        "Lkotlin/Function0;",
        "",
        "handler",
        "Landroid/os/Handler;",
        "haveFirstFrame",
        "input",
        "Lcom/kelocube/mirrorclient/Input;",
        "menu",
        "Lcom/kelocube/mirrorclient/ActionMenu;",
        "newConfig",
        "noVideoHint",
        "Lcom/kelocube/mirrorclient/NoVideoHint;",
        "pointer",
        "Lcom/kelocube/mirrorclient/Pointer;",
        "startRequested",
        "video",
        "Lcom/kelocube/mirrorclient/VideoStream;",
        "videoConfigured",
        "beginConfigure",
        "callback",
        "close",
        "configChanged",
        "Landroid/content/res/Configuration;",
        "handleKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "layout",
        "onCropChanged",
        "crop",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;",
        "target",
        "onData",
        "type",
        "",
        "data",
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "onFrameDone",
        "sendStart",
        "sendStop",
        "showOnboarding",
        "showWarning",
        "e",
        "Lcom/kelocube/mirrorclient/AppException;",
        "tryEndConfigure",
        "Callbacks",
        "Config",
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
.field private alive:Z

.field private final callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

.field private config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

.field private configCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private haveFirstFrame:Z

.field private final input:Lcom/kelocube/mirrorclient/Input;

.field private menu:Lcom/kelocube/mirrorclient/ActionMenu;

.field private newConfig:Lcom/kelocube/mirrorclient/MirrorSession$Config;

.field private final noVideoHint:Lcom/kelocube/mirrorclient/NoVideoHint;

.field private final parentView:Landroid/view/ViewGroup;

.field private final pointer:Lcom/kelocube/mirrorclient/Pointer;

.field private startRequested:Z

.field private video:Lcom/kelocube/mirrorclient/VideoStream;

.field private videoConfigured:Z


# direct methods
.method public static synthetic $r8$lambda$zo8Am-dHWRsyPAQVoERYf4Cg6lo(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/MirrorSession;->showWarning$lambda$4(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->alive:Z

    .line 43
    new-instance v1, Lcom/kelocube/mirrorclient/Pointer;

    invoke-direct {v1, p1}, Lcom/kelocube/mirrorclient/Pointer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    .line 46
    new-instance v2, Lcom/kelocube/mirrorclient/NoVideoHint;

    invoke-direct {v2, p2}, Lcom/kelocube/mirrorclient/NoVideoHint;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->noVideoHint:Lcom/kelocube/mirrorclient/NoVideoHint;

    .line 57
    new-instance v2, Lcom/kelocube/mirrorclient/Input;

    .line 63
    new-instance v10, Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$1;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$1;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 65
    new-instance v4, Lcom/kelocube/mirrorclient/MirrorSession$2;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/MirrorSession$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 63
    invoke-direct {v10, v3, v4}, Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 67
    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 57
    new-instance v11, Lcom/kelocube/mirrorclient/Input$Callbacks;

    .line 58
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$3;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$3;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 59
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$4;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$4;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 61
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$5;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$5;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 60
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$6;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$6;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 62
    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$7;

    invoke-direct {v3, p0}, Lcom/kelocube/mirrorclient/MirrorSession$7;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v3, v11

    .line 57
    invoke-direct/range {v3 .. v10}, Lcom/kelocube/mirrorclient/Input$Callbacks;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V

    invoke-direct {v2, p1, v11}, Lcom/kelocube/mirrorclient/Input;-><init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/Input$Callbacks;)V

    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    .line 70
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "session_menu_show"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/kelocube/mirrorclient/ActionMenu;

    new-instance v3, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    .line 76
    new-instance v4, Lcom/kelocube/mirrorclient/MirrorSession$8;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/MirrorSession$8;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    new-instance v5, Lcom/kelocube/mirrorclient/MirrorSession$9;

    invoke-direct {v5, p0}, Lcom/kelocube/mirrorclient/MirrorSession$9;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v6, Lcom/kelocube/mirrorclient/MirrorSession$10;

    invoke-direct {v6, p0}, Lcom/kelocube/mirrorclient/MirrorSession$10;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    new-instance v7, Lcom/kelocube/mirrorclient/MirrorSession$11;

    invoke-direct {v7, p0}, Lcom/kelocube/mirrorclient/MirrorSession$11;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 71
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    invoke-direct {v0, p1, v3}, Lcom/kelocube/mirrorclient/ActionMenu;-><init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/kelocube/mirrorclient/ActionMenu;->inflate(Landroid/view/ViewGroup;)V

    .line 71
    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    .line 81
    :cond_0
    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kelocube/mirrorclient/Pointer;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 83
    invoke-virtual {v1, p2}, Lcom/kelocube/mirrorclient/Pointer;->inflate(Landroid/view/ViewGroup;)V

    .line 84
    check-cast p2, Landroid/view/View;

    invoke-virtual {v2, p2}, Lcom/kelocube/mirrorclient/Input;->inflate(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$beginConfigure(Lcom/kelocube/mirrorclient/MirrorSession;Lcom/kelocube/mirrorclient/MirrorSession$Config;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/MirrorSession;->beginConfigure(Lcom/kelocube/mirrorclient/MirrorSession$Config;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getAlive$p(Lcom/kelocube/mirrorclient/MirrorSession;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->alive:Z

    return p0
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/kelocube/mirrorclient/MirrorSession;)Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    return-object p0
.end method

.method public static final synthetic access$getInput$p(Lcom/kelocube/mirrorclient/MirrorSession;)Lcom/kelocube/mirrorclient/Input;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    return-object p0
.end method

.method public static final synthetic access$getMenu$p(Lcom/kelocube/mirrorclient/MirrorSession;)Lcom/kelocube/mirrorclient/ActionMenu;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    return-object p0
.end method

.method public static final synthetic access$onCropChanged(Lcom/kelocube/mirrorclient/MirrorSession;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/MirrorSession;->onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V

    return-void
.end method

.method public static final synthetic access$onFrameDone(Lcom/kelocube/mirrorclient/MirrorSession;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->onFrameDone()V

    return-void
.end method

.method private final beginConfigure(Lcom/kelocube/mirrorclient/MirrorSession$Config;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kelocube/mirrorclient/MirrorSession$Config;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Begin configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->newConfig:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->videoConfigured:Z

    .line 113
    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->configCallback:Lkotlin/jvm/functions/Function0;

    .line 114
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->tryEndConfigure()V

    return-void
.end method

.method private final onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/kelocube/mirrorclient/ActionMenu;->saveCrop(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    invoke-virtual {p2, p1}, Lcom/kelocube/mirrorclient/Pointer;->onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final onFrameDone()V
    .locals 5

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->haveFirstFrame:Z

    .line 161
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->tryEndConfigure()V

    .line 162
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnData()Lkotlin/jvm/functions/Function3;

    move-result-object v1

    sget-object v2, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->FrameDone:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/kelocube/mirrorclient/MirrorSession$onFrameDone$1$1;

    invoke-direct {v4, v0}, Lcom/kelocube/mirrorclient/MirrorSession$onFrameDone$1$1;-><init>(Lcom/kelocube/mirrorclient/MirrorSession$Config;)V

    invoke-interface {v1, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final sendStart()V
    .locals 19

    move-object/from16 v0, p0

    .line 170
    iget-boolean v1, v0, Lcom/kelocube/mirrorclient/MirrorSession;->startRequested:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-static/range {p0 .. p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Session already requested"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 175
    iput-boolean v1, v0, Lcom/kelocube/mirrorclient/MirrorSession;->startRequested:Z

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Requesting session"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, v0, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 179
    const-string v3, "quality"

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-int v9, v3

    .line 180
    const-string v3, "sampling"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 181
    :goto_0
    const-string v3, "framerate"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v12, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x3c

    const/16 v12, 0x3c

    .line 182
    :goto_1
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v0, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/UtilKt;->getLandscapeResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 186
    :try_start_0
    const-string v3, "resolution"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v3

    check-cast v13, Ljava/lang/CharSequence;

    new-array v14, v1, [Ljava/lang/String;

    const-string v3, ","

    aput-object v3, v14, v6

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 187
    new-instance v11, Landroid/graphics/Point;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v11, v13, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 189
    :catchall_0
    new-instance v11, Landroid/graphics/Point;

    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorSessionKt;->access$getOUT_RES_SCALE_TO_SOURCE$p()I

    move-result v3

    invoke-direct {v11, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 183
    :goto_2
    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    sget-object v3, Lcom/kelocube/mirrorclient/Prefs;->Companion:Lcom/kelocube/mirrorclient/Prefs$Companion;

    iget-object v11, v0, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/kelocube/mirrorclient/Prefs$Companion;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    new-instance v3, Landroid/graphics/Point;

    iget-object v11, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v13, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-direct {v3, v11, v13}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 199
    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_3

    .line 200
    new-instance v3, Landroid/graphics/Point;

    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v13, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    invoke-direct {v3, v11, v13}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 203
    :cond_3
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 204
    const-string v3, "pref_force_software_encoder"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorSessionKt;->access$getFLAG_SOFTWARE_ENCODING$p()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 208
    :cond_4
    sget-object v2, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/App;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 209
    sget-object v3, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/App;->getBilling()Lcom/kelocube/mirrorclient/Billing;

    move-result-object v3

    invoke-static {v3, v6, v1, v5}, Lcom/kelocube/mirrorclient/Billing;->getReceipt$default(Lcom/kelocube/mirrorclient/Billing;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Starting session"

    invoke-static {v3, v5}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v3, v0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnData()Lkotlin/jvm/functions/Function3;

    move-result-object v13

    sget-object v14, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Configure:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v6, Lcom/kelocube/mirrorclient/MirrorSession$sendStart$1;

    move-object v3, v6

    move-object v5, v2

    move-object v2, v6

    move-object v6, v7

    move-object v7, v10

    move-object v10, v1

    invoke-direct/range {v3 .. v12}, Lcom/kelocube/mirrorclient/MirrorSession$sendStart$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IILjava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;I)V

    invoke-interface {v13, v14, v15, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final sendStop()V
    .locals 4

    .line 236
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping session"

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnData()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Stop:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/kelocube/mirrorclient/MirrorSession$sendStop$1;->INSTANCE:Lcom/kelocube/mirrorclient/MirrorSession$sendStop$1;

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showWarning$lambda$4(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V
    .locals 7

    const-string v0, "$e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AppException;->getType()I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    new-instance p0, Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 346
    sget p1, Lcom/kelocube/mirrorclient/R$string;->error_warn_software_encoder_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 347
    sget p1, Lcom/kelocube/mirrorclient/R$string;->error_warn_software_encoder_body:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 348
    sget p1, Lcom/kelocube/mirrorclient/R$string;->word_ok:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 363
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p0, p1, Lcom/kelocube/mirrorclient/MirrorSession;->context:Landroid/content/Context;

    sget p1, Lcom/kelocube/mirrorclient/R$string;->error_warn_bad_resolution_warn:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private final tryEndConfigure()V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->newConfig:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    if-eqz v0, :cond_6

    .line 120
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->videoConfigured:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->haveFirstFrame:Z

    if-eqz v1, :cond_6

    .line 122
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "End configuration"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    .line 124
    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->newConfig:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    .line 125
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->layout()V

    .line 126
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnStart()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Configure video"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    .line 131
    iget-object v3, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    if-nez v3, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    new-instance v3, Lcom/kelocube/mirrorclient/YUVVideoStream;

    invoke-direct {v3, v1}, Lcom/kelocube/mirrorclient/YUVVideoStream;-><init>(Landroid/view/ViewGroup;)V

    check-cast v3, Lcom/kelocube/mirrorclient/VideoStream;

    .line 135
    move-object v1, v3

    check-cast v1, Lcom/kelocube/mirrorclient/YUVVideoStream;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kelocube/mirrorclient/YUVVideoStream;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 136
    new-instance v4, Lcom/kelocube/mirrorclient/MirrorSession$tryEndConfigure$1;

    invoke-direct {v4, p0}, Lcom/kelocube/mirrorclient/MirrorSession$tryEndConfigure$1;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v4}, Lcom/kelocube/mirrorclient/YUVVideoStream;->setOnFrameDone(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getWidth()I

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/VideoStream;->release()V

    move-object v3, v2

    .line 141
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    const/4 v1, 0x1

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/kelocube/mirrorclient/VideoStream;->configure(IIZ)V

    .line 145
    iget-object v4, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getHWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getHHeight()I

    move-result v0

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/kelocube/mirrorclient/Pointer;->configure(IIII)V

    .line 146
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Input;->configure()V

    .line 147
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->onConnected()V

    .line 149
    :cond_3
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->videoConfigured:Z

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->haveFirstFrame:Z

    .line 151
    iget-object v4, p0, Lcom/kelocube/mirrorclient/MirrorSession;->configCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 152
    :cond_4
    iput-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->configCallback:Lkotlin/jvm/functions/Function0;

    .line 153
    iget-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->noVideoHint:Lcom/kelocube/mirrorclient/NoVideoHint;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/kelocube/mirrorclient/NoVideoHint;->setHaveVideo(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->layout()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->sendStop()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->alive:Z

    .line 98
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Input;->close()V

    .line 99
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    .line 101
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/VideoStream;->stop()V

    .line 102
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/VideoStream;->release()V
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->callbacks:Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public final configChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/ActionMenu;->configChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/Input;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final layout()V
    .locals 9

    .line 299
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    if-eqz v0, :cond_4

    .line 302
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 303
    iget-object v2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, v2

    div-float v5, v3, v4

    .line 307
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Config;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v7, 0x0

    cmpl-float v8, v6, v5

    if-lez v8, :cond_0

    div-float/2addr v3, v6

    .line 310
    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 311
    iget-object v3, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_0

    :cond_0
    cmpg-float v3, v6, v5

    if-gez v3, :cond_1

    mul-float v4, v4, v6

    .line 314
    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 315
    iget-object v3, p0, Lcom/kelocube/mirrorclient/MirrorSession;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    move v7, v0

    :cond_1
    const/4 v0, 0x0

    .line 317
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, v7

    add-int/2addr v2, v0

    invoke-direct {v3, v7, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 318
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Resizing view to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/kelocube/mirrorclient/VideoStream;->layout(Landroid/graphics/Rect;)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    invoke-virtual {v0, v3}, Lcom/kelocube/mirrorclient/Pointer;->layout(Landroid/graphics/Rect;)V

    .line 324
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {v0, v3}, Lcom/kelocube/mirrorclient/Input;->layout(Landroid/graphics/Rect;)V

    .line 325
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->layout()V

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->noVideoHint:Lcom/kelocube/mirrorclient/NoVideoHint;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/NoVideoHint;->layout()V

    goto :goto_1

    .line 328
    :cond_4
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorSession;->sendStart()V

    :goto_1
    return-void
.end method

.method public final onData(BLcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Configure:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_1

    .line 244
    new-instance p1, Lcom/kelocube/mirrorclient/MirrorSession$Config;

    .line 245
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 246
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 247
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 248
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 249
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    move-object v1, p1

    .line 244
    invoke-direct/range {v1 .. v6}, Lcom/kelocube/mirrorclient/MirrorSession$Config;-><init>(IIIII)V

    .line 252
    iget-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;

    invoke-direct {v0, p0, p1}, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;Lcom/kelocube/mirrorclient/MirrorSession$Config;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-wide/16 v1, 0x3e8

    invoke-static {p2, v1, v2, v0}, Lcom/kelocube/mirrorclient/TaskKt;->runTask(Landroid/os/Handler;JLkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 255
    :cond_0
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Failed to configure session"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 258
    :cond_1
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Frame:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_2

    .line 259
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 260
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    .line 261
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 262
    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->video:Lcom/kelocube/mirrorclient/VideoStream;

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const-string v2, "array(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2, p1, v0}, Lcom/kelocube/mirrorclient/VideoStream;->processInput([BII)V

    goto/16 :goto_0

    .line 264
    :cond_2
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerMove:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_3

    .line 265
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/Pointer;->onMoveData(Lcom/kelocube/mirrorclient/Transport$Data;)V

    goto :goto_0

    .line 267
    :cond_3
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerShape:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_4

    .line 268
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->pointer:Lcom/kelocube/mirrorclient/Pointer;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/Pointer;->onShapeData(Lcom/kelocube/mirrorclient/Transport$Data;)V

    goto :goto_0

    .line 270
    :cond_4
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->TakeScreenshot:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-eq p1, v0, :cond_7

    .line 273
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Scale:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_5

    .line 274
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession;->input:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Input;->getScaler()Lcom/kelocube/mirrorclient/CanvasScaler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/CanvasScaler;->onData(Lcom/kelocube/mirrorclient/Transport$Data;)V

    goto :goto_0

    .line 276
    :cond_5
    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Unlock:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->getId()B

    move-result v0

    if-ne p1, v0, :cond_6

    .line 277
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 278
    new-array p1, p1, [B

    .line 279
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Ljava/lang/String;

    .line 280
    sget-object v0, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 282
    sget-object p1, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/App;->getBilling()Lcom/kelocube/mirrorclient/Billing;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;-><init>(Lcom/kelocube/mirrorclient/MirrorSession;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/kelocube/mirrorclient/Billing;->makeLicenseRequest(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 294
    :cond_6
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown packet type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public final showOnboarding()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->menu:Lcom/kelocube/mirrorclient/ActionMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->showOnboardingIfNecessary()V

    :cond_0
    return-void
.end method

.method public final showWarning(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
