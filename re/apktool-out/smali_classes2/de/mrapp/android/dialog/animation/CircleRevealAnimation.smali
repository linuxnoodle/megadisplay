.class public Lde/mrapp/android/dialog/animation/CircleRevealAnimation;
.super Lde/mrapp/android/dialog/animation/DialogAnimation;
.source "CircleRevealAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;
    }
.end annotation


# instance fields
.field private radius:F

.field private x:I

.field private y:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->x:I

    .line 162
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->y:I

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->radius:F

    return-void
.end method


# virtual methods
.method public final getRadius()F
    .locals 1

    .line 192
    iget v0, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->radius:F

    return v0
.end method

.method public final getX()I
    .locals 1

    .line 173
    iget v0, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 183
    iget v0, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->y:I

    return v0
.end method

.method protected final setRadius(F)V
    .locals 3

    .line 147
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The radius must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(FFLjava/lang/String;)V

    .line 148
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->radius:F

    return-void
.end method

.method protected final setX(I)V
    .locals 0

    .line 126
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->x:I

    return-void
.end method

.method protected final setY(I)V
    .locals 0

    .line 136
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->y:I

    return-void
.end method
