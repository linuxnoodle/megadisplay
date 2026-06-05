.class public Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "MaterialDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/MaterialDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/Dialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/MaterialDialogDecorator;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BACKGROUND_BITMAP_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::backgroundBitmap"

.field private static final BACKGROUND_COLOR_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::backgroundColor"

.field private static final BACKGROUND_ID_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::backgroundId"

.field private static final BOTTOM_MARGIN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::bottomMargin"

.field private static final BOTTOM_PADDING_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::bottomPadding"

.field private static final BOTTOM_SCROLLABLE_AREA_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::bottomScrollableArea"

.field private static final CANCELABLE_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::cancelable"

.field private static final CANCEL_ON_TOUCH_OUTSIDE_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::cancelOnTouchOutside"

.field private static final DIVIDER_COLOR_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::dividerColor"

.field private static final DIVIDER_MARGIN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::dividerMargin"

.field private static final FULLSCREEN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::fullscreen"

.field private static final GRAVITY_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::gravity"

.field private static final HEIGHT_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::height"

.field private static final ICON_ATTRIBUTE_ID_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::iconAttribute"

.field private static final ICON_BITMAP_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::iconBitmap"

.field private static final ICON_ID_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::iconId"

.field private static final ICON_TINT_LIST_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::iconTintList"

.field private static final ICON_TINT_MODE_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::iconTintMode"

.field private static final LEFT_MARGIN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::leftMargin"

.field private static final LEFT_PADDING_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::leftPadding"

.field private static final MAX_HEIGHT_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::maxHeight"

.field private static final MAX_WIDTH_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::maxWidth"

.field private static final MESSAGE_COLOR_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::messageColor"

.field private static final MESSAGE_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::message"

.field private static final RIGHT_MARGIN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::rightMargin"

.field private static final RIGHT_PADDING_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::rightPadding"

.field private static final SHOW_DIVIDERS_ON_SCROLL_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::showDividersOnScroll"

.field private static final TITLE_COLOR_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::titleColor"

.field private static final TITLE_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::title"

.field private static final TOP_MARGIN_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::topMargin"

.field private static final TOP_PADDING_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::topPadding"

.field private static final TOP_SCROLLABLE_AREA_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::topScrollableArea"

.field private static final WIDTH_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::width"

.field private static final WINDOW_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::windowBackgroundBitmap"

.field private static final WINDOW_BACKGROUND_ID_EXTRA:Ljava/lang/String; = "MaterialDialogDecorator::windowBackgroundId"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundColor:I

.field private backgroundId:I

.field private cancelable:Z

.field private canceledOnTouchOutside:Z

.field private contentContainer:Landroid/view/ViewGroup;

.field private customMessageView:Landroid/view/View;

.field private customMessageViewId:I

.field private customTitleView:Landroid/view/View;

.field private customTitleViewId:I

.field private customView:Landroid/view/View;

.field private customViewId:I

.field private dividerColor:I

.field private dividerMargin:I

