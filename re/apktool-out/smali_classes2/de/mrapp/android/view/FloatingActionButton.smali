.class public Lde/mrapp/android/view/FloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/view/FloatingActionButton$Size;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private activatedColor:I

.field private color:I

.field private disabledColor:I

.field private imageButton:Landroid/widget/ImageButton;

.field private pressedColor:I

.field private size:Lde/mrapp/android/view/FloatingActionButton$Size;

.field private visibilityAnimationDuration:J

.field private visibilityAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/view/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 555
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 556
    invoke-direct {p0, p2}, Lde/mrapp/android/view/FloatingActionButton;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 577
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 578
    invoke-direct {p0, p2}, Lde/mrapp/android/view/FloatingActionButton;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 604
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 605
    invoke-direct {p0, p2}, Lde/mrapp/android/view/FloatingActionButton;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$001(Lde/mrapp/android/view/FloatingActionButton;I)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Lde/mrapp/android/view/FloatingActionButton;I)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$202(Lde/mrapp/android/view/FloatingActionButton;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 61
    iput-object p1, p0, Lde/mrapp/android/view/FloatingActionButton;->visibilityAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private adaptImageButtonBackground()V
    .locals 6

    .line 343
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->createStateListBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    new-array v4, v3, [I

    const/4 v5, 0x1

    new-array v5, v5, [[I

    aput-object v4, v5, v3

    .line 347
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getPressedColor()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v2, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private adaptImageButtonSize()V
    .locals 2

    .line 329
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->getPixelSize()I

    move-result v0

    .line 330
    iget-object v1, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 331
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 332
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 333
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private adaptShadow()V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getSize()Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/FloatingActionButton$Size;->NORMAL:Lde/mrapp/android/view/FloatingActionButton$Size;

    if-ne v0, v1, :cond_0

    .line 316
    sget v0, Lde/mrapp/android/view/R$drawable;->floating_action_button_shadow_normal:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getSize()Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/FloatingActionButton$Size;->SMALL:Lde/mrapp/android/view/FloatingActionButton$Size;

    if-ne v0, v1, :cond_1

    .line 318
    sget v0, Lde/mrapp/android/view/R$drawable;->floating_action_button_shadow_small:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 320
    :cond_1
    sget v0, Lde/mrapp/android/view/R$drawable;->floating_action_button_shadow_large:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private animateVisibility(IJ)V
    .locals 3

    .line 477
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->visibilityAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->createVisibilityAnimatorListener(I)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 483
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getScaleX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    long-to-float p2, p2

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long p2, p2

    .line 484
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 486
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 487
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/view/FloatingActionButton;->visibilityAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private createActivatedBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 384
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getActivatedColor()I

    move-result v1

    invoke-direct {p0, v1}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 386
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 422
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 423
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 424
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method private createDisabledBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 408
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getDisabledColor()I

    move-result v1

    invoke-direct {p0, v1}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 410
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createPressedBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 396
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getPressedColor()I

    move-result v1

    invoke-direct {p0, v1}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 398
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createStateListBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 362
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10102fe

    const v2, 0x101009e

    .line 369
    filled-new-array {v2, v1}, [I

    move-result-object v1

    .line 370
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->createActivatedBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 369
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 371
    filled-new-array {v2}, [I

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getColor()I

    move-result v2

    invoke-direct {p0, v2}, Lde/mrapp/android/view/FloatingActionButton;->createBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 373
    new-array v1, v1, [I

    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->createDisabledBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createVisibilityAnimatorListener(I)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 502
    new-instance v0, Lde/mrapp/android/view/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/view/FloatingActionButton$1;-><init>(Lde/mrapp/android/view/FloatingActionButton;I)V

    return-object v0
.end method

.method private getControlActivatedColor()I
    .locals 2

    .line 462
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$attr;->colorControlActivated:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 464
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private getControlHighlightColor()I
    .locals 2

    .line 450
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$attr;->colorControlHighlight:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private getPixelSize()I
    .locals 2

    .line 434
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getSize()Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/FloatingActionButton$Size;->NORMAL:Lde/mrapp/android/view/FloatingActionButton$Size;

    if-ne v0, v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->floating_action_button_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getSize()Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/FloatingActionButton$Size;->SMALL:Lde/mrapp/android/view/FloatingActionButton$Size;

    if-ne v0, v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->floating_action_button_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->floating_action_button_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private inflateLayout()V
    .locals 3

    .line 187
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    .line 188
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    iget-object v1, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lde/mrapp/android/view/FloatingActionButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->inflateLayout()V

    .line 177
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    .line 178
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptShadow()V

    .line 179
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonSize()V

    .line 180
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonBackground()V

    return-void
.end method

.method private obtainActivatedColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 250
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->getControlActivatedColor()I

    move-result v0

    .line 251
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_activatedColor:I

    .line 252
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->activatedColor:I

    return-void
.end method

.method private obtainColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$attr;->colorAccent:I

    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 239
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_android_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->color:I

    return-void
.end method

.method private obtainDisabledColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$color;->floating_action_button_disabled_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 278
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_disabledColor:I

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->disabledColor:I

    return-void
.end method

.method private obtainIcon(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 290
    sget v0, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_android_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private obtainPressedColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 263
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->getControlHighlightColor()I

    move-result v0

    .line 264
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_pressedColor:I

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->pressedColor:I

    return-void
.end method

.method private obtainSize(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 225
    sget-object v0, Lde/mrapp/android/view/FloatingActionButton$Size;->NORMAL:Lde/mrapp/android/view/FloatingActionButton$Size;

    .line 226
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_size:I

    .line 227
    invoke-virtual {v0}, Lde/mrapp/android/view/FloatingActionButton$Size;->getValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 226
    invoke-static {p1}, Lde/mrapp/android/view/FloatingActionButton$Size;->fromValue(I)Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/view/FloatingActionButton;->size:Lde/mrapp/android/view/FloatingActionButton$Size;

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainSize(Landroid/content/res/TypedArray;)V

    .line 206
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainColor(Landroid/content/res/TypedArray;)V

    .line 207
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainActivatedColor(Landroid/content/res/TypedArray;)V

    .line 208
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainPressedColor(Landroid/content/res/TypedArray;)V

    .line 209
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainDisabledColor(Landroid/content/res/TypedArray;)V

    .line 210
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainIcon(Landroid/content/res/TypedArray;)V

    .line 211
    invoke-direct {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->obtainVisibilityAnimationDuration(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    throw v0
.end method

.method private obtainVisibilityAnimationDuration(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$integer;->floating_action_button_visibility_animation_duration:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 305
    sget v1, Lde/mrapp/android/view/R$styleable;->FloatingActionButton_visibilityAnimationDuration:I

    .line 306
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v0, p1

    .line 308
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/view/FloatingActionButton;->setVisibilityAnimationDuration(J)V

    return-void
.end method


# virtual methods
.method public final getActivatedColor()I
    .locals 1

    .line 693
    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton;->activatedColor:I

    return v0
.end method

.method public final getColor()I
    .locals 1

    .line 671
    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton;->color:I

    return v0
.end method

.method public final getDisabledColor()I
    .locals 1

    .line 737
    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton;->disabledColor:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 640
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getPressedColor()I
    .locals 1

    .line 715
    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton;->pressedColor:I

    return v0
.end method

.method public final getSize()Lde/mrapp/android/view/FloatingActionButton$Size;
    .locals 1

    .line 615
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->size:Lde/mrapp/android/view/FloatingActionButton$Size;

    return-object v0
.end method

.method public final getVisibilityAnimationDuration()J
    .locals 2

    .line 759
    iget-wide v0, p0, Lde/mrapp/android/view/FloatingActionButton;->visibilityAnimationDuration:J

    return-wide v0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 817
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 819
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lde/mrapp/android/view/R$dimen;->floating_action_button_shadow_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 820
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->getPixelSize()I

    move-result p2

    add-int/2addr p2, p1

    .line 821
    invoke-virtual {p0, p2, p2}, Lde/mrapp/android/view/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setActivatedColor(I)V
    .locals 0

    .line 704
    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->activatedColor:I

    .line 705
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonBackground()V

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 681
    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->color:I

    .line 682
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonBackground()V

    return-void
.end method

.method public final setDisabledColor(I)V
    .locals 0

    .line 748
    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->disabledColor:I

    .line 749
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonBackground()V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 811
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 812
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 662
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 806
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setPressedColor(I)V
    .locals 0

    .line 726
    iput p1, p0, Lde/mrapp/android/view/FloatingActionButton;->pressedColor:I

    .line 727
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonBackground()V

    return-void
.end method

.method public final setSize(Lde/mrapp/android/view/FloatingActionButton$Size;)V
    .locals 2

    .line 626
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The size may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iput-object p1, p0, Lde/mrapp/android/view/FloatingActionButton;->size:Lde/mrapp/android/view/FloatingActionButton$Size;

    .line 628
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptShadow()V

    .line 629
    invoke-direct {p0}, Lde/mrapp/android/view/FloatingActionButton;->adaptImageButtonSize()V

    .line 630
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->requestLayout()V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    .line 793
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 795
    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->setScaleX(F)V

    .line 796
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->setScaleY(F)V

    return-void
.end method

.method public final setVisibility(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 785
    invoke-virtual {p0}, Lde/mrapp/android/view/FloatingActionButton;->getVisibilityAnimationDuration()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lde/mrapp/android/view/FloatingActionButton;->animateVisibility(IJ)V

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/FloatingActionButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setVisibilityAnimationDuration(J)V
    .locals 6

    .line 770
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, 0x0

    const-string v5, "The animation duration must be at least 0"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 771
    iput-wide p1, p0, Lde/mrapp/android/view/FloatingActionButton;->visibilityAnimationDuration:J

    return-void
.end method
