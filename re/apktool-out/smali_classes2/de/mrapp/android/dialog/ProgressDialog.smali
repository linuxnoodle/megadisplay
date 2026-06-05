.class public Lde/mrapp/android/dialog/ProgressDialog;
.super Lde/mrapp/android/dialog/AbstractButtonBarDialog;
.source "ProgressDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ProgressDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/ProgressDialog$Builder;,
        Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    }
.end annotation


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;-><init>(Landroid/content/Context;I)V

    .line 310
    new-instance p1, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    .line 311
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    const/4 p1, 0x0

    .line 312
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public final getProgressBarColor()I
    .locals 1

    .line 317
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarColor()I

    move-result v0

    return v0
.end method

.method public final getProgressBarPosition()Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    .locals 1

    .line 347
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarPosition()Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getProgressBarSize()I
    .locals 1

    .line 327
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarSize()I

    move-result v0

    return v0
.end method

.method public final getProgressBarThickness()I
    .locals 1

    .line 337
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarThickness()I

    move-result v0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 366
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 358
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setProgressBarColor(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarColor(I)V

    return-void
.end method

.method public final setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)V

    return-void
.end method

.method public final setProgressBarSize(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarSize(I)V

    return-void
.end method

.method public final setProgressBarThickness(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Lde/mrapp/android/dialog/ProgressDialog;->decorator:Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarThickness(I)V

    return-void
.end method
