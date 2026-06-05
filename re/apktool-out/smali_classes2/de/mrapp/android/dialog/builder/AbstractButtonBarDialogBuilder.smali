.class public abstract Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;
.source "AbstractButtonBarDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/ButtonBarDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainButtonTextColor(I)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogButtonTextColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setButtonTextColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    :cond_0
    return-void
.end method

.method private obtainShowButtonBarDivider(I)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowButtonBarDivider:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->showButtonBarDivider(Z)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-void
.end method


# virtual methods
.method protected obtainStyledAttributes(I)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->obtainStyledAttributes(I)V

    .line 358
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->obtainButtonTextColor(I)V

    .line 359
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->obtainShowButtonBarDivider(I)V

    return-void
.end method

.method public final setButtonTextColor(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setButtonTextColor(I)V

    .line 119
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setButtonTextColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")TBuilderType;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setButtonTextColor(Landroid/content/res/ColorStateList;)V

    .line 133
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setButtonTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TBuilderType;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setButtonTypeface(Landroid/graphics/Typeface;)V

    .line 147
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setCustomButtonBar(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setCustomButtonBar(I)V

    .line 336
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setCustomButtonBar(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TBuilderType;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setCustomButtonBar(Landroid/view/View;)V

    .line 351
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 210
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 306
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 282
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 258
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final showButtonBarDivider(Z)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->showButtonBarDivider(Z)V

    .line 321
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method

.method public final stackButtons(Z)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBuilderType;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->stackButtons(Z)V

    .line 162
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    return-object p1
.end method
