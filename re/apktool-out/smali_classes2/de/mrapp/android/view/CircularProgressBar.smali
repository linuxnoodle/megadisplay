.class public Lde/mrapp/android/view/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# instance fields
.field private circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

.field private color:I

.field private thickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/view/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    invoke-direct {p0, p2}, Lde/mrapp/android/view/CircularProgressBar;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    invoke-direct {p0, p2}, Lde/mrapp/android/view/CircularProgressBar;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 198
    invoke-direct {p0, p2}, Lde/mrapp/android/view/CircularProgressBar;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lde/mrapp/android/view/CircularProgressBar;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0}, Lde/mrapp/android/view/CircularProgressBar;->initializeDrawable()V

    return-void
.end method

.method private initializeDrawable()V
    .locals 3

    .line 120
    new-instance v0, Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getColor()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getThickness()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;-><init>(II)V

    iput-object v0, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    .line 121
    invoke-virtual {v0, p0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method private obtainColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$attr;->colorAccent:I

    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 98
    sget v1, Lde/mrapp/android/view/R$styleable;->CircularProgressBar_android_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/CircularProgressBar;->color:I

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/R$styleable;->CircularProgressBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/view/CircularProgressBar;->obtainColor(Landroid/content/res/TypedArray;)V

    .line 83
    invoke-direct {p0, p1}, Lde/mrapp/android/view/CircularProgressBar;->obtainThickness(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    throw v0
.end method

.method private obtainThickness(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->circular_progress_bar_thickness_normal:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 111
    sget v1, Lde/mrapp/android/view/R$styleable;->CircularProgressBar_android_thickness:I

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/view/CircularProgressBar;->thickness:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 246
    iget-object v0, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getColor()I
    .locals 1

    .line 207
    iget v0, p0, Lde/mrapp/android/view/CircularProgressBar;->color:I

    return v0
.end method

.method public final getThickness()I
    .locals 1

    .line 228
    iget v0, p0, Lde/mrapp/android/view/CircularProgressBar;->thickness:I

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 253
    iget-object v0, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->start()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 277
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 278
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/view/CircularProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 2

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 285
    iget-object p3, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 287
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 286
    invoke-virtual {p3, p4, v0, p1, p2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->setBounds(IIII)V

    return-void
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 261
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 263
    iget-object p1, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 265
    invoke-virtual {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->start()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 217
    iput p1, p0, Lde/mrapp/android/view/CircularProgressBar;->color:I

    .line 218
    invoke-direct {p0}, Lde/mrapp/android/view/CircularProgressBar;->initializeDrawable()V

    .line 219
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->invalidate()V

    return-void
.end method

.method public final setThickness(I)V
    .locals 0

    .line 238
    iput p1, p0, Lde/mrapp/android/view/CircularProgressBar;->thickness:I

    .line 239
    invoke-direct {p0}, Lde/mrapp/android/view/CircularProgressBar;->initializeDrawable()V

    .line 240
    invoke-virtual {p0}, Lde/mrapp/android/view/CircularProgressBar;->invalidate()V

    return-void
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lde/mrapp/android/view/CircularProgressBar;->circularProgressDrawable:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
