.class public abstract Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;
.source "AbstractAnimateableDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/AnimateableDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/animation/DialogAnimation;",
            ")TBuilderType;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/AnimateableDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/AnimateableDialog;->setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    .line 109
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    return-object p1
.end method

.method public final setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/animation/DialogAnimation;",
            ")TBuilderType;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/AnimateableDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/AnimateableDialog;->setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    .line 94
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    return-object p1
.end method

.method public final setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/animation/DialogAnimation;",
            ")TBuilderType;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/AnimateableDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/AnimateableDialog;->setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    return-object p1
.end method
