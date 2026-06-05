.class public Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "AnimateableDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/AnimateableDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/HeaderDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/AnimateableDialogDecorator;"
    }
.end annotation


# instance fields
.field private cancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

.field private dismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

.field private hidden:Z

.field private showAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/model/HeaderDialog;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    return-void
.end method

.method private configureHideAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/view/ViewPropertyAnimator;)V
    .locals 7

    .line 216
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetLeft()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetTop()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v2}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 222
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getX()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 226
    :goto_0
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getY()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getY()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 230
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 232
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v5, v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v2, v0

    .line 233
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 236
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    .line 238
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v4, v0

    .line 239
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 242
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 243
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    cmpl-float p1, v2, v3

    if-eqz p1, :cond_5

    .line 247
    invoke-virtual {p3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    cmpl-float p1, v4, v3

    if-eqz p1, :cond_6

    .line 251
    invoke-virtual {p3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    return-void
.end method

.method private configureShowAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/view/ViewPropertyAnimator;)V
    .locals 8

    .line 155
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetLeft()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetTop()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v2}, Lde/mrapp/android/dialog/model/HeaderDialog;->getWindowInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getX()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 165
    :goto_0
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getY()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getY()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 169
    :goto_1
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 171
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v5, v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    sub-float/2addr v2, v0

    .line 172
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 173
    invoke-virtual {p3, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 176
    :cond_2
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    .line 178
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v4, v1

    .line 179
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 180
    invoke-virtual {p3, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 183
    :cond_3
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 185
    invoke-virtual {p3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_4
    cmpl-float p2, v2, v3

    if-eqz p2, :cond_5

    .line 189
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 190
    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    cmpl-float p2, v4, v3

    if-eqz p2, :cond_6

    .line 194
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 195
    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    return-void
.end method

.method private createAnimator(Landroid/view/View;Landroid/view/View;Lde/mrapp/android/dialog/animation/CircleRevealAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/animation/Animator;
    .locals 8

    .line 279
    invoke-direct {p0, p1, p3}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDuration(Landroid/view/View;Lde/mrapp/android/dialog/animation/DialogAnimation;)J

    move-result-wide v0

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getY()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 282
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 285
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v6, p2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 287
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getX()I

    move-result v2

    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getY()I

    move-result v3

    if-eqz p5, :cond_0

    .line 288
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getRadius()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    if-eqz p5, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getRadius()F

    move-result p2

    .line 287
    :goto_1
    invoke-static {p1, v2, v3, v4, p2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p2

    .line 290
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 292
    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p4, :cond_2

    .line 295
    invoke-virtual {p2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    :cond_2
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p4

    if-eqz p4, :cond_5

    const/4 p4, 0x2

    .line 299
    new-array v2, p4, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p5, :cond_3

    .line 300
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    const/4 v5, 0x0

    aput v4, v2, v5

    if-eqz p5, :cond_4

    goto :goto_3

    .line 301
    :cond_4
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_3
    const/4 p5, 0x1

    aput v3, v2, p5

    .line 300
    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 302
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    invoke-virtual {p3}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->getStartDelay()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 304
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 306
    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p2, p4, v5

    aput-object p1, p4, p5

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p3

    :cond_5
    return-object p2
.end method

.method private createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/FadeAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 90
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/FadeAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/FadeAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 93
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDuration(Landroid/view/View;Lde/mrapp/android/dialog/animation/DialogAnimation;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 94
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/FadeAnimation;->getStartDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/FadeAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 98
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 101
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/FadeAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 128
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getX()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getY()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getAlpha()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDuration(Landroid/view/View;Lde/mrapp/android/dialog/animation/DialogAnimation;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    return-object p1
.end method

.method private createHideAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 356
    new-instance v0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;

    invoke-direct {v0, p0, p2, p1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;-><init>(Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;)V

    return-object v0
.end method

.method private getDuration(Landroid/view/View;Lde/mrapp/android/dialog/animation/DialogAnimation;)J
    .locals 4

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 339
    :goto_0
    invoke-virtual {p2}, Lde/mrapp/android/dialog/animation/DialogAnimation;->getDuration()J

    move-result-wide p1

    long-to-double p1, p1

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final getCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 552
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->cancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final getDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 542
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->dismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final getShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 532
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->showAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final hideAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z
    .locals 10

    .line 478
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hidden:Z

    if-eqz p1, :cond_4

    .line 482
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v2

    .line 483
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 486
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v4

    check-cast v4, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v4}, Lde/mrapp/android/dialog/model/HeaderDialog;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :cond_0
    move-object v6, v2

    .line 488
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/FadeAnimation;

    if-eqz v2, :cond_1

    .line 489
    check-cast p1, Lde/mrapp/android/dialog/animation/FadeAnimation;

    .line 491
    invoke-direct {p0, v6, p1, p2, v1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/FadeAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 494
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return v0

    .line 497
    :cond_1
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    if-eqz v2, :cond_2

    .line 498
    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    .line 502
    invoke-direct {p0, v6, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createHideAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    .line 501
    invoke-direct {p0, v6, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 505
    invoke-direct {p0, v6, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->configureHideAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/view/ViewPropertyAnimator;)V

    .line 506
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    return v0

    .line 509
    :cond_2
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    if-eqz v2, :cond_3

    .line 510
    move-object v7, p1

    check-cast v7, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    .line 512
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v9, 0x0

    move-object v4, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Landroid/view/View;Lde/mrapp/android/dialog/animation/CircleRevealAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 516
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return v0

    .line 520
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type of animation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return v1
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 47
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

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

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 0

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->cancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->dismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->showAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final showAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z
    .locals 10

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hidden:Z

    if-eqz p1, :cond_4

    .line 420
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 421
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 424
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/dialog/model/HeaderDialog;

    invoke-interface {v3}, Lde/mrapp/android/dialog/model/HeaderDialog;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    :cond_0
    move-object v5, v2

    .line 426
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/FadeAnimation;

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    .line 427
    check-cast p1, Lde/mrapp/android/dialog/animation/FadeAnimation;

    .line 429
    invoke-direct {p0, v5, p1, p2, v9}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/FadeAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 432
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return v9

    .line 435
    :cond_1
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    if-eqz v2, :cond_2

    .line 436
    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    .line 439
    invoke-direct {p0, v5, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 442
    invoke-direct {p0, v5, p1, p2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->configureShowAnimator(Landroid/view/View;Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;Landroid/view/ViewPropertyAnimator;)V

    .line 443
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    return v9

    .line 446
    :cond_2
    instance-of v2, p1, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    if-eqz v2, :cond_3

    .line 447
    move-object v6, p1

    check-cast v6, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    .line 448
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createAnimator(Landroid/view/View;Landroid/view/View;Lde/mrapp/android/dialog/animation/CircleRevealAnimation;Landroid/animation/Animator$AnimatorListener;Z)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 452
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return v9

    .line 456
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type of animation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return v0
.end method