.field private fitsSystemWindows:[Z

.field private fullscreen:Z

.field private gravity:I

.field private height:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconAttributeId:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconId:I

.field private iconImageView:Landroid/widget/ImageView;

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private margin:[I

.field private maxHeight:I

.field private maxWidth:I

.field private message:Ljava/lang/CharSequence;

.field private messageColor:I

.field private messageContainer:Landroid/view/ViewGroup;

.field private messageTextView:Landroid/widget/TextView;

.field private messageTypeface:Landroid/graphics/Typeface;

.field private padding:[I

.field private scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

.field private showDividersOnScroll:Z

.field private systemWindowInsets:Landroid/graphics/Rect;

.field private title:Ljava/lang/CharSequence;

.field private titleColor:I

.field private titleContainer:Landroid/view/ViewGroup;

.field private titleTextView:Landroid/widget/TextView;

.field private titleTypeface:Landroid/graphics/Typeface;

.field private width:I

.field private windowBackground:Landroid/graphics/drawable/Drawable;

.field private windowBackgroundBitmap:Landroid/graphics/Bitmap;

.field private windowBackgroundId:I

.field private windowInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/Dialog;)V
    .locals 2

    .line 1110
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    const/4 p1, -0x1

    .line 342
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundId:I

    const/16 v0, 0x11

    .line 378
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->gravity:I

    const/4 v0, -0x2

    .line 383
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->width:I

    .line 388
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->height:I

    .line 393
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxWidth:I

    .line 398
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxHeight:I

    const/4 v0, 0x0

    .line 403
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    .line 408
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    .line 449
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconId:I

    .line 454
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconAttributeId:I

    .line 469
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 504
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundId:I

    .line 509
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundColor:I

    .line 519
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

    .line 529
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

    .line 539
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

    const/4 p1, 0x4

    .line 545
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$002(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 77
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->systemWindowInsets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method private adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 6

    .line 1034
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1035
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 1038
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v2

    .line 1039
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1042
    instance-of v3, v2, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1043
    check-cast v2, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;

    .line 1044
    invoke-virtual {v2, v4}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1047
    :cond_1
    instance-of v3, p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    .line 1048
    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    .line 1050
    new-instance v3, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v1

    aput-object v0, v5, v4

    invoke-direct {v3, v5}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1052
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getRadius()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setRadius(I)V

    .line 1053
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 1055
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setX(I)V

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1060
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->setY(I)V

    .line 1063
    :cond_3
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v3, p1}, Lde/mrapp/android/dialog/drawable/CircleTransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 1065
    :cond_4
    instance-of v3, p1, Lde/mrapp/android/dialog/animation/CrossFadeTransitionAnimation;

    if-eqz v3, :cond_5

    .line 1066
    new-instance v3, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v1

    aput-object v0, v5, v4

    invoke-direct {v3, v5}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1068
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 1069
    invoke-virtual {p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation;->getDuration()I

    move-result p1

    invoke-virtual {v3, p1}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->startTransition(I)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 1072
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type of animation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_3
    invoke-static {p1, v1}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1080
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1081
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v2

    .line 1080
    :goto_4
    invoke-static {p1, v0}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method private adaptContentContainerVisibility()V
    .locals 2

    .line 1090
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomViewUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1093
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    .line 1095
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1096
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adaptContentView()V
    .locals 1

    .line 886
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateContentView()Landroid/view/View;

    :cond_0
    return-void
.end method

.method private adaptDividerColor()V
    .locals 2

    .line 864
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerColor:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setDividerColor(I)V

    :cond_0
    return-void
.end method

.method private adaptDividerMargin()V
    .locals 2

    .line 875
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    iget v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerMargin:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setDividerMargin(I)V

    :cond_0
    return-void
.end method

.method private adaptDividerVisibility()V
    .locals 2

    .line 853
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll:Z

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->showDividersOnScroll(Z)V

    :cond_0
    return-void
.end method

.method private adaptIcon()V
    .locals 2

    .line 949
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 950
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 951
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 952
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    :cond_1
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleContainerVisibility()V

    return-void
.end method

.method private adaptLayoutParams()V
    .locals 2

    .line 816
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    .line 818
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 819
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->createLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setFullscreen(Z)V

    .line 821
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setMaxWidth(I)V

    .line 822
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setMaxHeight(I)V

    :cond_0
    return-void
.end method

.method private adaptMessage()V
    .locals 2

    .line 982
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 983
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->message:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 987
    :cond_1
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageContainerVisibility()V

    return-void
.end method

.method private adaptMessageColor()V
    .locals 2

    .line 994
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 995
    iget v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private adaptMessageContainerVisibility()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1014
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomMessageUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->message:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1021
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_1

    .line 1017
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1018
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private adaptMessageTypeface()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private adaptMessageView()V
    .locals 1

    .line 908
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 909
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateMessageView()Landroid/view/View;

    .line 910
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessage()V

    .line 911
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageColor()V

    .line 912
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageTypeface()V

    :cond_0
    return-void
.end method

.method private adaptPadding()V
    .locals 5

    .line 830
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingRight()I

    move-result v3

    .line 834
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingBottom()I

    move-result v4

    .line 833
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private adaptScrollableArea()V
    .locals 2

    .line 842
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea;)V

    :cond_0
    return-void
.end method

.method private adaptTitle()V
    .locals 2

    .line 938
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleContainerVisibility()V

    return-void
.end method

.method private adaptTitleColor()V
    .locals 2

    .line 920
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 921
    iget v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private adaptTitleContainerVisibility()V
    .locals 2

    .line 964
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 965
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCustomTitleUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 971
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 972
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_1

    .line 968
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 969
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->notifyOnAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private adaptTitleTypeface()V
    .locals 2

    .line 929
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private adaptTitleView()V
    .locals 1

    .line 895
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 896
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateTitleView()Landroid/view/View;

    .line 897
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitle()V

    .line 898
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleColor()V

    .line 899
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleTypeface()V

    .line 900
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    :cond_0
    return-void
.end method

.method private adaptWindowBackgroundAndInset()V
    .locals 3

    .line 805
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/view/DialogRootView;->setWindowBackgroundAndInset(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private createLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 8

    .line 585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 586
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 589
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsLeft()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->systemWindowInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 591
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsTop()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->systemWindowInsets:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 594
    :goto_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsRight()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->systemWindowInsets:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 597
    :goto_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFitsSystemWindowsBottom()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->systemWindowInsets:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 599
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLeftMargin()I

    move-result v5

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    .line 600
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTopMargin()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetTop()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/2addr v1, v3

    .line 601
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRightMargin()I

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetRight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int/2addr v3, v4

    .line 602
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBottomMargin()I

    move-result v4

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWindowInsetBottom()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v4, v2

    .line 604
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWidth()I

    move-result v2

    add-int v6, v5, v3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v2, v6, v7}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLayoutDimension(III)I

    move-result v2

    .line 606
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getHeight()I

    move-result v6

    add-int v7, v1, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v6, v7, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLayoutDimension(III)I

    move-result v0

    .line 607
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 608
    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 609
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 610
    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 611
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 613
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0xe

    .line 614
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 617
    :cond_4
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0xf

    .line 618
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 621
    :cond_5
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0x9

    .line 622
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 625
    :cond_6
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0xa

    .line 626
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 629
    :cond_7
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0xb

    .line 630
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 633
    :cond_8
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xc

    .line 634
    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_9
    return-object v6
.end method

.method private createWindowInsetsListener()Landroidx/core/view/OnApplyWindowInsetsListener;
    .locals 1

    .line 561
    new-instance v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;-><init>(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;)V

    return-object v0
.end method

.method private getLayoutDimension(III)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    sub-int/2addr p3, p2

    .line 659
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private inflateContentContainer()V
    .locals 3

    .line 789
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    .line 791
    sget v1, Lde/mrapp/android/dialog/R$id;->content_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 792
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 794
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 795
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    return-void
.end method

.method private inflateContentView()Landroid/view/View;
    .locals 4

    .line 767
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 768
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateContentContainer()V

    .line 770
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 772
    :cond_0
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 773
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 774
    iget v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 778
    :cond_1
    :goto_0
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptContentContainerVisibility()V

    .line 779
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private inflateMessageContainer()V
    .locals 4

    .line 748
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    .line 750
    sget v1, Lde/mrapp/android/dialog/R$id;->message_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 751
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 755
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    return-void
.end method

.method private inflateMessageView()Landroid/view/View;
    .locals 5

    .line 720
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 721
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateMessageContainer()V

    .line 723
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 724
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 725
    :cond_0
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 726
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 727
    iget v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 728
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 730
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 731
    sget v2, Lde/mrapp/android/dialog/R$layout;->material_dialog_message:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    .line 732
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 733
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 736
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 737
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    :cond_2
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    .line 738
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_3
    return-object v1
.end method

.method private inflateTitleContainer()V
    .locals 4

    .line 701
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    .line 703
    sget v1, Lde/mrapp/android/dialog/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 704
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_0
    return-void
.end method

.method private inflateTitleView()Landroid/view/View;
    .locals 5

    .line 671
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 672
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateTitleContainer()V

    .line 674
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 676
    :cond_0
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 677
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 678
    iget v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 679
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 682
    sget v2, Lde/mrapp/android/dialog/R$layout;->material_dialog_title:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    .line 683
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 684
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 687
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 688
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTextView:Landroid/widget/TextView;

    .line 689
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 690
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_3
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconImageView:Landroid/widget/ImageView;

    .line 691
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final areDividersShownOnScroll()Z
    .locals 1

    .line 1387
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll:Z

    return v0
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1532
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBottomMargin()I
    .locals 2

    .line 1291
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getDividerColor()I
    .locals 1

    .line 1398
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerColor:I

    return v0
.end method

.method public final getDividerMargin()I
    .locals 1

    .line 1409
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerMargin:I

    return v0
.end method

.method public final getGravity()I
    .locals 1

    .line 1205
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->gravity:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1231
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->height:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1421
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1455
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1472
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getLeftMargin()I
    .locals 2

    .line 1276
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getMaxHeight()I
    .locals 1

    .line 1261
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxHeight:I

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .line 1246
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxWidth:I

    return v0
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1641
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getMessageColor()I
    .locals 1

    .line 1508
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageColor:I

    return v0
.end method

.method public final getMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1520
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getPaddingBottom()I
    .locals 2

    .line 1321
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 2

    .line 1306
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingRight()I
    .locals 2

    .line 1316
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getPaddingTop()I
    .locals 2

    .line 1311
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getRightMargin()I
    .locals 2

    .line 1286
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;
    .locals 1

    .line 1370
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1657
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .line 1484
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleColor:I

    return v0
.end method

.method public final getTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1496
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getTopMargin()I
    .locals 2

    .line 1281
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1216
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->width:I

    return v0
.end method

.method public final getWindowBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1115
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getWindowInsetBottom()I
    .locals 1

    .line 1160
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getWindowInsetLeft()I
    .locals 1

    .line 1145
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getWindowInsetRight()I
    .locals 1

    .line 1155
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getWindowInsetTop()I
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final isCancelable()Z
    .locals 1

    .line 1179
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->cancelable:Z

    return v0
.end method

.method public final isCanceledOnTouchOutside()Z
    .locals 1

    .line 1165
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->canceledOnTouchOutside:Z

    return v0
.end method

.method public final isCustomMessageUsed()Z
    .locals 2

    .line 1603
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

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

.method public final isCustomTitleUsed()Z
    .locals 2

    .line 1584
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

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

.method public final isCustomViewUsed()Z
    .locals 2

    .line 1622
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

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

.method public final isFitsSystemWindowsBottom()Z
    .locals 2

    .line 1351
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isFitsSystemWindowsLeft()Z
    .locals 2

    .line 1336
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isFitsSystemWindowsRight()Z
    .locals 2

    .line 1346
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isFitsSystemWindowsTop()Z
    .locals 2

    .line 1341
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isFullscreen()Z
    .locals 1

    .line 1193
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fullscreen:Z

    return v0
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 77
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

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

    .line 1790
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->createWindowInsetsListener()Landroidx/core/view/OnApplyWindowInsetsListener;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1791
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateTitleView()Landroid/view/View;

    move-result-object p1

    .line 1792
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateMessageView()Landroid/view/View;

    move-result-object p2

    .line 1793
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->inflateContentView()Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1796
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptWindowBackgroundAndInset()V

    .line 1797
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    .line 1798
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptPadding()V

    .line 1799
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptScrollableArea()V

    .line 1800
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptDividerVisibility()V

    .line 1801
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitle()V

    .line 1802
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleColor()V

    .line 1803
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleTypeface()V

    .line 1804
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    .line 1805
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessage()V

    .line 1806
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageColor()V

    .line 1807
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageTypeface()V

    const/4 p1, 0x0

    .line 1808
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    .line 1809
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1810
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p3, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p3, Lde/mrapp/android/dialog/ScrollableArea$Area;->MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p3, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1816
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 2

    .line 1821
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1823
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleContainer:Landroid/view/ViewGroup;

    .line 1826
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1827
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1828
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageContainer:Landroid/view/ViewGroup;

    .line 1831
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1832
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1833
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->contentContainer:Landroid/view/ViewGroup;

    .line 1836
    :cond_2
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTextView:Landroid/widget/TextView;

    .line 1837
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1727
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->CANCELABLE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCancelable(Z)V

    .line 1728
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->CANCEL_ON_TOUCH_OUTSIDE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCanceledOnTouchOutside(Z)V

    .line 1729
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->FULLSCREEN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFullscreen(Z)V

    .line 1730
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->GRAVITY_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setGravity(I)V

    .line 1731
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WIDTH_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWidth(I)V

    .line 1732
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setHeight(I)V

    .line 1733
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MAX_WIDTH_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxWidth(I)V

    .line 1734
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MAX_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMaxHeight(I)V

    .line 1735
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->LEFT_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_MARGIN_EXTRA:Ljava/lang/String;

    .line 1736
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->RIGHT_MARGIN_EXTRA:Ljava/lang/String;

    .line 1737
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_MARGIN_EXTRA:Ljava/lang/String;

    .line 1738
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1735
    invoke-virtual {p0, v0, v1, v2, v3}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMargin(IIII)V

    .line 1739
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->LEFT_PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_PADDING_EXTRA:Ljava/lang/String;

    .line 1740
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->RIGHT_PADDING_EXTRA:Ljava/lang/String;

    .line 1741
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_PADDING_EXTRA:Ljava/lang/String;

    .line 1742
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1739
    invoke-virtual {p0, v0, v1, v2, v3}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setPadding(IIII)V

    .line 1743
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_SCROLLABLE_AREA_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ScrollableArea$Area;

    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_SCROLLABLE_AREA_EXTRA:Ljava/lang/String;

    .line 1744
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 1743
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    .line 1745
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->SHOW_DIVIDERS_ON_SCROLL_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll(Z)V

    .line 1746
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerColor(I)V

    .line 1747
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->DIVIDER_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setDividerMargin(I)V

    .line 1748
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TITLE_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitleColor(I)V

    .line 1749
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MESSAGE_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessageColor(I)V

    .line 1750
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TITLE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitle(Ljava/lang/CharSequence;)V

    .line 1751
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MESSAGE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(Ljava/lang/CharSequence;)V

    .line 1752
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1753
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    .line 1754
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1760
    :cond_0
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WINDOW_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1761
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1763
    :cond_1
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WINDOW_BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1764
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setWindowBackground(I)V

    .line 1767
    :cond_2
    :goto_0
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1768
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1769
    :cond_3
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1770
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIcon(I)V

    goto :goto_1

    .line 1771
    :cond_4
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_ATTRIBUTE_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1772
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconAttribute(I)V

    .line 1775
    :cond_5
    :goto_1
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1776
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(I)V

    goto :goto_2

    .line 1777
    :cond_6
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1778
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(I)V

    goto :goto_2

    .line 1779
    :cond_7
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1780
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1673
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->CANCELABLE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCancelable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1674
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->CANCEL_ON_TOUCH_OUTSIDE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isCanceledOnTouchOutside()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1675
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->FULLSCREEN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->isFullscreen()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1676
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->GRAVITY_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1677
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WIDTH_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1678
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MAX_WIDTH_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1680
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MAX_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMaxHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1681
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->LEFT_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getLeftMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1682
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTopMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1683
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->RIGHT_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getRightMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1684
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getBottomMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1685
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->LEFT_PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1686
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1687
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->RIGHT_PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1688
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_PADDING_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TOP_SCROLLABLE_AREA_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/ScrollableArea;->getTopScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1690
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BOTTOM_SCROLLABLE_AREA_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 1691
    invoke-virtual {v1}, Lde/mrapp/android/dialog/ScrollableArea;->getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v1

    .line 1690
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1692
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->SHOW_DIVIDERS_ON_SCROLL_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->areDividersShownOnScroll()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1693
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->DIVIDER_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getDividerMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1695
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TITLE_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitleColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1696
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MESSAGE_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessageColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1697
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->TITLE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1698
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->MESSAGE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1699
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_TINT_LIST_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1700
    sget-object v0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_TINT_MODE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1702
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1703
    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WINDOW_BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1704
    :cond_0
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundId:I

    if-eq v0, v1, :cond_1

    .line 1705
    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->WINDOW_BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1708
    :cond_1
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1709
    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 1710
    :cond_2
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconId:I

    if-eq v0, v1, :cond_3

    .line 1711
    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1712
    :cond_3
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconAttributeId:I

    if-eq v0, v1, :cond_4

    .line 1713
    sget-object v2, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->ICON_ATTRIBUTE_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1716
    :cond_4
    :goto_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1717
    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_BITMAP_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1718
    :cond_5
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundId:I

    if-eq v0, v1, :cond_6

    .line 1719
    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_ID_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1720
    :cond_6
    iget v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundColor:I

    if-eq v0, v1, :cond_7

    .line 1721
    sget-object v1, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->BACKGROUND_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final setBackground(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1554
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    const/4 v0, 0x0

    .line 1560
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1561
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundId:I

    const/4 v0, -0x1

    .line 1562
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundColor:I

    .line 1563
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->background:Landroid/graphics/drawable/Drawable;

    .line 1564
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1537
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 2

    .line 1543
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 1544
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundId:I

    .line 1545
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundColor:I

    if-eqz p1, :cond_0

    .line 1546
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1547
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->background:Landroid/graphics/drawable/Drawable;

    .line 1549
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1569
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    const/4 v0, 0x0

    .line 1575
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 1576
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundId:I

    .line 1577
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->backgroundColor:I

    .line 1578
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->background:Landroid/graphics/drawable/Drawable;

    .line 1579
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 0

    .line 1184
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->cancelable:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1187
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1170
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->canceledOnTouchOutside:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1173
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public final setCustomMessage(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1615
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageView:Landroid/view/View;

    .line 1616
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

    .line 1617
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageView()V

    return-void
.end method

.method public final setCustomMessage(Landroid/view/View;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageView:Landroid/view/View;

    const/4 p1, -0x1

    .line 1609
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customMessageViewId:I

    .line 1610
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageView()V

    return-void
.end method

.method public final setCustomTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1596
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleView:Landroid/view/View;

    .line 1597
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

    .line 1598
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleView()V

    return-void
.end method

.method public final setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleView:Landroid/view/View;

    const/4 p1, -0x1

    .line 1590
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customTitleViewId:I

    .line 1591
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleView()V

    return-void
.end method

.method public final setDividerColor(I)V
    .locals 0

    .line 1403
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerColor:I

    .line 1404
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptDividerColor()V

    return-void
.end method

.method public final setDividerMargin(I)V
    .locals 3

    .line 1414
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The margin must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1415
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->dividerMargin:I

    .line 1416
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptDividerMargin()V

    return-void
.end method

.method public final setFitsSystemWindows(Z)V
    .locals 0

    .line 1356
    invoke-virtual {p0, p1, p1, p1, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setFitsSystemWindows(ZZZZ)V

    return-void
.end method

.method public final setFitsSystemWindows(ZZZZ)V
    .locals 2

    const/4 v0, 0x4

    .line 1363
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const/4 p1, 0x1

    aput-boolean p2, v0, p1

    const/4 p1, 0x2

    aput-boolean p3, v0, p1

    const/4 p1, 0x3

    aput-boolean p4, v0, p1

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fitsSystemWindows:[Z

    .line 1364
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 0

    .line 1198
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->fullscreen:Z

    .line 1199
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    const/4 p1, 0x0

    .line 1200
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptBackground(Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    .line 1210
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->gravity:I

    .line 1211
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setHeight(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 1237
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The height must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1240
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->height:I

    .line 1241
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1435
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1436
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconId:I

    const/4 v0, -0x1

    .line 1437
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconAttributeId:I

    .line 1438
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    .line 1439
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1426
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 1427
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconId:I

    .line 1428
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconAttributeId:I

    if-eqz p1, :cond_0

    .line 1429
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    return-void
.end method

.method public final setIconAttribute(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1444
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 1445
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconId:I

    .line 1446
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconAttributeId:I

    .line 1448
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 1449
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->icon:Landroid/graphics/drawable/Drawable;

    .line 1450
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    return-void
.end method

.method public final setIconTint(I)V
    .locals 0

    .line 1460
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintList:Landroid/content/res/ColorStateList;

    .line 1466
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    return-void
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1477
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The icon tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1478
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1479
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptIcon()V

    return-void
.end method

.method public final setMargin(IIII)V
    .locals 3

    .line 1296
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The left margin must be at least 0"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1297
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The top margin must be at least 0"

    invoke-virtual {v0, p2, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1298
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The right margin must be at least 0"

    invoke-virtual {v0, p3, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1299
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The bottom margin must be at least 0"

    invoke-virtual {v0, p4, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1300
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->margin:[I

    .line 1301
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1267
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The maximum height must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1270
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxHeight:I

    .line 1271
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1252
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The maximum width must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1255
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->maxWidth:I

    .line 1256
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setMessage(I)V
    .locals 1

    .line 1652
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1646
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->message:Ljava/lang/CharSequence;

    .line 1647
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessage()V

    return-void
.end method

.method public final setMessageColor(I)V
    .locals 0

    .line 1513
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageColor:I

    .line 1514
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageColor()V

    return-void
.end method

.method public final setMessageTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1525
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The typeface may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1526
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->messageTypeface:Landroid/graphics/Typeface;

    .line 1527
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptMessageTypeface()V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 3

    .line 1326
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The left padding must be at least 0"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1327
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The top padding must be at least 0"

    invoke-virtual {v0, p2, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1328
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The right padding must be at least 0"

    invoke-virtual {v0, p3, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1329
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The bottom padding must be at least 0"

    invoke-virtual {v0, p4, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1330
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->padding:[I

    .line 1331
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptPadding()V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 1375
    invoke-static {p1}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 1376
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptScrollableArea()V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 1381
    invoke-static {p1, p2}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 1382
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptScrollableArea()V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1668
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1662
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->title:Ljava/lang/CharSequence;

    .line 1663
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitle()V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 0

    .line 1489
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleColor:I

    .line 1490
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleColor()V

    return-void
.end method

.method public final setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1501
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The typeface may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->titleTypeface:Landroid/graphics/Typeface;

    .line 1503
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptTitleTypeface()V

    return-void
.end method

.method public final setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1634
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customView:Landroid/view/View;

    .line 1635
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

    .line 1636
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptContentView()V

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0

    .line 1627
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customView:Landroid/view/View;

    const/4 p1, -0x1

    .line 1628
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->customViewId:I

    .line 1629
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptContentView()V

    return-void
.end method

.method public final setWidth(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 1222
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The width must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1225
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->width:I

    .line 1226
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptLayoutParams()V

    return-void
.end method

.method public final setWindowBackground(I)V
    .locals 1

    .line 1120
    iput p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundId:I

    const/4 v0, 0x0

    .line 1121
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 1122
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    .line 1123
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    .line 1124
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1125
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptWindowBackgroundAndInset()V

    return-void
.end method

.method public final setWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    .line 1130
    iput v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundId:I

    .line 1131
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1132
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    .line 1134
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowInsets:Landroid/graphics/Rect;

    .line 1136
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->windowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1140
    :cond_1
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptWindowBackgroundAndInset()V

    return-void
.end method

.method public final showDividersOnScroll(Z)V
    .locals 0

    .line 1392
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->showDividersOnScroll:Z

    .line 1393
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->adaptDividerVisibility()V

    return-void
.end method
