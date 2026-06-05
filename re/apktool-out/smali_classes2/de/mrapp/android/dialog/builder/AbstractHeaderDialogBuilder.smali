.class public abstract Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;
.source "AbstractHeaderDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/HeaderDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainHeaderBackground(I)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeaderBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderBackground(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->colorPrimary:I

    invoke-static {v0, p1, v1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    :goto_0
    return-void
.end method

.method private obtainHeaderDividerColor(I)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeaderDividerColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$color;->header_divider_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderDividerColor(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-void
.end method

.method private obtainHeaderHeight(I)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeaderHeight:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderHeight(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-void
.end method

.method private obtainHeaderIcon(I)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeaderIcon:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderIcon(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    :cond_0
    return-void
.end method

.method private obtainHeaderIconTintList(I)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHeaderIconTint:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-void
.end method

.method private obtainShowHeader(I)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowHeader:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->showHeader(Z)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-void
.end method

.method private obtainShowHeaderDivider(I)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowHeaderDivider:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->showHeaderDivider(Z)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-void
.end method


# virtual methods
.method protected obtainStyledAttributes(I)V
    .locals 0

    .line 388
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;->obtainStyledAttributes(I)V

    .line 389
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainShowHeader(I)V

    .line 390
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainHeaderHeight(I)V

    .line 391
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainHeaderBackground(I)V

    .line 392
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainHeaderIcon(I)V

    .line 393
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainHeaderIconTintList(I)V

    .line 394
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainHeaderDividerColor(I)V

    .line 395
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainShowHeaderDivider(I)V

    return-void
.end method

.method public final setCustomHeader(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setCustomHeader(I)V

    .line 228
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setCustomHeader(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TBuilderType;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setCustomHeader(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderBackground(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderBackground(I)V

    .line 269
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TBuilderType;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderBackgroundColor(I)V

    .line 255
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderDividerColor(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderDividerColor(I)V

    .line 368
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderHeight(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderHeight(I)V

    .line 242
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderIcon(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderIcon(I)V

    .line 297
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TBuilderType;"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderIcon(Landroid/graphics/Bitmap;)V

    .line 311
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderIconTint(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderIconTint(I)V

    .line 325
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")TBuilderType;"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    .line 340
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PorterDuff$Mode;",
            ")TBuilderType;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 355
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final showHeader(Z)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->showHeader(Z)V

    .line 198
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method

.method public final showHeaderDivider(Z)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/HeaderDialog;->showHeaderDivider(Z)V

    .line 382
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    return-object p1
.end method
