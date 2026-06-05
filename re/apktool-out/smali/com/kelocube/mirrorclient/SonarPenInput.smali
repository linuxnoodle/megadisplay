.class public final Lcom/kelocube/mirrorclient/SonarPenInput;
.super Ljava/lang/Object;
.source "SonarPenInput.kt"

# interfaces
.implements Lcom/greenbulb/sonarpen/SonarPenCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/SonarPenInput$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 /2\u00020\u0001:\u0001/B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010#\u001a\u00020\u0006J\u000e\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&J\u000e\u0010\'\u001a\u00020\t2\u0006\u0010%\u001a\u00020(J\u0008\u0010)\u001a\u00020\u0006H\u0016J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0010H\u0016J\u0016\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u0013R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u001e\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/SonarPenInput;",
        "Lcom/greenbulb/sonarpen/SonarPenCallBack;",
        "context",
        "Landroid/content/Context;",
        "onConnected",
        "Lkotlin/Function0;",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V",
        "<set-?>",
        "",
        "buttonDown",
        "getButtonDown",
        "()Z",
        "connected",
        "contactDownTimes",
        "",
        "",
        "",
        "dpi",
        "",
        "getDpi",
        "()F",
        "handler",
        "Landroid/os/Handler;",
        "maxAmp",
        "minAmp",
        "penID",
        "getPenID",
        "()I",
        "pressure",
        "getPressure",
        "rawPressure",
        "getRawPressure",
        "sonarPen",
        "Lcom/greenbulb/sonarpen/SonarPenUtilities;",
        "close",
        "handleEvent",
        "e",
        "Landroid/view/MotionEvent;",
        "handleKeyEvent",
        "Landroid/view/KeyEvent;",
        "onSonarPenButtonPressed",
        "onSonarPenStatusChange",
        "state",
        "updateCalibration",
        "min",
        "max",
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
.field public static final Companion:Lcom/kelocube/mirrorclient/SonarPenInput$Companion;


# instance fields
.field private buttonDown:Z

.field private connected:Z

.field private final contactDownTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final dpi:F

.field private final handler:Landroid/os/Handler;

.field private maxAmp:F

.field private minAmp:F

.field private final onConnected:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private penID:I

.field private pressure:F

.field private rawPressure:F

.field private final sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;


# direct methods
.method public static synthetic $r8$lambda$I4vdSkahnox_lzuTIkOuXy-xOhU(Lcom/kelocube/mirrorclient/SonarPenInput;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/SonarPenInput;->onSonarPenButtonPressed$lambda$0(Lcom/kelocube/mirrorclient/SonarPenInput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OeBrgg-FCHbH2EirLSilOtowOMs(Lcom/kelocube/mirrorclient/SonarPenInput;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/SonarPenInput;->onSonarPenStatusChange$lambda$1(Lcom/kelocube/mirrorclient/SonarPenInput;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/SonarPenInput$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/SonarPenInput$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/SonarPenInput;->Companion:Lcom/kelocube/mirrorclient/SonarPenInput$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConnected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->onConnected:Lkotlin/jvm/functions/Function0;

    .line 17
    new-instance p2, Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-direct {p2, p1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->contactDownTimes:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->dpi:F

    .line 48
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 49
    const-string v0, "sonarpen_min"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->minAmp:F

    .line 50
    const-string v0, "sonarpen_max"

    const/high16 v1, 0x457a0000    # 4000.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->maxAmp:F

    .line 52
    move-object p1, p0

    check-cast p1, Lcom/greenbulb/sonarpen/SonarPenCallBack;

    invoke-virtual {p2, p1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->addSonarPenCallback(Lcom/greenbulb/sonarpen/SonarPenCallBack;)V

    .line 53
    invoke-virtual {p2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->start()I

    return-void
.end method

.method private static final onSonarPenButtonPressed$lambda$0(Lcom/kelocube/mirrorclient/SonarPenInput;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->IsButtonUseSoundWaveDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->context:Landroid/content/Context;

    const-string v0, "onSonarPenButtonPressed"

    invoke-static {p0, v0}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final onSonarPenStatusChange$lambda$1(Lcom/kelocube/mirrorclient/SonarPenInput;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 137
    iget-object p0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSonarPenStatusChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_0
    iget-boolean p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->connected:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->connected:Z

    .line 130
    iget-object p0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->context:Landroid/content/Context;

    sget p1, Lcom/kelocube/mirrorclient/R$string;->input_sonarpen_disconnected:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-boolean p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->connected:Z

    if-nez p1, :cond_0

    .line 121
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->connected:Z

    .line 122
    iget-object p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->context:Landroid/content/Context;

    sget v1, Lcom/kelocube/mirrorclient/R$string;->input_sonarpen_connected:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object p0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->onConnected:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->stop()V

    return-void
.end method

.method public final getButtonDown()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->buttonDown:Z

    return v0
.end method

.method public final getDpi()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->dpi:F

    return v0
.end method

.method public final getPenID()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    return v0
.end method

.method public final getPressure()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->pressure:F

    return v0
.end method

.method public final getRawPressure()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->rawPressure:F

    return v0
.end method

.method public final handleEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->getCurrentAmp()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->rawPressure:F

    .line 67
    iget v1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->minAmp:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->maxAmp:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->pressure:F

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 83
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    if-ne v0, p1, :cond_4

    .line 84
    iput v1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    goto :goto_1

    .line 87
    :cond_2
    iput v1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    goto :goto_1

    .line 72
    :cond_3
    iget v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    if-ne v0, v1, :cond_4

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->penID:I

    :cond_4
    :goto_1
    return-void
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0, p1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->isSonicPenButton(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->sonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->IsButtonUseSoundWaveDetected()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iput-boolean v2, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->buttonDown:Z

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 99
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->buttonDown:Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method public onSonarPenButtonPressed()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/SonarPenInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/SonarPenInput$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/SonarPenInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSonarPenStatusChange(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kelocube/mirrorclient/SonarPenInput$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/kelocube/mirrorclient/SonarPenInput$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/SonarPenInput;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateCalibration(FF)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->minAmp:F

    .line 62
    iput p2, p0, Lcom/kelocube/mirrorclient/SonarPenInput;->maxAmp:F

    return-void
.end method
