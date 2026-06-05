.class public final Lde/mrapp/android/util/ElevationUtil;
.super Ljava/lang/Object;
.source "ElevationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/ElevationUtil$Orientation;
    }
.end annotation


# static fields
.field private static final BOTTOM_SCALE_FACTOR:F = 1.0f

.field private static final FULL_ARC_DEGRESS:F = 360.0f

.field private static final LEFT_SCALE_FACTOR:F = 0.5f

.field private static final MAX_BOTTOM_ALPHA:I = 0x33

.field public static final MAX_ELEVATION:I = 0x10

.field private static final MAX_LEFT_ALPHA:I = 0x31

.field private static final MAX_RIGHT_ALPHA:I = 0x31

.field private static final MAX_TOP_ALPHA:I = 0xf

.field private static final MIN_BOTTOM_ALPHA:I = 0x2d

.field private static final MIN_LEFT_ALPHA:I = 0x1a

.field private static final MIN_RIGHT_ALPHA:I = 0x1a

.field private static final MIN_TOP_ALPHA:I = 0x8

.field private static final QUARTER_ARC_DEGRESS:F = 90.0f

.field private static final REFERENCE_ELEVATION:I = 0xa

.field private static final REFERENCE_SHADOW_WIDTH:F = 16.5f

.field private static final RIGHT_SCALE_FACTOR:F = 0.5f

