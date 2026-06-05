.class public Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;
.super Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;
.source "CrossFadeTransitionDrawable.java"


# instance fields
.field private crossFade:Z

.field private useCrossFade:Z


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->crossFade:Z

    .line 47
    iput-boolean p1, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->useCrossFade:Z

    return-void
.end method


# virtual methods
.method public final isCrossFade()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->crossFade:Z

    return v0
.end method

.method protected final onDraw(FLandroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    iget-boolean v1, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->useCrossFade:Z

    if-eqz v1, :cond_0

    rsub-int v1, p1, 0xff

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 86
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onEndTransition()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected final onStartTransition()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->isCrossFade()Z

    move-result v0

    iput-boolean v0, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->useCrossFade:Z

    return-void
.end method

.method public final setCrossFade(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lde/mrapp/android/dialog/drawable/CrossFadeTransitionDrawable;->crossFade:Z

    return-void
.end method
