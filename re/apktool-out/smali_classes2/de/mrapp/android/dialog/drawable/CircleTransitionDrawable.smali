.class public Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;
.super Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;
.source "CircleTransitionDrawable.java"


# instance fields
.field private backingBitmap:Landroid/graphics/Bitmap;

.field private backingCanvas:Landroid/graphics/Canvas;

.field private fromRadius:I

.field private fromX:F

.field private fromY:F

.field private final paint:Landroid/graphics/Paint;

.field private final porterDuffPaint:Landroid/graphics/Paint;

.field private radius:I

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->x:Ljava/lang/Integer;

    .line 95
    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->y:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->radius:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 97
    iput p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromX:F

    .line 98
    iput p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromY:F

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromRadius:I

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->porterDuffPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public final getRadius()I
    .locals 1

    .line 155
    iget v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->radius:I

    return v0
.end method

.method public final getX()Ljava/lang/Integer;
    .locals 1

    .line 114
    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getY()Ljava/lang/Integer;
    .locals 1

    .line 135
    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final onDraw(FLandroid/graphics/Canvas;)V
    .locals 12

    .line 185
    iget v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromX:F

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 186
    :goto_0
    iget v3, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromY:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 187
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 188
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 189
    iget v4, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromRadius:I

    int-to-double v4, v4

    float-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 190
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v10, v3

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromRadius:I

    int-to-double v8, v0

    sub-double/2addr v6, v8

    float-to-double v8, p1

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 196
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    iget-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingCanvas:Landroid/graphics/Canvas;

    iget v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromX:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_2
    iget v3, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromY:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 198
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v2, v1

    :goto_3
    double-to-float v1, v4

    iget-object v2, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->porterDuffPaint:Landroid/graphics/Paint;

    .line 197
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    iget-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 202
    :cond_4
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    return-void
.end method

.method protected final onEndTransition()V
    .locals 0

    return-void
.end method

.method protected final onStartTransition()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getX()Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromX:F

    .line 179
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getY()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v1, v0

    :cond_1
    iput v1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromY:F

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->getRadius()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->fromRadius:I

    return-void
.end method

.method public final setBounds(IIII)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 172
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingBitmap:Landroid/graphics/Bitmap;

    .line 173
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->backingCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public final setRadius(I)V
    .locals 3

    .line 165
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The radius must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 166
    iput p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->radius:I

    return-void
.end method

.method public final setX(I)V
    .locals 3

    .line 124
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The horizontal position must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->x:Ljava/lang/Integer;

    return-void
.end method

.method public final setY(I)V
    .locals 3

    .line 145
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The vertical position must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->y:Ljava/lang/Integer;

    return-void
.end method
