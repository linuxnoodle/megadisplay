.class public abstract Lde/mrapp/android/dialog/AbstractValidateableDialog;
.super Lde/mrapp/android/dialog/AbstractAnimateableDialog;
.source "AbstractValidateableDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ValidateableDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    new-instance p1, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/AnimateableDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    .line 58
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractValidateableDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final addAllDialogValidators(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->addAllDialogValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V

    return-void
.end method

.method public final getDialogValidators()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->getDialogValidators()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 99
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 90
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final removeAllDialogValidators(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->removeAllDialogValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final removeDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractValidateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ValidateableDialogDecorator;->removeDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V

    return-void
.end method
