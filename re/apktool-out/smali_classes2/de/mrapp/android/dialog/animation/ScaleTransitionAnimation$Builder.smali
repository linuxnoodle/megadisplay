.class public Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation$Builder;
.super Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;
.source "ScaleTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder<",
        "Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;",
        "Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;
    .locals 2

    .line 50
    new-instance v0, Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation$Builder;->onCreateProduct()Lde/mrapp/android/dialog/animation/ScaleTransitionAnimation;

    move-result-object v0

    return-object v0
.end method
