.class public Lcom/woxthebox/draglistview/DragItem;
.super Ljava/lang/Object;
.source "DragItem.java"


# static fields
.field protected static final ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mAnimationDx:F

.field private mAnimationDy:F

.field private mCanDragHorizontally:Z

.field private mDragView:Landroid/view/View;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPosTouchDx:F

.field private mPosTouchDy:F

.field private mPosX:F

.field private mPosY:F

.field private mRealDragView:Landroid/view/View;

.field private mSnapToTouch:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mCanDragHorizontally:Z

    .line 45
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mSnapToTouch:Z

    .line 48
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItem;->hide()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mCanDragHorizontally:Z

    .line 45
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mSnapToTouch:Z

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItem;->hide()V

    return-void
.end method

.method private show()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .line 211
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mCanDragHorizontally:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/woxthebox/draglistview/DragItem;->mPosX:F

    iget v3, p0, Lcom/woxthebox/draglistview/DragItem;->mOffsetX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDx:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/woxthebox/draglistview/DragItem;->mPosY:F

    iget v3, p0, Lcom/woxthebox/draglistview/DragItem;->mOffsetY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDy:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 216
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method canDragHorizontally()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mCanDragHorizontally:Z

    return v0
.end method

.method endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItem;->onEndDragAnimation(Landroid/view/View;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 157
    iget p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosX:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput v0, v3, p1

    const-string v0, "X"

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 158
    iget v3, p0, Lcom/woxthebox/draglistview/DragItem;->mPosY:F

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v1, v5, p1

    const-string v1, "Y"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 159
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, p1

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 160
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method getDragItemView()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method getRealDragView()Landroid/view/View;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    return-object v0
.end method

.method getX()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/woxthebox/draglistview/DragItem;->mPosX:F

    return v0
.end method

.method getY()F
    .locals 1

    .line 195
    iget v0, p0, Lcom/woxthebox/draglistview/DragItem;->mPosY:F

    return v0
.end method

.method hide()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    return-void
.end method

.method isDragging()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSnapToTouch()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItem;->mSnapToTouch:Z

    return v0
.end method

.method public onBindDragView(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 62
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onEndDragAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onMeasureDragView(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 72
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onStartDragAnimation(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method setAnimationDY(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDy:F

    .line 175
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setAnimationDx(F)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDx:F

    .line 169
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setCanDragHorizontally(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItem;->mCanDragHorizontally:Z

    return-void
.end method

.method setOffset(FF)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mOffsetX:F

    .line 206
    iput p2, p0, Lcom/woxthebox/draglistview/DragItem;->mOffsetY:F

    .line 207
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setPosition(FF)V
    .locals 1

    .line 199
    iget v0, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDx:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosX:F

    .line 200
    iget p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDy:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/woxthebox/draglistview/DragItem;->mPosY:F

    .line 201
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method protected setSnapToTouch(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItem;->mSnapToTouch:Z

    return-void
.end method

.method setX(F)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosX:F

    .line 181
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setY(F)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosY:F

    .line 187
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method startDrag(Landroid/view/View;FF)V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItem;->show()V

    .line 120
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/woxthebox/draglistview/DragItem;->onBindDragView(Landroid/view/View;Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/woxthebox/draglistview/DragItem;->onMeasureDragView(Landroid/view/View;Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItem;->onStartDragAnimation(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 130
    iget-boolean p1, p0, Lcom/woxthebox/draglistview/DragItem;->mSnapToTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDx:F

    .line 132
    iput p1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDy:F

    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    sub-float/2addr v0, p2

    .line 134
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItem;->setAnimationDx(F)V

    sub-float/2addr v1, p3

    .line 135
    invoke-virtual {p0, v1}, Lcom/woxthebox/draglistview/DragItem;->setAnimationDY(F)V

    .line 137
    iget p2, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDx:F

    const/4 p3, 0x2

    new-array v0, p3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    const-string v2, "AnimationDx"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 138
    iget v2, p0, Lcom/woxthebox/draglistview/DragItem;->mAnimationDy:F

    new-array v3, p3, [F

    aput v2, v3, v1

    aput p1, v3, p2

    const-string p1, "AnimationDY"

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 139
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p3, v1

    aput-object p1, p3, p2

    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 140
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0xfa

    .line 141
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    sub-float/2addr v0, p2

    .line 144
    iput v0, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDx:F

    sub-float/2addr v1, p3

    .line 145
    iput v1, p0, Lcom/woxthebox/draglistview/DragItem;->mPosTouchDy:F

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    :goto_0
    return-void
.end method
