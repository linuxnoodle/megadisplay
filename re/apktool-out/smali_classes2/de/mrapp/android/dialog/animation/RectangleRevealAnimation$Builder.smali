.class public Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
.super Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;
.source "RectangleRevealAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder<",
        "Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;",
        "Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation$AbstractDialogAnimationBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;
    .locals 2

    .line 110
    new-instance v0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->onCreateProduct()Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final setHeight(I)Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->setHeight(I)V

    .line 104
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;

    return-object p1
.end method

.method public final setWidth(I)Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->setWidth(I)V

    .line 90
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;

    return-object p1
.end method

.method public final setX(I)Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->setX(I)V

    .line 61
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;

    return-object p1
.end method

.method public final setY(I)Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->setY(I)V

    .line 76
    invoke-virtual {p0}, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;

    return-object p1
.end method
