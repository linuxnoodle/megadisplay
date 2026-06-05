.class public abstract Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AbstractTransitionDrawable.java"


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private duration:I

.field private listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

.field private startTime:J

.field private state:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    const/4 p1, 0x2

    .line 121
    iput p1, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->state:I

    return-void
.end method

.method private notifyOnAnimationEnd()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method private notifyOnAnimationStart()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 165
    iget v0, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->startTime:J

    .line 168
    iput v2, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->state:I

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_2

    .line 170
    iget-wide v4, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->duration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 173
    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_4

    .line 178
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->onEndTransition()V

    .line 179
    invoke-virtual {p0, v1}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    iget v2, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 183
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :goto_2
    invoke-direct {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->notifyOnAnimationEnd()V

    return-void

    .line 192
    :cond_4
    invoke-virtual {p0, v3, p1}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->onDraw(FLandroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public final getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    return-object v0
.end method

.method protected abstract onDraw(FLandroid/graphics/Canvas;)V
.end method

.method protected abstract onEndTransition()V
.end method

.method protected abstract onStartTransition()V
.end method

.method public final setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    return-void
.end method

.method public final startTransition(I)V
    .locals 0

    .line 153
    iput p1, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->duration:I

    const/4 p1, 0x0

    .line 154
    iput p1, p0, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->state:I

    .line 155
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->onStartTransition()V

    .line 156
    invoke-direct {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->notifyOnAnimationStart()V

    .line 157
    invoke-virtual {p0}, Lde/mrapp/android/dialog/drawable/AbstractTransitionDrawable;->invalidateSelf()V

    return-void
.end method
