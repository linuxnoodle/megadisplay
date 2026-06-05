.class public Lde/mrapp/android/view/drawable/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ANGLE_ANIMATION_DURATION:J = 0x7d0L

.field private static final MAX_DEGREES:I = 0x168

.field private static final MIN_SWEEP_ANGLE:I = 0x1e

.field private static final SWEEP_ANIMATION_DURATION:J = 0x258L


# instance fields
.field private angleAnimator:Landroid/animation/ObjectAnimator;

.field private appearing:Z

.field private bounds:Landroid/graphics/RectF;

.field private final color:I

.field private currentGlobalAngle:F

.field private currentGlobalAngleOffset:F

.field private currentSweepAngle:F

.field private paint:Landroid/graphics/Paint;

.field private sweepAnimator:Landroid/animation/ObjectAnimator;

.field private final thickness:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 251
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 252
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The thickness must be at least 1"

    invoke-virtual {v0, p2, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 253
    iput p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->color:I

    .line 254
    iput p2, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    .line 255
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    .line 256
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->initializePaint()V

    .line 257
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->initializeAnimators()V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)F
    .locals 0

    .line 43
    iget p0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngle:F

    return p0
.end method

.method static synthetic access$002(Lde/mrapp/android/view/drawable/CircularProgressDrawable;F)F
    .locals 0

    .line 43
    iput p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngle:F

    return p1
.end method

.method static synthetic access$100(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)F
    .locals 0

    .line 43
    iget p0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentSweepAngle:F

    return p0
.end method

.method static synthetic access$102(Lde/mrapp/android/view/drawable/CircularProgressDrawable;F)F
    .locals 0

    .line 43
    iput p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentSweepAngle:F

    return p1
.end method

.method static synthetic access$200(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->appearing:Z

    return p0
.end method

.method static synthetic access$202(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->appearing:Z

    return p1
.end method

.method static synthetic access$300(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)F
    .locals 0

    .line 43
    iget p0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngleOffset:F

    return p0
.end method

.method static synthetic access$302(Lde/mrapp/android/view/drawable/CircularProgressDrawable;F)F
    .locals 0

    .line 43
    iput p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngleOffset:F

    return p1
.end method

.method private createAngleProperty()Landroid/util/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Property<",
            "Lde/mrapp/android/view/drawable/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "angle"

    invoke-direct {v0, p0, v1, v2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;-><init>(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSweepAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 213
    new-instance v0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;

    invoke-direct {v0, p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;-><init>(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)V

    return-object v0
.end method

.method private createSweepProperty()Landroid/util/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Property<",
            "Lde/mrapp/android/view/drawable/CircularProgressDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "arc"

    invoke-direct {v0, p0, v1, v2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable$2;-><init>(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method private initializeAngleAnimator()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->createAngleProperty()Landroid/util/Property;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    .line 140
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 143
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-void
.end method

.method private initializeAnimators()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->initializeAngleAnimator()V

    .line 132
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->initializeSweepAnimator()V

    return-void
.end method

.method private initializePaint()V
    .locals 2

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->getThickness()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initializeSweepAnimator()V
    .locals 5

    .line 174
    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->createSweepProperty()Landroid/util/Property;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    .line 175
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 178
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 179
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->createSweepAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 295
    iget v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngle:F

    iget v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentGlobalAngleOffset:F

    sub-float/2addr v0, v1

    .line 296
    iget v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->currentSweepAngle:F

    .line 298
    iget-boolean v2, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->appearing:Z

    const/high16 v3, 0x41f00000    # 30.0f

    if-nez v2, :cond_0

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    add-float v2, v1, v3

    :goto_0
    move v5, v0

    move v6, v2

    .line 305
    iget-object v4, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    const/4 v7, 0x0

    iget-object v8, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getColor()I
    .locals 1

    .line 266
    iget v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->color:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final getThickness()I
    .locals 1

    .line 275
    iget v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .line 333
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 334
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 335
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    .line 339
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 340
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 341
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v4, v1

    iget v5, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 342
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 345
    iget-object v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v4, v0

    iget v5, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 346
    iget-object v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    sub-float/2addr v4, v2

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 347
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v4, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 348
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->thickness:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    sub-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 280
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final start()V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 312
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 313
    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->angleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 321
    iget-object v0, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->sweepAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 322
    invoke-virtual {p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
