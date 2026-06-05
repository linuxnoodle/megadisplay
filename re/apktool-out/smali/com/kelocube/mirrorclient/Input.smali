.class public final Lcom/kelocube/mirrorclient/Input;
.super Ljava/lang/Object;
.source "Input.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/Input$Callbacks;,
        Lcom/kelocube/mirrorclient/Input$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\ncom/kelocube/mirrorclient/Input\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,369:1\n37#2,2:370\n*S KotlinDebug\n*F\n+ 1 Input.kt\ncom/kelocube/mirrorclient/Input\n*L\n93#1:370,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u0002CDB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u000e\u00100\u001a\u00020.2\u0006\u00101\u001a\u000202J\u001a\u00103\u001a\u00020.2\u0006\u00104\u001a\u00020\u000f2\u0008\u0008\u0002\u00105\u001a\u00020\u000bH\u0002J\u001a\u00106\u001a\u00020.2\u0006\u00104\u001a\u00020\u000f2\u0008\u0008\u0002\u00107\u001a\u00020\u000bH\u0002J\u000e\u00108\u001a\u00020.2\u0006\u0010+\u001a\u00020,J\u000e\u00109\u001a\u00020.2\u0006\u0010:\u001a\u00020\tJ\u001a\u0010;\u001a\u00020\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010,2\u0006\u00104\u001a\u00020\u000fH\u0016J\u001a\u0010=\u001a\u00020\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010,2\u0006\u00104\u001a\u00020\u000fH\u0017J \u0010>\u001a\u00020.2\u0006\u0010?\u001a\u00020@2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u0018H\u0002J\u0008\u0010B\u001a\u00020.H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\'\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001aR\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Input;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnHoverListener;",
        "context",
        "Landroid/content/Context;",
        "callbacks",
        "Lcom/kelocube/mirrorclient/Input$Callbacks;",
        "(Landroid/content/Context;Lcom/kelocube/mirrorclient/Input$Callbacks;)V",
        "area",
        "Landroid/graphics/Rect;",
        "buttonDown",
        "",
        "handler",
        "Landroid/os/Handler;",
        "lastTouchMove",
        "Landroid/view/MotionEvent;",
        "lastTouchMoveTime",
        "",
        "marked",
        "getMarked",
        "()Z",
        "setMarked",
        "(Z)V",
        "mode",
        "",
        "getMode",
        "()I",
        "setMode",
        "(I)V",
        "penContact",
        "penEmulator",
        "Lcom/kelocube/mirrorclient/PenEmulator;",
        "penHover",
        "scaler",
        "Lcom/kelocube/mirrorclient/CanvasScaler;",
        "getScaler",
        "()Lcom/kelocube/mirrorclient/CanvasScaler;",
        "sonarPen",
        "Lcom/kelocube/mirrorclient/SonarPenInput;",
        "stylusType",
        "getStylusType",
        "timer",
        "Ljava/util/Timer;",
        "view",
        "Landroid/view/View;",
        "close",
        "",
        "configure",
        "handleKeyEvent",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "handlePenEvent",
        "e",
        "reorder",
        "handleTouchEvent",
        "save",
        "inflate",
        "layout",
        "activeArea",
        "onHover",
        "p0",
        "onTouch",
        "serializeTouchEvent",
        "to",
        "Ljava/nio/ByteBuffer;",
        "i",
        "tick",
        "Callbacks",
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
.field public static final Companion:Lcom/kelocube/mirrorclient/Input$Companion;

.field public static final STYLUS_EMULATE:I = 0x1

.field public static final STYLUS_NATIVE:I = 0x0

.field public static final STYLUS_SONARPEN:I = 0x2

.field public static final TOUCH_EMULATE:I = -0x1

.field public static final TOUCH_FORWARD:I = 0x0

.field public static final TOUCH_NONE:I = 0x1

.field public static final TOUCH_SCALE:I = 0x2


# instance fields
.field private area:Landroid/graphics/Rect;

.field private buttonDown:Z

.field private final callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private lastTouchMove:Landroid/view/MotionEvent;

.field private lastTouchMoveTime:J

.field private marked:Z

.field private mode:I

.field private penContact:Z

.field private final penEmulator:Lcom/kelocube/mirrorclient/PenEmulator;

.field private penHover:Z

.field private final scaler:Lcom/kelocube/mirrorclient/CanvasScaler;

.field private final sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

.field private final stylusType:I

