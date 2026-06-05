.class public Lde/mrapp/android/dialog/WizardDialog$Builder;
.super Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
.source "WizardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/WizardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder<",
        "Lde/mrapp/android/dialog/WizardDialog;",
        "Lde/mrapp/android/dialog/WizardDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 400
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainBackButtonText(I)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogBackButtonText:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 325
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$string;->back_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 327
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setBackButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainButtonTextColor(I)V
    .locals 3

    .line 308
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogButtonTextColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$attr;->colorAccent:I

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setButtonTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainEnableSwipe(I)V
    .locals 2

    .line 282
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogEnableSwipe:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->enableSwipe(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainEnableTabLayout(I)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogEnableTabLayout:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->enableTabLayout(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainFinishButtonText(I)V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogFinishButtonText:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 355
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$string;->finish_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setFinishButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainNextButtonText(I)V
    .locals 2

    .line 338
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogNextButtonText:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$string;->next_button_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setNextButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainShowButtonBar(I)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowButtonBar:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->showButtonBar(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainShowButtonBarDivider(I)V
    .locals 2

    .line 369
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowButtonBarDivider:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->showButtonBarDivider(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainShowTabLayout(I)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogShowTabLayout:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->showTabLayout(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainTabIndicatorColor(I)V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTabIndicatorColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/dialog/R$attr;->colorAccent:I

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setTabIndicatorColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainTabIndicatorHeight(I)V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTabIndicatorHeight:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_tab_indicator_height:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setTabIndicatorHeight(I)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainTabPosition(I)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTabPosition:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 182
    sget-object v0, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->PREFER_HEADER:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0}, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->getValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->fromValue(I)Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainTabSelectedTextColor(I)V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTabSelectedTextColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010038

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setTabSelectedTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method

.method private obtainTabTextColor(I)V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogTabTextColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010038

    invoke-static {v1, p1, v2}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;II)I

    move-result p1

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->setTabTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-void
.end method


# virtual methods
.method public final addFragment(ILjava/lang/Class;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(ILjava/lang/Class;)V

    .line 451
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addFragment(ILjava/lang/Class;Landroid/os/Bundle;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 474
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;)V

    .line 492
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addFragment(Ljava/lang/Class;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(Ljava/lang/Class;)V

    .line 414
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addFragment(Ljava/lang/Class;Landroid/os/Bundle;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lde/mrapp/android/dialog/WizardDialog$Builder;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/WizardDialog;->addFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 433
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 787
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V

    .line 772
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final enableSwipe(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->enableSwipe(Z)V

    .line 627
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final enableTabLayout(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->enableTabLayout(Z)V

    .line 545
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method protected final obtainStyledAttributes(I)V
    .locals 0

    .line 845
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;->obtainStyledAttributes(I)V

    .line 846
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainTabPosition(I)V

    .line 847
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainEnableTabLayout(I)V

    .line 848
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainShowTabLayout(I)V

    .line 849
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainTabIndicatorHeight(I)V

    .line 850
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainTabIndicatorColor(I)V

    .line 851
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainTabTextColor(I)V

    .line 852
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainTabSelectedTextColor(I)V

    .line 853
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainEnableSwipe(I)V

    .line 854
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainShowButtonBar(I)V

    .line 855
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainButtonTextColor(I)V

    .line 856
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainBackButtonText(I)V

    .line 857
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainNextButtonText(I)V

    .line 858
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainFinishButtonText(I)V

    .line 859
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/WizardDialog$Builder;->obtainShowButtonBarDivider(I)V

    return-void
.end method

.method protected final onCreateProduct()Lde/mrapp/android/dialog/WizardDialog;
    .locals 2

    .line 837
    new-instance v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-direct {v0}, Lde/mrapp/android/dialog/WizardDialog;-><init>()V

    .line 838
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getThemeResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/WizardDialog;->setThemeResourceId(I)V

    .line 839
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/WizardDialog;->setContext(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->onCreateProduct()Lde/mrapp/android/dialog/WizardDialog;

    move-result-object v0

    return-object v0
.end method

.method public final setBackButtonText(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setBackButtonText(I)V

    .line 682
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setBackButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 695
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 696
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setButtonTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 652
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setButtonTextColor(I)V

    .line 653
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setFinishButtonText(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setFinishButtonText(I)V

    .line 738
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setFinishButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 751
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setFinishButtonText(Ljava/lang/CharSequence;)V

    .line 752
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setNextButtonText(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setNextButtonText(I)V

    .line 710
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setNextButtonText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setNextButtonText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setTabIndicatorColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setTabIndicatorColor(I)V

    .line 587
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setTabIndicatorHeight(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setTabIndicatorHeight(I)V

    .line 574
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V

    .line 531
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setTabSelectedTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setTabSelectedTextColor(I)V

    .line 613
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final setTabTextColor(I)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->setTabTextColor(I)V

    .line 600
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lde/mrapp/android/dialog/WizardDialog;
    .locals 2

    .line 805
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment manager may not be null"

    .line 806
    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    .line 808
    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/WizardDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public final show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)Lde/mrapp/android/dialog/WizardDialog;
    .locals 2

    .line 827
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment transaction may not be null"

    .line 828
    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    .line 830
    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/WizardDialog;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-object v0
.end method

.method public final showButtonBar(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->showButtonBar(Z)V

    .line 640
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final showButtonBarDivider(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 667
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->showButtonBarDivider(Z)V

    .line 668
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method

.method public final showTabLayout(Z)Lde/mrapp/android/dialog/WizardDialog$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/WizardDialog;->showTabLayout(Z)V

    .line 560
    invoke-virtual {p0}, Lde/mrapp/android/dialog/WizardDialog$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog$Builder;

    return-object p1
.end method
