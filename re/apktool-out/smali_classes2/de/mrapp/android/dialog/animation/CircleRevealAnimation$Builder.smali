.class public Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;
.super Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
.source "CircleRevealAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/CircleRevealAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder<",
        "Lde/mrapp/android/dialog/animation/CircleRevealAnimation;",
        "Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/animation/CircleRevealAnimation;
    .locals 2

    .line 99
    new-instance v0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->onCreateProduct()Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final setRadius(F)Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->setRadius(F)V

    .line 93
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;

    return-object p1
.end method

.method public final setX(I)Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->setX(I)V

    .line 64
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;

    return-object p1
.end method

.method public final setY(I)Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation;->setY(I)V

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/CircleRevealAnimation$Builder;

    return-object p1
.end method
