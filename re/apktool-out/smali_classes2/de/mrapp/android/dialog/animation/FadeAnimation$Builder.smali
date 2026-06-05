.class public Lde/mrapp/android/dialog/animation/FadeAnimation$Builder;
.super Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
.source "FadeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/FadeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder<",
        "Lde/mrapp/android/dialog/animation/FadeAnimation;",
        "Lde/mrapp/android/dialog/animation/FadeAnimation$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/animation/FadeAnimation;
    .locals 2

    .line 49
    new-instance v0, Lde/mrapp/android/dialog/animation/FadeAnimation;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/FadeAnimation$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/animation/FadeAnimation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/FadeAnimation$Builder;->onCreateProduct()Lde/mrapp/android/dialog/animation/FadeAnimation;

    move-result-object v0

    return-object v0
.end method
