.class public final Lcom/kelocube/mirrorclient/CanvasScaler;
.super Ljava/lang/Object;
.source "CanvasScaler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;,
        Lcom/kelocube/mirrorclient/CanvasScaler$Crop;,
        Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanvasScaler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasScaler.kt\ncom/kelocube/mirrorclient/CanvasScaler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1747#2,3:135\n1855#2,2:138\n*S KotlinDebug\n*F\n+ 1 CanvasScaler.kt\ncom/kelocube/mirrorclient/CanvasScaler\n*L\n79#1:135,3\n100#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003#$%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rH\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u001c\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/CanvasScaler;",
        "",
        "callbacks",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;",
        "(Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V",
        "area",
        "Landroid/graphics/Rect;",
        "handler",
        "Landroid/os/Handler;",
        "pointers",
        "",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;",
        "sx",
        "",
        "sy",
        "onData",
        "",
        "data",
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "onTouchEvent",
        "e",
        "Landroid/view/MotionEvent;",
        "packCoord",
        "",
        "x",
        "readPoint",
        "pointer",
        "resize",
        "sendState",
        "cancel",
        "",
        "setCrop",
        "crop",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;",
        "unpackCoord",
        "Callbacks",
        "Crop",
        "Pointer",
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
.field private final area:Landroid/graphics/Rect;

.field private final callbacks:Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

.field private final handler:Landroid/os/Handler;

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private sx:F

.field private sy:F


# direct methods
.method public static synthetic $r8$lambda$t70NjIPaP21LW5ZC0giuEJxPmAw(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/CanvasScaler;->onData$lambda$4(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->callbacks:Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->handler:Landroid/os/Handler;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->area:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPointers$p(Lcom/kelocube/mirrorclient/CanvasScaler;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler;->packCoord(F)S

    move-result p0

    return p0
.end method

.method private static final onData$lambda$4(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$crop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->callbacks:Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;->getOnCropChanged()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final packCoord(F)S
    .locals 2

    const/16 v0, -0x8000

    int-to-float v0, v0

    const v1, 0xffff

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private final readPoint(Landroid/view/MotionEvent;Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)V
    .locals 5

    .line 67
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->area:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->sx:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 70
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getPoint()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->area:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->sy:F

    div-float/2addr p1, v0

    invoke-static {p1, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private final sendState(Z)V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->callbacks:Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;->getOnData()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;

    invoke-direct {v4, p1, p0, v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;-><init>(ZLcom/kelocube/mirrorclient/CanvasScaler;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic sendState$default(Lcom/kelocube/mirrorclient/CanvasScaler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState(Z)V

    return-void
.end method

.method private final unpackCoord(S)F
    .locals 1

    const/16 v0, -0x8000

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const v0, 0x477fff00    # 65535.0f

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final onData(Lcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-direct {v0}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->unpackCoord(S)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v1, v1, v3

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setX(F)V

    .line 124
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->unpackCoord(S)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float v1, v1, v3

    mul-float v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setY(F)V

    .line 125
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->unpackCoord(S)F

    move-result v1

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setA(F)V

    .line 126
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-direct {p0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->unpackCoord(S)F

    move-result v1

    mul-float v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setT(F)V

    .line 128
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    new-instance v4, Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;

    invoke-direct {v4, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;-><init>(I)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 89
    invoke-static {p0, v2, v3, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState$default(Lcom/kelocube/mirrorclient/CanvasScaler;ZILjava/lang/Object;)V

    goto/16 :goto_2

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 93
    invoke-direct {p0, v3}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState(Z)V

    goto :goto_2

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    .line 101
    invoke-direct {p0, p1, v4}, Lcom/kelocube/mirrorclient/CanvasScaler;->readPoint(Landroid/view/MotionEvent;Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p0, v2, v3, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState$default(Lcom/kelocube/mirrorclient/CanvasScaler;ZILjava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 97
    invoke-static {p0, v2, v3, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState$default(Lcom/kelocube/mirrorclient/CanvasScaler;ZILjava/lang/Object;)V

    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 79
    iget-object v4, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 135
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 136
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    .line 79
    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getId()I

    move-result v5

    if-ne v5, v0, :cond_7

    goto :goto_2

    .line 80
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->pointers:Ljava/util/List;

    new-instance v5, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    invoke-direct {v5, v0}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;-><init>(I)V

    .line 81
    invoke-direct {p0, p1, v5}, Lcom/kelocube/mirrorclient/CanvasScaler;->readPoint(Landroid/view/MotionEvent;Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)V

    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {p0, v2, v3, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->sendState$default(Lcom/kelocube/mirrorclient/CanvasScaler;ZILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final resize(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "area"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->sx:F

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->sy:F

    return-void
.end method

.method public final setCrop(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 3

    const-string v0, "crop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler;->callbacks:Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;->getOnData()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;

    invoke-direct {v2, p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;-><init>(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
