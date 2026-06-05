.class public abstract Lde/mrapp/android/dialog/animation/DialogAnimation;
.super Ljava/lang/Object;
.source "DialogAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
    }
.end annotation


# instance fields
.field private alpha:Ljava/lang/Float;

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private startDelay:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->interpolator:Landroid/view/animation/Interpolator;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->duration:J

    const-wide/16 v0, 0x0

    .line 195
    iput-wide v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->startDelay:J

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->alpha:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final getAlpha()Ljava/lang/Float;
    .locals 1

    .line 235
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->alpha:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->duration:J

    return-wide v0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 207
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public final getStartDelay()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->startDelay:J

    return-wide v0
.end method

.method protected final setAlpha(F)V
    .locals 3

    .line 179
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The alpha must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(FFLjava/lang/String;)V

    .line 180
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "The alpha must be at maximum 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(FFLjava/lang/String;)V

    .line 181
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->alpha:Ljava/lang/Float;

    return-void
.end method

.method protected final setDuration(J)V
    .locals 6

    .line 155
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, 0x1

    const-string v5, "The duration must be at least 1"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 156
    iput-wide p1, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->duration:J

    return-void
.end method

.method protected final setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 143
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The interpolator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected final setStartDelay(J)V
    .locals 6

    .line 167
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-wide/16 v3, 0x0

    const-string v5, "The start delay must be at least 0"

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/mrapp/util/Condition;->ensureAtLeast(JJLjava/lang/String;)V

    .line 168
    iput-wide p1, p0, Lde/mrapp/android/dialog/animation/DialogAnimation;->startDelay:J

    return-void
.end method