.field private static final TOP_SCALE_FACTOR:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCornerShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_0
    invoke-static/range {p0 .. p3}, Lde/mrapp/android/util/ElevationUtil;->getHorizontalShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result v1

    .line 310
    invoke-static/range {p0 .. p3}, Lde/mrapp/android/util/ElevationUtil;->getVerticalShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result v2

    .line 312
    invoke-static/range {p1 .. p3}, Lde/mrapp/android/util/ElevationUtil;->getHorizontalShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result v3

    .line 313
    invoke-static/range {p1 .. p3}, Lde/mrapp/android/util/ElevationUtil;->getVerticalShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result v4

    float-to-double v5, v2

    .line 314
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    float-to-double v7, v1

    .line 315
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v5, v7

    .line 316
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 317
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 318
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 319
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    .line 320
    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 322
    invoke-static {v0, v7}, Lde/mrapp/android/util/ElevationUtil;->getCornerBounds(Lde/mrapp/android/util/ElevationUtil$Orientation;I)Landroid/graphics/RectF;

    move-result-object v10

    .line 323
    invoke-static/range {p2 .. p2}, Lde/mrapp/android/util/ElevationUtil;->getCornerAngle(Lde/mrapp/android/util/ElevationUtil$Orientation;)F

    move-result v11

    .line 325
    invoke-static {v0, v3, v4}, Lde/mrapp/android/util/ElevationUtil;->getCornerColors(Lde/mrapp/android/util/ElevationUtil$Orientation;II)[I

    move-result-object v3

    .line 326
    new-instance v4, Landroid/graphics/SweepGradient;

    iget v12, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v13, v13, v16

    add-float/2addr v12, v13

    iget v13, v10, Landroid/graphics/RectF;->top:F

    .line 327
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v17

    div-float v17, v17, v16

    add-float v13, v13, v17

    const/high16 v16, 0x43b40000    # 360.0f

    div-float v16, v11, v16

    const/high16 v17, 0x3e800000    # 0.25f

    add-float v17, v16, v17

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/16 v18, 0x0

    aput v16, v9, v18

    const/16 v16, 0x1

    aput v17, v9, v16

    invoke-direct {v4, v12, v13, v3, v9}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 330
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v12, 0x42b40000    # 90.0f

    const/4 v13, 0x1

    move-object v9, v15

    move-object v3, v14

    .line 331
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 333
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 332
    invoke-static {v0, v7, v1}, Lde/mrapp/android/util/ElevationUtil;->createRadialGradient(Lde/mrapp/android/util/ElevationUtil$Orientation;IF)Landroid/graphics/Shader;

    move-result-object v0

    .line 334
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, -0x1000000

    .line 335
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v11, 0x0

    int-to-float v13, v7

    const/4 v10, 0x0

    move v12, v13

    .line 337
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 338
    invoke-static {v8, v6, v5}, Lde/mrapp/android/util/BitmapUtil;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createEdgeShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result p0

    .line 260
    invoke-static {p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result p1

    .line 261
    sget-object p3, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eq p2, p3, :cond_2

    sget-object p3, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    float-to-double v2, p0

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 262
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p3, v2

    .line 264
    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-eq p2, v2, :cond_3

    sget-object v2, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    if-ne p2, v2, :cond_4

    :cond_3
    float-to-double v0, p0

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 265
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 267
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-static {p2, p3, v1, p0, p1}, Lde/mrapp/android/util/ElevationUtil;->createLinearGradient(Lde/mrapp/android/util/ElevationUtil$Orientation;IIFI)Landroid/graphics/Shader;

    move-result-object p0

    .line 272
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 p1, 0x1

    .line 273
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 275
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v5, p3

    int-to-float v6, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 276
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static createElevationShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 794
    invoke-static {p0, p1, p2, v0}, Lde/mrapp/android/util/ElevationUtil;->createElevationShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createElevationShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 823
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The elevation must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 825
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/16 v1, 0x10

    const-string v2, "The elevation must be at maximum 16"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 827
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The orientation may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p2}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 841
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid orientation: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 834
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->createEdgeShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 839
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->createCornerShadow(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static createLinearGradient(Lde/mrapp/android/util/ElevationUtil$Orientation;IIFI)Landroid/graphics/Shader;
    .locals 9

    .line 672
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 674
    sget-object v1, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p0}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 p1, 0x6

    if-eq v1, p1, :cond_2

    const/4 p1, 0x7

    if-eq v1, p1, :cond_1

    const/16 p1, 0x8

    if-ne v1, p1, :cond_0

    .line 687
    iput p3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 690
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid orientation: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 684
    :cond_1
    iput p3, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    int-to-float p0, p2

    .line 680
    iput p0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p3

    .line 681
    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    int-to-float p0, p1

    .line 676
    iput p0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p3

    .line 677
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 693
    :goto_0
    new-instance p0, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p0

    move v6, p4

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method private static createRadialGradient(Lde/mrapp/android/util/ElevationUtil$Orientation;IF)Landroid/graphics/Shader;
    .locals 8

    .line 715
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 717
    sget-object v1, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p0}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p1, 0x4

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid orientation: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    int-to-float p0, p1

    .line 726
    iput p0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_2
    int-to-float p0, p1

    .line 719
    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 720
    iput p0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_3
    int-to-float p0, p1

    .line 723
    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 734
    :goto_0
    new-instance p0, Landroid/graphics/RadialGradient;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method private static getCornerAngle(Lde/mrapp/android/util/ElevationUtil$Orientation;)F
    .locals 3

    .line 749
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p0}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_2
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_3
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method private static getCornerBounds(Lde/mrapp/android/util/ElevationUtil$Orientation;I)Landroid/graphics/RectF;
    .locals 4

    .line 388
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p0}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 396
    new-instance p0, Landroid/graphics/RectF;

    neg-int v0, p1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p0, v0, v0, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 398
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    neg-int v0, p1

    int-to-float v0, v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    int-to-float p1, p1

    invoke-direct {p0, v2, v0, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 390
    :cond_2
    new-instance p0, Landroid/graphics/RectF;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p0, v2, v2, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    .line 392
    :cond_3
    new-instance p0, Landroid/graphics/RectF;

    neg-int v0, p1

    int-to-float v0, v0

    int-to-float v1, p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p0, v0, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private static getCornerColors(Lde/mrapp/android/util/ElevationUtil$Orientation;II)[I
    .locals 2

    .line 361
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p0}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid orientation: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_1
    :goto_0
    filled-new-array {p2, p1}, [I

    move-result-object p0

    return-object p0

    .line 363
    :cond_2
    filled-new-array {p1, p2}, [I

    move-result-object p0

    return-object p0
.end method

.method private static getHorizontalShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I
    .locals 2

    .line 539
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p1}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid orientation: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :cond_1
    :goto_0
    sget-object p1, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ElevationUtil;->getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result p0

    return p0

    .line 542
    :cond_2
    sget-object p1, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ElevationUtil;->getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result p0

    return p0
.end method

.method private static getHorizontalShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F
    .locals 2

    .line 425
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p2}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid orientation: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_1
    :goto_0
    sget-object p2, Lde/mrapp/android/util/ElevationUtil$Orientation;->BOTTOM:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result p0

    return p0

    .line 428
    :cond_2
    sget-object p2, Lde/mrapp/android/util/ElevationUtil$Orientation;->TOP:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result p0

    return p0
.end method

.method private static getShadowAlpha(III)I
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p0, v0

    sub-int/2addr p2, p1

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float p0, p0, p2

    add-float/2addr p1, p0

    .line 645
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I
    .locals 6

    const/16 v0, 0x33

    const/16 v1, 0x2d

    if-eqz p2, :cond_0

    .line 602
    invoke-static {p0, v1, v0}, Lde/mrapp/android/util/ElevationUtil;->getShadowAlpha(III)I

    move-result p0

    goto :goto_0

    .line 604
    :cond_0
    sget-object p2, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p1}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const/4 v2, 0x5

    const/16 v3, 0x31

    const/16 v4, 0x1a

    if-eq p2, v2, :cond_4

    const/4 v2, 0x6

    const/16 v5, 0x8

    if-eq p2, v2, :cond_3

    const/4 v2, 0x7

    if-eq p2, v2, :cond_2

    if-ne p2, v5, :cond_1

    .line 615
    invoke-static {p0, v1, v0}, Lde/mrapp/android/util/ElevationUtil;->getShadowAlpha(III)I

    move-result p0

    goto :goto_0

    .line 618
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid orientation: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 612
    :cond_2
    invoke-static {p0, v4, v3}, Lde/mrapp/android/util/ElevationUtil;->getShadowAlpha(III)I

    move-result p0

    goto :goto_0

    :cond_3
    const/16 p1, 0xf

    .line 609
    invoke-static {p0, v5, p1}, Lde/mrapp/android/util/ElevationUtil;->getShadowAlpha(III)I

    move-result p0

    goto :goto_0

    .line 606
    :cond_4
    invoke-static {p0, v4, v3}, Lde/mrapp/android/util/ElevationUtil;->getShadowAlpha(III)I

    move-result p0

    :goto_0
    const/4 p1, 0x0

    .line 622
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x41840000    # 16.5f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    :goto_0
    mul-float p1, p1, v0

    goto :goto_1

    .line 499
    :cond_0
    sget-object p3, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p2}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget p3, p3, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq p3, v1, :cond_3

    const/4 v1, 0x6

    if-eq p3, v1, :cond_2

    const/4 v1, 0x7

    if-eq p3, v1, :cond_3

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid orientation: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const p2, 0x3eaaaaab

    mul-float p1, p1, p2

    goto :goto_1

    :cond_3
    mul-float p1, p1, v2

    .line 517
    :goto_1
    invoke-static {p0, p1}, Lde/mrapp/android/util/DisplayUtil;->dpToPixels(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method private static getVerticalShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I
    .locals 2

    .line 570
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p1}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid orientation: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 573
    :cond_1
    sget-object p1, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ElevationUtil;->getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result p0

    return p0

    .line 576
    :cond_2
    :goto_0
    sget-object p1, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ElevationUtil;->getShadowColor(ILde/mrapp/android/util/ElevationUtil$Orientation;Z)I

    move-result p0

    return p0
.end method

.method private static getVerticalShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F
    .locals 2

    .line 459
    sget-object v0, Lde/mrapp/android/util/ElevationUtil$1;->$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation:[I

    invoke-virtual {p2}, Lde/mrapp/android/util/ElevationUtil$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid orientation: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_1
    sget-object p2, Lde/mrapp/android/util/ElevationUtil$Orientation;->LEFT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result p0

    return p0

    .line 465
    :cond_2
    :goto_0
    sget-object p2, Lde/mrapp/android/util/ElevationUtil$Orientation;->RIGHT:Lde/mrapp/android/util/ElevationUtil$Orientation;

    invoke-static {p0, p1, p2, p3}, Lde/mrapp/android/util/ElevationUtil;->getShadowWidth(Landroid/content/Context;ILde/mrapp/android/util/ElevationUtil$Orientation;Z)F

    move-result p0

    return p0
.end method
