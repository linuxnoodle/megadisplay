.class public abstract Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractBuilder;
.source "DialogAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/DialogAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractDialogAnimationBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimationType:",
        "Lde/mrapp/android/dialog/animation/DialogAnimation;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder<",
        "TAnimationType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractBuilder<",
        "TAnimationType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TBuilderType;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DialogAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation;->setAlpha(F)V

    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;

    return-object p1
.end method

.method public setDuration(J)Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TBuilderType;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DialogAnimation;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/animation/DialogAnimation;->setDuration(J)V

    .line 82
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;

    return-object p1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Interpolator;",
            ")TBuilderType;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DialogAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;

    return-object p1
.end method

.method public setStartDelay(J)Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TBuilderType;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/DialogAnimation;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/animation/DialogAnimation;->setStartDelay(J)V

    .line 96
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;

    return-object p1
.end method
