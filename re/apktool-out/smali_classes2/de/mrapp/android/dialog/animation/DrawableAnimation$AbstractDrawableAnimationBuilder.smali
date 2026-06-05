.class public abstract Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractBuilder;
.source "DrawableAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/DrawableAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractDrawableAnimationBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimationType:",
        "Lde/mrapp/android/dialog/animation/DrawableAnimation;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder<",
        "TAnimationType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractBuilder<",
        "TAnimationType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setDuration(I)Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DrawableAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->setDuration(I)V

    .line 84
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;

    return-object p1
.end method

.method public setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DrawableAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation;->setListener(Lde/mrapp/android/dialog/animation/DrawableAnimation$AnimationListener;)V

    .line 99
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;

    return-object p1
.end method
