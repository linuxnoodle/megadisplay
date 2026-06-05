.class public abstract Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AbstractMaterialDialogFragment.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/MaterialDialog;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private context:Landroid/content/Context;

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

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private rootView:Lde/mrapp/android/dialog/view/DialogRootView;

.field private showListener:Landroid/content/DialogInterface$OnShowListener;

.field private themeResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 199
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 200
    new-instance v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    .line 201
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorators:Ljava/util/Collection;

    .line 202
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private applyDecorators(Landroid/view/Window;Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Lde/mrapp/android/dialog/view/DialogRootView;",
            "Landroid/view/View;",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorators:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/decorator/AbstractDecorator;

    .line 165
    instance-of v3, v2, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;

    if-eqz v3, :cond_0

    .line 166
    move-object v3, v2

    check-cast v3, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v3, p1, p3, v0, v4}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;->attach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 169
    :cond_0
    move-object v3, v2

    check-cast v3, Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator;

    .line 172
    invoke-virtual {v3, p1, p3, v0, p4}, Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator;->attach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 171
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 175
    :goto_1
    invoke-virtual {v2, p2}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->addAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createCanceledOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 128
    new-instance v0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;-><init>(Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;)V

    return-object v0
.end method

.method private detachDecorators(Lde/mrapp/android/dialog/view/DialogRootView;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorators:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/decorator/AbstractDecorator;

    .line 190
    invoke-virtual {v1}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->detach()V

    .line 191
    invoke-virtual {v1, p1}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->removeAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private inflateLayout()Landroid/view/View;
    .locals 3

    .line 117
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$layout;->material_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorators:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final areDividersShownOnScroll()Z
    .locals 1

    .line 502
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->areDividersShownOnScroll()Z

    move-result v0

    return v0
.end method

.method public final cancel()V
    .locals 1

    .line 733
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 620
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getBottomMargin()I
    .locals 1

    .line 418
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 4

    .line 740
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 743
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->context:Landroid/content/Context;

    const-string v2, "No context has been set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 745
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->context:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 512
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerColor()I

    move-result v0

    return v0
.end method

.method public final getDividerMargin()I
    .locals 1

    .line 522
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerMargin()I

    move-result v0

    return v0
.end method

.method public final getGravity()I
    .locals 1

    .line 353
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 373
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 532
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 552
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 568
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getLeftMargin()I
    .locals 1

    .line 403
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLeftMargin()I

    move-result v0

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .line 393
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxHeight()I

    move-result v0

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 383
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxWidth()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 703
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageColor()I
    .locals 1

    .line 599
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessageColor()I

    move-result v0

    return v0
.end method

.method public final getMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 610
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessageTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getPaddingBottom()I
    .locals 1

    .line 443
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    .line 428
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getPaddingRight()I
    .locals 1

    .line 438
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 433
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getRightMargin()I
    .locals 1

    .line 413
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRightMargin()I

    move-result v0

    return v0
.end method

.method public final getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 282
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

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

    .line 485
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 718
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .line 578
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitleColor()I

    move-result v0

    return v0
.end method

.method public final getTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 589
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getTopMargin()I
    .locals 1

    .line 408
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 363
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWidth()I

    move-result v0

    return v0
.end method

.method public final getWindowBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 297
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getWindowInsetBottom()I
    .locals 1

    .line 327
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetLeft()I
    .locals 1

    .line 312
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetRight()I
    .locals 1

    .line 322
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public final getWindowInsetTop()I
    .locals 1

    .line 317
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public final isCancelable()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCancelable()Z

    move-result v0

    return v0
.end method

.method public final isCanceledOnTouchOutside()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCanceledOnTouchOutside()Z

    move-result v0

    return v0
.end method

.method public final isCustomMessageUsed()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomMessageUsed()Z

    move-result v0

    return v0
.end method

.method public final isCustomTitleUsed()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomTitleUsed()Z

    move-result v0

    return v0
.end method

.method public final isCustomViewUsed()Z
    .locals 1

    .line 688
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomViewUsed()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsBottom()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsBottom()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsLeft()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsLeft()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsRight()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsRight()Z

    move-result v0

    return v0
.end method

.method public final isFitsSystemWindowsTop()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsTop()Z

    move-result v0

    return v0
.end method

.method public final isFullscreen()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 818
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 820
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onCanceledOnTouchOutside()Z
    .locals 1

    .line 247
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 754
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->themeResourceId:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 755
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 762
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->inflateLayout()Landroid/view/View;

    move-result-object p1

    .line 763
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->createCanceledOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p3, :cond_0

    .line 766
    invoke-virtual {p0, p3}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 771
    sget p3, Lde/mrapp/android/dialog/R$id;->dialog_root_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lde/mrapp/android/dialog/view/DialogRootView;

    iput-object p3, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 774
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, p2, p3, p1, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->applyDecorators(Landroid/view/Window;Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;

    move-result-object p2

    .line 775
    iget-object p3, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-virtual {p3, p2}, Lde/mrapp/android/dialog/view/DialogRootView;->addAreas(Ljava/util/Map;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 793
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 794
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->detachDecorators(Lde/mrapp/android/dialog/view/DialogRootView;)V

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->rootView:Lde/mrapp/android/dialog/view/DialogRootView;

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 800
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 804
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 809
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 811
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 812
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 828
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 829
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 781
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 782
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    .line 784
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 786
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->showListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final setBackground(I)V
    .locals 1

    .line 636
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(I)V

    return-void
.end method

.method public final setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .line 647
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(I)V

    return-void
.end method

.method public final setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 338
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCancelable(Z)V

    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 2

    .line 225
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public final setCustomMessage(I)V
    .locals 1

    .line 683
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomMessage(I)V

    return-void
.end method

.method public final setCustomMessage(Landroid/view/View;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomMessage(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomTitle(I)V
    .locals 1

    .line 668
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomTitle(I)V

    return-void
.end method

.method public final setCustomTitle(Landroid/view/View;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 1

    .line 517
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerColor(I)V

    return-void
.end method

.method public final setDividerMargin(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerMargin(I)V

    return-void
.end method

.method public final setFitsSystemWindows(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public final setFitsSystemWindows(ZZZZ)V
    .locals 1

    .line 479
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFitsSystemWindows(ZZZZ)V

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFullscreen(Z)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    .line 358
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setGravity(I)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setHeight(I)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 542
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setIconAttribute(I)V
    .locals 1

    .line 547
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconAttribute(I)V

    return-void
.end method

.method public final setIconTint(I)V
    .locals 1

    .line 557
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTint(I)V

    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setMargin(IIII)V
    .locals 1

    .line 423
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMargin(IIII)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxHeight(I)V

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 388
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxWidth(I)V

    return-void
.end method

.method public final setMessage(I)V
    .locals 1

    .line 713
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(I)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 708
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMessageColor(I)V
    .locals 1

    .line 604
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessageColor(I)V

    return-void
.end method

.method public final setMessageTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessageTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 1

    .line 448
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setPadding(IIII)V

    return-void
.end method

.method public setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method public setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method protected final setThemeResourceId(I)V
    .locals 0

    .line 214
    iput p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->themeResourceId:I

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 728
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitle(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1

    .line 583
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitleColor(I)V

    return-void
.end method

.method public final setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitleTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setView(I)V
    .locals 1

    .line 698
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setView(I)V

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setView(Landroid/view/View;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 1

    .line 368
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWidth(I)V

    return-void
.end method

.method public final setWindowBackground(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(I)V

    return-void
.end method

.method public final setWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final showDividersOnScroll(Z)V
    .locals 1

    .line 507
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll(Z)V

    return-void
.end method
