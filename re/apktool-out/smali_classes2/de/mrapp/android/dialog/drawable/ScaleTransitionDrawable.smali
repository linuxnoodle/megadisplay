.class public Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;
.super Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;
.source "ScaleTransitionDrawable.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected final onDraw(FLandroid/graphics/Canvas;)V
    .locals 7

    .line 54
    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 55
    iget-object v1, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0, v3}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    sub-float/2addr v4, p1

    int-to-float p1, v0

    mul-float p1, p1, v4

    .line 62
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v5, v1

    mul-float v4, v4, v5

    .line 63
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 65
    invoke-virtual {p0, v4}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v2

    int-to-float v3, v0

    mul-float v3, v3, p1

    .line 66
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v1

    mul-float p1, p1, v5

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move-object v6, v4

    move v4, p1

    move p1, v3

    move-object v3, v6

    .line 70
    :goto_0
    iget-object v5, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 71
    iget-object v5, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr p1, v0

    add-int/2addr v4, v1

    .line 72
    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onEndTransition()V
    .locals 2

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onStartTransition()V
    .locals 2

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/drawable/ScaleTransitionDrawable;->bounds:Landroid/graphics/Rect;

    return-void
.end method
