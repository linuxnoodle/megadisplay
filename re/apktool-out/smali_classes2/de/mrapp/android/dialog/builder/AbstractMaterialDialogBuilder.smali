.class public abstract Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractBuilder;
.source "AbstractMaterialDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/MaterialDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private themeResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 472
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->initialize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 488
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractBuilder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->initialize(I)V

    return-void
.end method

.method private initialize(I)V
    .locals 3

    if-nez p1, :cond_1

    .line 74
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 75
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    sget p1, Lde/mrapp/android/dialog/R$style;->MaterialDialog_Light:I

    .line 80
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setContext(Landroid/content/Context;)V

    .line 81
    iput p1, p0, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->themeResourceId:I

    .line 82
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainStyledAttributes(I)V

    return-void
.end method

.method private obtainBackground(I)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lde/mrapp/android/dialog/R$color;->dialog_background_light:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 304
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_0
    return-void
.end method

.method private obtainDividerColor(I)V
    .locals 2

    .line 403
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogDividerColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 405
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$color;->divider_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setDividerColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainDividerMargin(I)V
    .locals 2

    .line 417
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogDividerMargin:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setDividerMargin(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainFitsSystemWindows(I)V
    .locals 5

    .line 258
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogFitsSystemWindowsLeft:I

    sget v2, Lde/mrapp/android/dialog/R$attr;->materialDialogFitsSystemWindowsTop:I

    sget v3, Lde/mrapp/android/dialog/R$attr;->materialDialogFitsSystemWindowsRight:I

    sget v4, Lde/mrapp/android/dialog/R$attr;->materialDialogFitsSystemWindowsBottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 263
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 264
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x2

    .line 265
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x3

    .line 266
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 267
    invoke-virtual {p0, v0, v2, v3, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setFitsSystemWindows(ZZZZ)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainFullscreen(I)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogFullscreen:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setFullscreen(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainGravity(I)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogGravity:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x11

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setGravity(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainHeight(I)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeight:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 140
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 144
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_0
    return-void
.end method

.method private obtainIconTintList(I)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogIconTint:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 349
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainMargin(I)V
    .locals 5

    .line 210
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogMarginLeft:I

    sget v2, Lde/mrapp/android/dialog/R$attr;->materialDialogMarginTop:I

    sget v3, Lde/mrapp/android/dialog/R$attr;->materialDialogMarginRight:I

    sget v4, Lde/mrapp/android/dialog/R$attr;->materialDialogMarginBottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 214
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_vertical_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x1

    .line 218
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x2

    .line 219
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v4, 0x3

    .line 220
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 221
    invoke-virtual {p0, v2, v3, v0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMargin(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainMaxHeight(I)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogMaxHeight:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 185
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    .line 196
    :try_start_1
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMaxHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 198
    :catch_1
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMaxHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_1
    return-void
.end method

.method private obtainMaxWidth(I)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogMaxWidth:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 159
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, -0x1

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    .line 170
    :try_start_1
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMaxWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 172
    :catch_1
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMaxWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_1
    return-void
.end method

.method private obtainMessageColor(I)V
    .locals 3

    .line 317
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogMessageColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010038

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setMessageColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainPadding(I)V
    .locals 5

    .line 232
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogPaddingLeft:I

    sget v2, Lde/mrapp/android/dialog/R$attr;->materialDialogPaddingTop:I

    sget v3, Lde/mrapp/android/dialog/R$attr;->materialDialogPaddingRight:I

    sget v4, Lde/mrapp/android/dialog/R$attr;->materialDialogPaddingBottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/mrapp/android/dialog/R$dimen;->dialog_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lde/mrapp/android/dialog/R$dimen;->dialog_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 243
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v4, 0x1

    .line 244
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v4, 0x2

    .line 245
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v4, 0x3

    .line 246
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 247
    invoke-virtual {p0, v0, v1, v2, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setPadding(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainScrollableArea(I)V
    .locals 3

    .line 361
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogScrollableAreaTop:I

    sget v2, Lde/mrapp/android/dialog/R$attr;->materialDialogScrollableAreaBottom:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    .line 365
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq v0, v1, :cond_1

    .line 368
    invoke-static {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    if-eq p1, v1, :cond_0

    .line 371
    invoke-static {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object p1

    .line 372
    invoke-virtual {p0, v0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 377
    invoke-virtual {p0, p1, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_0
    return-void
.end method

.method private obtainShowDividersOnScroll(I)V
    .locals 2

    .line 390
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowDividersOnScroll:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 392
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->showDividersOnScroll(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainTitleColor(I)V
    .locals 3

    .line 332
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTitleColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setTitleColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method private obtainWidth(I)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogWidth:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 121
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_0
    return-void
.end method

.method private obtainWindowBackground(I)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogWindowBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setWindowBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_0

    .line 285
    :cond_0
    sget p1, Lde/mrapp/android/dialog/R$drawable;->material_dialog_background:I

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->setWindowBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method protected final getThemeResourceId()I
    .locals 1

    .line 459
    iget v0, p0, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->themeResourceId:I

    return v0
.end method

.method protected obtainStyledAttributes(I)V
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainFullscreen(I)V

    .line 432
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainGravity(I)V

    .line 433
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainWidth(I)V

    .line 434
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainHeight(I)V

    .line 435
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainMaxWidth(I)V

    .line 436
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainMaxHeight(I)V

    .line 437
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainMargin(I)V

    .line 438
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainPadding(I)V

    .line 439
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainFitsSystemWindows(I)V

    .line 440
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainWindowBackground(I)V

    .line 441
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainBackground(I)V

    .line 442
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainMessageColor(I)V

    .line 443
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainTitleColor(I)V

    .line 444
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainIconTintList(I)V

    .line 445
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainScrollableArea(I)V

    .line 446
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainShowDividersOnScroll(I)V

    .line 447
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainDividerColor(I)V

    .line 448
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainDividerMargin(I)V

    return-void
.end method

.method public final setBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setBackground(I)V

    .line 861
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TBuilderType;"
        }
    .end annotation

    .line 846
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setBackground(Landroid/graphics/Bitmap;)V

    .line 847
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 874
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setBackgroundColor(I)V

    .line 875
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCancelable(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCancelable(Z)V

    .line 541
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCanceledOnTouchOutside(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 557
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCustomMessage(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCustomMessage(I)V

    .line 1105
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCustomMessage(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCustomMessage(Landroid/view/View;)V

    .line 1090
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCustomTitle(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1074
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCustomTitle(I)V

    .line 1075
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setCustomTitle(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1060
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setDividerColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setDividerColor(I)V

    .line 1167
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setDividerMargin(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1181
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setDividerMargin(I)V

    .line 1182
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setFitsSystemWindows(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setFitsSystemWindows(Z)V

    .line 756
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setFitsSystemWindows(ZZZZ)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)TBuilderType;"
        }
    .end annotation

    .line 776
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/MaterialDialog;->setFitsSystemWindows(ZZZZ)V

    .line 777
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setFullscreen(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setFullscreen(Z)V

    .line 622
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setGravity(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setGravity(I)V

    .line 636
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setHeight(I)V

    .line 666
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIcon(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 958
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIcon(I)V

    .line 959
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TBuilderType;"
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIcon(Landroid/graphics/Bitmap;)V

    .line 945
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIconAttribute(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIconAttribute(I)V

    .line 973
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIconTint(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIconTint(I)V

    .line 987
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1002
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PorterDuff$Mode;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1017
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMargin(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TBuilderType;"
        }
    .end annotation

    .line 717
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMargin(IIII)V

    .line 718
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMaxHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMaxHeight(I)V

    .line 694
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMaxWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 679
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMaxWidth(I)V

    .line 680
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMessage(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMessage(I)V

    .line 931
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMessage(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TBuilderType;"
        }
    .end annotation

    .line 916
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 917
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMessageColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMessageColor(I)V

    .line 819
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setMessageTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TBuilderType;"
        }
    .end annotation

    .line 832
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setMessageTypeface(Landroid/graphics/Typeface;)V

    .line 833
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 592
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 608
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface$OnShowListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 569
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setPadding(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TBuilderType;"
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/MaterialDialog;->setPadding(IIII)V

    .line 742
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1118
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    .line 1119
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1137
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/MaterialDialog;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    .line 1138
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setTitle(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 902
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setTitle(I)V

    .line 903
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TBuilderType;"
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 889
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setTitleColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setTitleColor(I)V

    .line 791
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setTitleTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TBuilderType;"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setTitleTypeface(Landroid/graphics/Typeface;)V

    .line 805
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setView(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 1044
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setView(I)V

    .line 1045
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setView(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setView(Landroid/view/View;)V

    .line 1031
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setWidth(I)V

    .line 651
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setWindowBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setWindowBackground(I)V

    .line 509
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final setWindowBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TBuilderType;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->setWindowBackground(Landroid/graphics/Bitmap;)V

    .line 527
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method

.method public final showDividersOnScroll(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 1152
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/MaterialDialog;->showDividersOnScroll(Z)V

    .line 1153
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-object p1
.end method
