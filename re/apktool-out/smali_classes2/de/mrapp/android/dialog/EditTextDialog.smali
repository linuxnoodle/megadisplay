.class public Lde/mrapp/android/dialog/EditTextDialog;
.super Lde/mrapp/android/dialog/AbstractButtonBarDialog;
.source "EditTextDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/EditTextDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/EditTextDialog$Builder;
    }
.end annotation


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;-><init>(Landroid/content/Context;I)V

    .line 388
    new-instance p1, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    .line 389
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final addAllValidators(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addAllValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final varargs addAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 491
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addAllValidators([Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public final addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V

    return-void
.end method

.method public final addValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidator(Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public final getEditText()Landroid/widget/EditText;
    .locals 1

    .line 399
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 444
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getErrorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 429
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getHelperTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 459
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHelperTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 414
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 409
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 394
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getValidators()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getValidators()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final isValidatedOnFocusLost()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->isValidatedOnFocusLost()Z

    move-result v0

    return v0
.end method

.method public final isValidatedOnValueChange()Z
    .locals 1

    .line 523
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->isValidatedOnValueChange()Z

    move-result v0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 564
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 556
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final removeAllValidators()V
    .locals 1

    .line 513
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->removeAllValidators()V

    return-void
.end method

.method public final removeAllValidators(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->removeAllValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final varargs removeAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 508
    iget-object p1, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->removeAllValidators()V

    return-void
.end method

.method public final removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V

    return-void
.end method

.method public final removeValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->removeValidator(Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public final setErrorColor(I)V
    .locals 1

    .line 449
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setErrorColor(I)V

    return-void
.end method

.method public final setErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setErrorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHelperText(I)V
    .locals 1

    .line 439
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperText(I)V

    return-void
.end method

.method public final setHelperText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHelperTextColor(I)V
    .locals 1

    .line 464
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperTextColor(I)V

    return-void
.end method

.method public final setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 424
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHint(I)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final validate()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    move-result v0

    return v0
.end method

.method public final validateOnFocusLost(Z)V
    .locals 1

    .line 538
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost(Z)V

    return-void
.end method

.method public final validateOnValueChange(Z)V
    .locals 1

    .line 528
    iget-object v0, p0, Lde/mrapp/android/dialog/EditTextDialog;->decorator:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange(Z)V

    return-void
.end method
