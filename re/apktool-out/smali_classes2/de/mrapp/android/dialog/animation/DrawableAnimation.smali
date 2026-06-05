.class public abstract Lde/mrapp/android/dialog/animation/DrawableAnimation;
.super Ljava/lang/Object;
.source "DrawableAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;,
        Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;
    }
.end annotation


# instance fields
.field private duration:I

.field private listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->duration:I

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    return-void
.end method


# virtual methods
.method public final getDuration()I
    .locals 1

    .line 156
    iget v0, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->duration:I

    return v0
.end method

.method public final getListener()Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;
    .locals 1

    .line 167
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    return-object v0
.end method

.method protected final setDuration(I)V
    .locals 3

    .line 122
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The duration must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 123
    iput p1, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->duration:I

    return-void
.end method

.method protected final setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/DrawableAnimation;->listener:Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;

    return-void
.end method
