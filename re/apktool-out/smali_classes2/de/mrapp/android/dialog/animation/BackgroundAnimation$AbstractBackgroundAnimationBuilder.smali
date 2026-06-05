.class public abstract Lde/mrapp/android/dialog/animation/BackgroundAnimation$AbstractBackgroundAnimationBuilder;
.super Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;
.source "BackgroundAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/BackgroundAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractBackgroundAnimationBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimationType:",
        "Lde/mrapp/android/dialog/animation/BackgroundAnimation;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/animation/BackgroundAnimation$AbstractBackgroundAnimationBuilder<",
        "TAnimationType;*>;>",
        "Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder<",
        "TAnimationType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DrawableAnimation$AbstractDrawableAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method
