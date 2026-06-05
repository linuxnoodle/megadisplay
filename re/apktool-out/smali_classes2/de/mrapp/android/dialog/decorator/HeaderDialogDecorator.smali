.class public Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "HeaderDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/HeaderDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/MaterialDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/HeaderDialogDecorator;"
    }
.end annotation


# static fields
.field private static final HEADER_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerBackgroundBitmap"

.field private static final HEADER_BACKGROUND_COLOR_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerBackgroundColor"

.field private static final HEADER_BACKGROUND_ID_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerBackgroundId"

.field private static final HEADER_DIVIDER_COLOR_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerDividerColor"

.field private static final HEADER_HEIGHT_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerHeight"

.field private static final HEADER_ICON_BITMAP_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerIconBitmap"

.field private static final HEADER_ICON_ID_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerIconId"

.field private static final HEADER_ICON_TINT_LIST_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerIconTintList"

.field private static final HEADER_ICON_TINT_MODE_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::headerIconTintMode"

.field private static final SHOW_HEADER_DIVIDER_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::showHeaderDivider"

.field private static final SHOW_HEADER_EXTRA:Ljava/lang/String; = "HeaderDialogDecorator::showHeader"


# instance fields
.field private customHeaderView:Landroid/view/View;

.field private customHeaderViewId:I

.field private header:Landroid/view/ViewGroup;

.field private headerBackground:Landroid/graphics/drawable/Drawable;

.field private headerBackgroundBitmap:Landroid/graphics/Bitmap;

.field private headerBackgroundColor:I

.field private headerBackgroundId:I

.field private headerBackgroundImageView:Landroid/widget/ImageView;

.field private headerContentContainer:Landroid/view/ViewGroup;

.field private headerDivider:Landroid/view/View;

.field private headerDividerColor:I

.field private headerHeight:I

.field private headerIcon:Landroid/graphics/drawable/Drawable;

.field private headerIconBitmap:Landroid/graphics/Bitmap;

.field private headerIconId:I

.field private headerIconImageView:Landroid/widget/ImageView;

.field private headerIconTintList:Landroid/content/res/ColorStateList;

.field private headerIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private showHeader:Z

.field private showHeaderDivider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/MaterialDialog;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    const/4 p1, -0x1

    .line 182
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    .line 202
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundId:I

    .line 207
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundColor:I

    .line 222
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconId:I

    .line 232
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private adaptHeaderBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 6

    .line 328
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 329
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 332
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 335
    instance-of v2, v0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 336
    check-cast v0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    .line 337
    invoke-virtual {v0, v3}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    :cond_0
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 341
    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    .line 343
    new-instance v2, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v4

    aput-object v1, v5, v3

    invoke-direct {v2, v5}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getRadius()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setRadius(I)V

    .line 346
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 348
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setX(I)V

    .line 352
    :cond_1
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setY(I)V

    .line 356
    :cond_2
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 358
    :cond_3
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CrossFadeTransitionAnimation;

    if-eqz v2, :cond_4

    .line 359
    new-instance v2, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v4

    aput-object v1, v5, v3

    invoke-direct {v2, v5}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 362
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->startTransition(I)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 365
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type of animation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_5
    :goto_1
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method private adaptHeaderDividerColor()V
    .locals 2

    .line 442
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 443
    iget v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private adaptHeaderDividerVisibility()V
    .locals 2

    .line 451
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 452
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private adaptHeaderHeight()V
    .locals 2

    .line 314
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 316
    iget v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 6

    .line 383
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 384
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 385
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 386
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 389
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 392
    instance-of v2, v1, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 393
    check-cast v1, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    invoke-virtual {v1, v3}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 396
    :cond_0
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 397
    new-instance v2, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-direct {v2, v5}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 399
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 400
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->startTransition(I)V

    :goto_0
    move-object v0, v2

    goto/16 :goto_1

    .line 402
    :cond_1
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    if-eqz v2, :cond_4

    .line 403
    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    .line 405
    new-instance v2, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-direct {v2, v5}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 407
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getRadius()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setRadius(I)V

    .line 408
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 410
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setX(I)V

    .line 414
    :cond_2
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setY(I)V

    .line 418
    :cond_3
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 420
    :cond_4
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CrossFadeTransitionAnimation;

    if-eqz v2, :cond_5

    .line 421
    new-instance v2, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    invoke-direct {v2, v5}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 423
    invoke-virtual {v2, v3}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->setCrossFade(Z)V

    .line 424
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 425
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 428
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type of animation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_6
    :goto_1
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method private adaptHeaderView()V
    .locals 1

    .line 289
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->inflateHeader()Landroid/view/View;

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    :cond_0
    return-void
.end method

