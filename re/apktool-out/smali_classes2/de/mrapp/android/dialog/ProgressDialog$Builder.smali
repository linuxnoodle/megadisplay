.class public Lde/mrapp/android/dialog/ProgressDialog$Builder;
.super Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
        "Lde/mrapp/android/dialog/ProgressDialog;",
        "Lde/mrapp/android/dialog/ProgressDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainProgressBarColor(I)V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogProgressBarColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$attr;->colorAccent:I

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->setProgressBarColor(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-void
.end method

.method private obtainProgressBarPosition(I)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogProgressBarPosition:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 172
    sget-object v0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->LEFT:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->getValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->fromValue(I)Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-void
.end method

.method private obtainProgressBarSize(I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogProgressBarSize:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->circular_progress_bar_size_normal:I

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->setProgressBarSize(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-void
.end method

.method private obtainProgressBarThickness(I)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogProgressBarThickness:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 157
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->circular_progress_bar_thickness_normal:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->setProgressBarThickness(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-void
.end method


# virtual methods
.method protected final obtainStyledAttributes(I)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->obtainStyledAttributes(I)V

    .line 284
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->obtainProgressBarColor(I)V

    .line 285
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->obtainProgressBarSize(I)V

    .line 286
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->obtainProgressBarThickness(I)V

    .line 287
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->obtainProgressBarPosition(I)V

    return-void
.end method

.method protected final onCreateProduct()Lde/mrapp/android/dialog/ProgressDialog;
    .locals 3

    .line 278
    new-instance v0, Lde/mrapp/android/dialog/ProgressDialog;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getThemeResourceId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/dialog/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->onCreateProduct()Lde/mrapp/android/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public final setProgressBarColor(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ProgressDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->setProgressBarColor(I)V

    .line 216
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-object p1
.end method

.method public final setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)Lde/mrapp/android/dialog/ProgressDialog$Builder;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ProgressDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)V

    .line 259
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-object p1
.end method

.method public final setProgressBarSize(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ProgressDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->setProgressBarSize(I)V

    .line 230
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-object p1
.end method

.method public final setProgressBarThickness(I)Lde/mrapp/android/dialog/ProgressDialog$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ProgressDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->setProgressBarThickness(I)V

    .line 244
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/ProgressDialog$Builder;

    return-object p1
.end method

.method public final show()Lde/mrapp/android/dialog/ProgressDialog;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lde/mrapp/android/dialog/ProgressDialog$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ProgressDialog;

    .line 271
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ProgressDialog;->show()V

    return-object v0
.end method
