.class public Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;
.super Lde/mrapp/android/dialog/animation/BackgroundAnimation$AbstractBackgroundAnimationBuilder;
.source "CircleTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/animation/BackgroundAnimation$AbstractBackgroundAnimationBuilder<",
        "Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;",
        "Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/BackgroundAnimation$AbstractBackgroundAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;
    .locals 2

    .line 96
    new-instance v0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->onCreateProduct()Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final setRadius(I)Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->setRadius(I)V

    .line 90
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;

    return-object p1
.end method

.method public final setX(I)Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->setX(I)V

    .line 62
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;

    return-object p1
.end method

.method public final setY(I)Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation;->setY(I)V

    .line 76
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleTransitionAnimation$Builder;

    return-object p1
.end method