.method private adaptHeaderVisibility()V
    .locals 2

    .line 299
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 300
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 302
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->notifyOnAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->notifyOnAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private inflateHeader()Landroid/view/View;
    .locals 5

    .line 251
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 254
    sget v3, Lde/mrapp/android/dialog/R$layout;->material_dialog_header:I

    .line 255
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    .line 256
    sget v3, Lde/mrapp/android/dialog/R$id;->header_background_image_view:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundImageView:Landroid/widget/ImageView;

    .line 257
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    sget v3, Lde/mrapp/android/dialog/R$id;->header_content_container:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    .line 258
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    sget v3, Lde/mrapp/android/dialog/R$id;->header_divider:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDivider:Landroid/view/View;

    .line 261
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 263
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 264
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 265
    :cond_1
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 267
    iget v3, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 269
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    sget v3, Lde/mrapp/android/dialog/R$layout;->header_icon_image_view:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    .line 273
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_3
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    .line 279
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    return-object v0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final getHeaderBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 515
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHeaderDividerColor()I
    .locals 1

    .line 626
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDividerColor:I

    return v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 503
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerHeight:I

    return v0
.end method

.method public final getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 565
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getHeaderIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 598
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 615
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final isCustomHeaderUsed()Z
    .locals 2

    .line 491
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isHeaderDividerShown()Z
    .locals 1

    .line 637
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider:Z

    return v0
.end method

.method public final isHeaderShown()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader:Z

    return v0
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 64
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 707
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->inflateHeader()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 710
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderVisibility()V

    const/4 p2, 0x0

    .line 711
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    .line 712
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderDividerColor()V

    .line 713
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderDividerVisibility()V

    .line 714
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    .line 715
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderHeight()V

    .line 716
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 717
    new-instance p3, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p4, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p3, p4}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 721
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 2

    .line 726
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 728
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerContentContainer:Landroid/view/ViewGroup;

    .line 731
    :cond_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->header:Landroid/view/ViewGroup;

    .line 732
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundImageView:Landroid/widget/ImageView;

    .line 733
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconImageView:Landroid/widget/ImageView;

    .line 734
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDivider:Landroid/view/View;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 672
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->SHOW_HEADER_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader(Z)V

    .line 673
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderHeight(I)V

    .line 674
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->SHOW_HEADER_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider(Z)V

    .line 675
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderDividerColor(I)V

    .line 676
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    .line 677
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 676
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    .line 678
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 679
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 685
    :cond_0
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 686
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 688
    :cond_1
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(I)V

    goto :goto_0

    .line 690
    :cond_2
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 691
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(I)V

    .line 694
    :cond_3
    :goto_0
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 696
    :cond_4
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 697
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 648
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->SHOW_HEADER_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->SHOW_HEADER_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderDividerShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderDividerColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 653
    sget-object v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 655
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 656
    sget-object v2, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 657
    :cond_0
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundId:I

    if-eq v0, v1, :cond_1

    .line 658
    sget-object v2, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 659
    :cond_1
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundColor:I

    if-eq v0, v1, :cond_2

    .line 660
    sget-object v2, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    :cond_2
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 664
    sget-object v1, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 665
    :cond_3
    iget v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconId:I

    if-eq v0, v1, :cond_4

    .line 666
    sget-object v1, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->HEADER_ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setCustomHeader(I)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderView:Landroid/view/View;

    .line 497
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    .line 498
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderView()V

    return-void
.end method

.method public final setCustomHeader(Landroid/view/View;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderView:Landroid/view/View;

    const/4 p1, -0x1

    .line 485
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->customHeaderViewId:I

    .line 486
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderView()V

    return-void
.end method

.method public final setHeaderBackground(I)V
    .locals 1

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 542
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundId:I

    const/4 v0, -0x1

    .line 543
    iput v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundColor:I

    .line 544
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackground:Landroid/graphics/drawable/Drawable;

    .line 545
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 2

    .line 526
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 527
    iput v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundId:I

    .line 528
    iput v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundColor:I

    .line 529
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackground:Landroid/graphics/drawable/Drawable;

    .line 530
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 557
    iput v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundId:I

    .line 558
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackgroundColor:I

    .line 559
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerBackground:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderDividerColor(I)V
    .locals 0

    .line 631
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerDividerColor:I

    .line 632
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderDividerColor()V

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 3

    .line 508
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The height must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 509
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerHeight:I

    .line 510
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderHeight()V

    return-void
.end method

.method public final setHeaderIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 1

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconBitmap:Landroid/graphics/Bitmap;

    .line 591
    iput p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconId:I

    .line 592
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIcon:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 2

    .line 576
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 577
    iput v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconId:I

    .line 578
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIcon:Landroid/graphics/drawable/Drawable;

    .line 579
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIconTint(I)V
    .locals 0

    .line 603
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHeaderIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 609
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->headerIconTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 621
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderIcon(Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final showHeader(Z)V
    .locals 4

    .line 476
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader:Z

    .line 477
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/MaterialDialog;->isFitsSystemWindowsLeft()Z

    move-result v1

    xor-int/lit8 p1, p1, 0x1

    .line 478
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v2}, Lde/mrapp/android/dialog/model/MaterialDialog;->isFitsSystemWindowsRight()Z

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-interface {v3}, Lde/mrapp/android/dialog/model/MaterialDialog;->isFitsSystemWindowsBottom()Z

    move-result v3

    .line 477
    invoke-interface {v0, v1, p1, v2, v3}, Lde/mrapp/android/dialog/model/MaterialDialog;->setFitsSystemWindows(ZZZZ)V

    .line 479
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderVisibility()V

    return-void
.end method

.method public final showHeaderDivider(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider:Z

    .line 643
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->adaptHeaderDividerVisibility()V

    return-void
.end method
