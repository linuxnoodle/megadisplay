.class public abstract Lde/mrapp/android/dialog/AbstractMaterialDialog;
.super Landroid/app/Dialog;
.source "AbstractMaterialDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/MaterialDialog;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

.field private final decorators:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/decorator/AbstractDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Lde/mrapp/android/dialog/view/DialogRootView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 163
    new-instance p1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    .line 164
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorators:Ljava/util/Collection;

    .line 165
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    const/4 p1, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->requestWindowFeature(I)Z

    .line 167
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private attachDecorators(Landroid/view/Window;Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Lde/mrapp/android/dialog/view/DialogRootView;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorators:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/decorator/AbstractDecorator;

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v2, p1, p3, v0, v3}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->attach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    invoke-virtual {v2, p2}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->addAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createCanceledOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 95
    new-instance v0, Lde/mrapp/android/dialog/AbstractMaterialDialog$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog$1;-><init>(Lde/mrapp/android/dialog/AbstractMaterialDialog;)V

    return-object v0
.end method

.method private detachDecorators(Lde/mrapp/android/dialog/view/DialogRootView;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/decorator/AbstractDecorator;

    .line 144
    invoke-virtual {v1, p1}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->removeAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V

    .line 145
    invoke-virtual {v1}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->detach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inflateLayout()Landroid/view/View;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$layout;->material_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorators:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final areDividersShownOnScroll()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->areDividersShownOnScroll()Z

    move-result v0

    return v0
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 531
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getBottomMargin()I
    .locals 1

    .line 331
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 423
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerColor()I

    move-result v0

    return v0
.end method

.method public final getDividerMargin()I
    .locals 1

    .line 433
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerMargin()I

    move-result v0

    return v0
.end method

.method public final getGravity()I
    .locals 1

    .line 266
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 286
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 443
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 463
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 479
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getLeftMargin()I
    .locals 1

    .line 316
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLeftMargin()I

    move-result v0

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .line 306
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 296
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxWidth()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 614
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageColor()I
    .locals 1

    .line 510
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessageColor()I

    move-result v0

    return v0
.end method

.method public final getMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 521
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessageTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getPaddingBottom()I
    .locals 1

    .line 356
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    .line 341
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getPaddingRight()I
    .locals 1

    .line 351
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 346
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getRightMargin()I
    .locals 1

    .line 326
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRightMargin()I

    move-result v0

    return v0
.end method

.method public final getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 194
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/DialogRootView;->getScrollView()Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;
    .locals 1

    .line 398
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 629
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .line 489
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitleColor()I

    move-result v0

    return v0
.end method

.method public final getTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 500
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getTopMargin()I
    .locals 1

    .line 321
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 276
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWidth()I

    move-result v0

    return v0
.end method

.method public final getWindowBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 210
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getWindowInsetBottom()I
    .locals 1

    .line 240
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetLeft()I
    .locals 1

    .line 225
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetRight()I
    .locals 1

    .line 235
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetTop()I
    .locals 1

    .line 230
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public final isCancelable()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCancelable()Z

    move-result v0

    return v0
.end method

.method public final isCanceledOnTouchOutside()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCanceledOnTouchOutside()Z

    move-result v0

    return v0
.end method

.method public final isCustomMessageUsed()Z
    .locals 1

    .line 584
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomMessageUsed()Z

    move-result v0

    return v0
.end method

.method public final isCustomTitleUsed()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomTitleUsed()Z

    move-result v0

    return v0
.end method

.method public final isCustomViewUsed()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomViewUsed()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsBottom()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsBottom()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsLeft()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsLeft()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsRight()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsRight()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsTop()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsTop()Z

    move-result v0

    return v0
.end method

.method public final isFullscreen()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method protected onCanceledOnTouchOutside()Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 673
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 664
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 665
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 3

    .line 640
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 641
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->inflateLayout()Landroid/view/View;

    move-result-object v0

    .line 642
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->createCanceledOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 643
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->setContentView(Landroid/view/View;)V

    .line 644
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    .line 646
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 647
    sget v2, Lde/mrapp/android/dialog/R$id;->dialog_root_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/view/DialogRootView;

    iput-object v2, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 649
    invoke-direct {p0, v1, v2, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->attachDecorators(Landroid/view/Window;Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->addAreas(Ljava/util/Map;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 655
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 656
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->detachDecorators(Lde/mrapp/android/dialog/view/DialogRootView;)V

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    return-void
.end method

.method public final setBackground(I)V
    .locals 1

    .line 547
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(I)V

    return-void
.end method

.method public final setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .line 558
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(I)V

    return-void
.end method

.method public final setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 251
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCancelable(Z)V

    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 205
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public final setCustomMessage(I)V
    .locals 1

    .line 594
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomMessage(I)V

    return-void
.end method

.method public final setCustomMessage(Landroid/view/View;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomMessage(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomTitle(I)V
    .locals 1

    .line 579
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomTitle(I)V

    return-void
.end method

.method public final setCustomTitle(Landroid/view/View;)V
    .locals 1

    .line 574
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerColor(I)V

    return-void
.end method

.method public final setDividerMargin(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerMargin(I)V

    return-void
.end method

.method public final setFitsSystemWindows(Z)V
    .locals 1

    .line 386
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public final setFitsSystemWindows(ZZZZ)V
    .locals 1

    .line 392
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFitsSystemWindows(ZZZZ)V

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 1

    .line 261
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFullscreen(Z)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setGravity(I)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setHeight(I)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 453
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setIconAttribute(I)V
    .locals 1

    .line 458
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconAttribute(I)V

    return-void
.end method

.method public final setIconTint(I)V
    .locals 1

    .line 468
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTint(I)V

    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 473
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setMargin(IIII)V
    .locals 1

    .line 336
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMargin(IIII)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 1

    .line 311
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxHeight(I)V

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxWidth(I)V

    return-void
.end method

.method public final setMessage(I)V
    .locals 1

    .line 624
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(I)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 619
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMessageColor(I)V
    .locals 1

    .line 515
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessageColor(I)V

    return-void
.end method

.method public final setMessageTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessageTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 1

    .line 361
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setPadding(IIII)V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 408
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 634
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1

    .line 494
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitleColor(I)V

    return-void
.end method

.method public final setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setView(I)V
    .locals 1

    .line 609
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setView(I)V

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setView(Landroid/view/View;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWidth(I)V

    return-void
.end method

.method public final setWindowBackground(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(I)V

    return-void
.end method

.method public final setWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final showDividersOnScroll(Z)V
    .locals 1

    .line 418
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialog;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll(Z)V

    return-void
.end method
