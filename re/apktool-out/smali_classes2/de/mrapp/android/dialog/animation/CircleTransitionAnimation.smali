.class public Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;
.super Lde/mrapp/android/dialog/animation/BackgroundAnimation;
.source "CircleTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;
    }
.end annotation


# instance fields
.field private radius:I

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->radius:I

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->x:Ljava/lang/Integer;

    .line 164
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->y:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getRadius()I
    .locals 1

    .line 193
    iget v0, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->radius:I

    return v0
.end method

.method public final getX()Ljava/lang/Integer;
    .locals 1

    .line 174
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getY()Ljava/lang/Integer;
    .locals 1

    .line 184
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final setRadius(I)V
    .locals 3

    .line 148
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The radius must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 149
    iput p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->radius:I

    return-void
.end method

.method protected final setX(I)V
    .locals 3

    .line 124
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The horizontal position must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->x:Ljava/lang/Integer;

    return-void
.end method

.method protected final setY(I)V
    .locals 3

    .line 136
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The vertical position must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->y:Ljava/lang/Integer;

    return-void
.end method
