.class public final Lde/mrapp/android/util/ThemeUtil;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;II)Z
    .locals 0

    .line 676
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 677
    :try_start_1
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 682
    :cond_1
    throw p1
.end method

.method public static getBoolean(Landroid/content/Context;IIZ)Z
    .locals 0

    .line 732
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 733
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 738
    :cond_1
    throw p1
.end method

.method public static getBoolean(Landroid/content/Context;IZ)Z
    .locals 1

    const/4 v0, -0x1

    .line 703
    invoke-static {p0, v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getBoolean(Landroid/content/Context;IIZ)Z

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    .line 88
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 4

    const-string v0, "Resource ID #0x"

    .line 112
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 113
    :try_start_1
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 116
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 117
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    :cond_3
    throw p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, -0x1

    .line 148
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getColorStateList(Landroid/content/Context;II)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;II)Landroid/content/res/ColorStateList;
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 174
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 175
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object p1

    .line 178
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    :cond_2
    throw p1
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1

    const/4 v0, -0x1

    .line 370
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getDimension(Landroid/content/Context;II)F

    move-result p0

    return p0
.end method

.method public static getDimension(Landroid/content/Context;II)F
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 395
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 396
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 406
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    .line 399
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 406
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 408
    :cond_2
    throw p1
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    .line 483
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getDimensionPixelOffset(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;II)I
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 509
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    const/4 v1, -0x1

    .line 510
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v1, :cond_1

    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    .line 513
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 520
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    :cond_2
    throw p1
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    .line 426
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getDimensionPixelSize(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;II)I
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 452
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    const/4 v1, -0x1

    .line 453
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v1, :cond_1

    if-eqz p0, :cond_0

    .line 463
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    .line 456
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    :cond_2
    throw p1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 539
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "Resource ID #0x"

    const/4 v1, 0x0

    .line 564
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 565
    :try_start_1
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 569
    invoke-static {p0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 580
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-object v1

    .line 573
    :cond_2
    :try_start_2
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_3

    .line 580
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 582
    :cond_3
    throw p0
.end method

.method public static getFloat(Landroid/content/Context;IF)F
    .locals 1

    const/4 v0, -0x1

    .line 814
    invoke-static {p0, v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getFloat(Landroid/content/Context;IIF)F

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;IIF)F
    .locals 0

    .line 842
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 843
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 848
    :cond_1
    throw p1
.end method

.method public static getFraction(Landroid/content/Context;III)F
    .locals 1

    const/4 v0, -0x1

    .line 605
    invoke-static {p0, v0, p1, p2, p3}, Lde/mrapp/android/util/ThemeUtil;->getFraction(Landroid/content/Context;IIII)F

    move-result p0

    return p0
.end method

.method public static getFraction(Landroid/content/Context;IIII)F
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 637
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 638
    :try_start_1
    invoke-virtual {p0, p1, p3, p4, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float p3, p1, v1

    if-eqz p3, :cond_1

    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    .line 641
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 648
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 650
    :cond_2
    throw p1
.end method

.method public static getInt(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, -0x1

    .line 759
    invoke-static {p0, v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getInt(Landroid/content/Context;III)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;III)I
    .locals 0

    .line 787
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 788
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 793
    :cond_1
    throw p1
.end method

.method public static getResId(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, -0x1

    .line 869
    invoke-static {p0, v0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->getResId(Landroid/content/Context;III)I

    move-result p0

    return p0
.end method

.method public static getResId(Landroid/content/Context;III)I
    .locals 0

    .line 896
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 897
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 900
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 902
    :cond_1
    throw p1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 203
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    const-string v0, "Resource ID #0x"

    .line 225
    sget-object v1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v2, "The context may not be null"

    invoke-virtual {v1, p0, v2}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 230
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object p1

    .line 233
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 240
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    :cond_2
    throw p1
.end method

.method public static getText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, -0x1

    .line 259
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getText(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getText(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 284
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 285
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object p1

    .line 288
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 295
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    :cond_2
    throw p1
.end method

.method public static getTextArray(Landroid/content/Context;I)[Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, -0x1

    .line 315
    invoke-static {p0, v0, p1}, Lde/mrapp/android/util/ThemeUtil;->getTextArray(Landroid/content/Context;II)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getTextArray(Landroid/content/Context;II)[Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "Resource ID #0x"

    .line 340
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/mrapp/android/util/ThemeUtil;->obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 341
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-object p1

    .line 344
    :cond_1
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not valid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 351
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    :cond_2
    throw p1
.end method

.method private static obtainStyledAttributes(Landroid/content/Context;II)Landroid/content/res/TypedArray;
    .locals 2

    .line 57
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 59
    filled-new-array {p2}, [I

    move-result-object p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method