.field private final timer:Ljava/util/Timer;

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$oKN7vyzi0dwb5vpadAtvSrHnzbw(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent$lambda$0(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/Input;->Companion:Lcom/kelocube/mirrorclient/Input$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/Input$Callbacks;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    .line 75
    new-instance v0, Lcom/kelocube/mirrorclient/PenEmulator;

    invoke-direct {v0}, Lcom/kelocube/mirrorclient/PenEmulator;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Input;->penEmulator:Lcom/kelocube/mirrorclient/PenEmulator;

    .line 78
    new-instance v0, Lcom/kelocube/mirrorclient/CanvasScaler;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getScaler()Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;-><init>(Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Input;->scaler:Lcom/kelocube/mirrorclient/CanvasScaler;

    .line 80
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/kelocube/mirrorclient/Input;->timer:Ljava/util/Timer;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Input;->handler:Landroid/os/Handler;

    .line 87
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    const-string v1, "stylus_type"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/kelocube/mirrorclient/Input;->stylusType:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v1, v5, :cond_2

    if-ne v1, v6, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    sget-object v5, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    sget v7, Lcom/kelocube/mirrorclient/R$array;->pref_session_menu_modes_default:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->getStringArray(Landroid/content/Context;Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const-string v7, "session_menu_modes"

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/util/Collection;

    .line 371
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast v0, [Ljava/lang/Comparable;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->sortedArray([Ljava/lang/Comparable;)[Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, -0x1

    .line 89
    :cond_3
    :goto_2
    iput v4, p0, Lcom/kelocube/mirrorclient/Input;->mode:I

    if-ne v1, v6, :cond_4

    .line 97
    new-instance v3, Lcom/kelocube/mirrorclient/SonarPenInput;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnSonarPenConnected()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lcom/kelocube/mirrorclient/SonarPenInput;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 96
    :cond_4
    iput-object v3, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    .line 102
    new-instance p1, Lcom/kelocube/mirrorclient/Input$1;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/Input$1;-><init>(Lcom/kelocube/mirrorclient/Input;)V

    move-object v3, p1

    check-cast v3, Ljava/util/TimerTask;

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x32

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static final synthetic access$getArea$p(Lcom/kelocube/mirrorclient/Input;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getButtonDown$p(Lcom/kelocube/mirrorclient/Input;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/kelocube/mirrorclient/Input;->buttonDown:Z

    return p0
.end method

.method public static final synthetic access$getPenContact$p(Lcom/kelocube/mirrorclient/Input;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/kelocube/mirrorclient/Input;->penContact:Z

    return p0
.end method

.method public static final synthetic access$getPenEmulator$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/PenEmulator;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Input;->penEmulator:Lcom/kelocube/mirrorclient/PenEmulator;

    return-object p0
.end method

.method public static final synthetic access$getPenHover$p(Lcom/kelocube/mirrorclient/Input;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/kelocube/mirrorclient/Input;->penHover:Z

    return p0
.end method

.method public static final synthetic access$getSonarPen$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/SonarPenInput;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    return-object p0
.end method

.method public static final synthetic access$serializeTouchEvent(Lcom/kelocube/mirrorclient/Input;Ljava/nio/ByteBuffer;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Input;->serializeTouchEvent(Ljava/nio/ByteBuffer;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public static final synthetic access$setButtonDown$p(Lcom/kelocube/mirrorclient/Input;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Input;->buttonDown:Z

    return-void
.end method

.method public static final synthetic access$setPenContact$p(Lcom/kelocube/mirrorclient/Input;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Input;->penContact:Z

    return-void
.end method

.method public static final synthetic access$tick(Lcom/kelocube/mirrorclient/Input;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Input;->tick()V

    return-void
.end method

.method private final handlePenEvent(Landroid/view/MotionEvent;Z)V
    .locals 5

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Lcom/kelocube/mirrorclient/InputKt;->access$translateSamsungAction(I)I

    move-result v0

    .line 198
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 199
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v2, p1}, Lcom/kelocube/mirrorclient/SonarPenInput;->handleEvent(Landroid/view/MotionEvent;)V

    .line 201
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/SonarPenInput;->getPenID()I

    move-result p2

    if-eq p2, v3, :cond_0

    .line 202
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/SonarPenInput;->getPenID()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    iput p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 203
    :cond_0
    iget p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p2, v3, :cond_9

    .line 204
    iput v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    :cond_1
    const/16 v2, 0xa

    if-eqz p2, :cond_2

    if-ne v0, v2, :cond_2

    .line 210
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/4 p2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, p2, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 224
    :cond_3
    iput-boolean v4, p0, Lcom/kelocube/mirrorclient/Input;->penHover:Z

    goto :goto_0

    .line 223
    :cond_4
    iput-boolean p2, p0, Lcom/kelocube/mirrorclient/Input;->penHover:Z

    goto :goto_0

    .line 222
    :cond_5
    iput-boolean v4, p0, Lcom/kelocube/mirrorclient/Input;->penContact:Z

    goto :goto_0

    .line 218
    :cond_6
    iput-boolean p2, p0, Lcom/kelocube/mirrorclient/Input;->penContact:Z

    .line 219
    iget v0, p0, Lcom/kelocube/mirrorclient/Input;->mode:I

    if-ne v0, v3, :cond_7

    .line 220
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->penEmulator:Lcom/kelocube/mirrorclient/PenEmulator;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/PenEmulator;->beginTouch()V

    .line 227
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    :cond_8
    iput-boolean v4, p0, Lcom/kelocube/mirrorclient/Input;->buttonDown:Z

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    iput p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 232
    :cond_9
    :goto_1
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnPenData()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;

    invoke-direct {v2, p1, v1, p0}, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;-><init>(Landroid/view/MotionEvent;Lkotlin/jvm/internal/Ref$IntRef;Lcom/kelocube/mirrorclient/Input;)V

    invoke-interface {p2, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic handlePenEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 195
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private static final handlePenEvent$lambda$0(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private final handleTouchEvent(Landroid/view/MotionEvent;Z)V
    .locals 5

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    .line 174
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnTouchData()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$2;

    invoke-direct {v4, v0, p0, p1}, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$2;-><init>(ILcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V

    invoke-interface {v3, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnTouchData()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;

    invoke-direct {v3, p0, p1}, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;-><init>(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p2, :cond_3

    .line 185
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    const/4 p2, 0x0

    .line 186
    iput-object p2, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 189
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    .line 190
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMoveTime:J

    :cond_3
    return-void
.end method

.method static synthetic handleTouchEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/Input;->handleTouchEvent(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private final serializeTouchEvent(Ljava/nio/ByteBuffer;Landroid/view/MotionEvent;I)V
    .locals 6

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    int-to-byte v0, v0

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne p3, v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 140
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const-string v5, "area"

    if-nez v3, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_2
    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    if-nez v3, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 141
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    if-nez v3, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_4
    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    .line 142
    invoke-static {v1}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v1

    const/16 v3, 0x7fff

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-short v1, v1

    .line 143
    invoke-static {p3}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result p3

    mul-float p3, p3, v3

    float-to-int p3, p3

    int-to-short p3, p3

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result p2

    invoke-static {p2}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result p2

    mul-float p2, p2, v3

    float-to-int p2, p2

    int-to-short p2, p2

    .line 147
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final tick()V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMoveTime:J

    const-wide/32 v5, 0x2faf080

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x0

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/kelocube/mirrorclient/Input;->handleTouchEvent(Landroid/view/MotionEvent;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/SonarPenInput;->close()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/kelocube/mirrorclient/Input;->lastTouchMove:Landroid/view/MotionEvent;

    return-void
.end method

.method public final configure()V
    .locals 4

    .line 342
    const-string v0, "button_func"

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0xc9

    .line 345
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnConfigData()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/kelocube/mirrorclient/Input$configure$1;

    invoke-direct {v3, v2}, Lcom/kelocube/mirrorclient/Input$configure$1;-><init>(I)V

    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getMarked()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Input;->marked:Z

    return v0
.end method

.method public final getMode()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/kelocube/mirrorclient/Input;->mode:I

    return v0
.end method

.method public final getScaler()Lcom/kelocube/mirrorclient/CanvasScaler;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->scaler:Lcom/kelocube/mirrorclient/CanvasScaler;

    return-object v0
.end method

.method public final getStylusType()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/kelocube/mirrorclient/Input;->stylusType:I

    return v0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4

    const-string v0, "keyEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->sonarPen:Lcom/kelocube/mirrorclient/SonarPenInput;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/SonarPenInput;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-static {}, Lcom/kelocube/mirrorclient/KeyCodesKt;->getKEY_CODES()[Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    .line 360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 362
    :goto_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnKeyboardData()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/kelocube/mirrorclient/Input$handleKeyEvent$1;

    invoke-direct {v3, v1, v0}, Lcom/kelocube/mirrorclient/Input$handleKeyEvent$1;-><init>(ZI)V

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final inflate(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input;->view:Landroid/view/View;

    return-void
.end method

.method public final layout(Landroid/graphics/Rect;)V
    .locals 3

    const-string v0, "activeArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input;->area:Landroid/graphics/Rect;

    .line 128
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input;->scaler:Lcom/kelocube/mirrorclient/CanvasScaler;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler;->resize(Landroid/graphics/Rect;)V

    .line 129
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Input;->view:Landroid/view/View;

    const/4 v0, 0x0

    const-string v1, "view"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    move-object v2, p0

    check-cast v2, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Input;->view:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-static {p0, p2, p1, v0, v1}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 324
    throw p1

    :catch_0
    move-exception p1

    .line 323
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 297
    invoke-static {p0, p2, v1, v2, v0}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_0
    iget p1, p0, Lcom/kelocube/mirrorclient/Input;->mode:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Input;->scaler:Lcom/kelocube/mirrorclient/CanvasScaler;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/CanvasScaler;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {p0, p2, v1, v2, v0}, Lcom/kelocube/mirrorclient/Input;->handleTouchEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_3
    invoke-static {p0, p2, v1, v2, v0}, Lcom/kelocube/mirrorclient/Input;->handlePenEvent$default(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 307
    throw p1

    :catch_0
    move-exception p1

    .line 306
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Input;->callbacks:Lcom/kelocube/mirrorclient/Input$Callbacks;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/Input$Callbacks;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setMarked(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Input;->marked:Z

    return-void
.end method

.method public final setMode(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/kelocube/mirrorclient/Input;->mode:I

    return-void
.end method
