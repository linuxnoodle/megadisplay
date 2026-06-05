.class public abstract Lde/mrapp/android/dialog/AbstractAnimateableDialog;
.super Lde/mrapp/android/dialog/AbstractHeaderDialog;
.source "AbstractAnimateableDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/AnimateableDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractHeaderDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    new-instance p1, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/HeaderDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    .line 125
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    .line 126
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;
    .locals 0

    .line 38
    iget-object p0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$201(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$301(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V
    .locals 0

    .line 38
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->cancel()V

    return-void
.end method

.method private createCancelAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 99
    new-instance v0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$3;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog$3;-><init>(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V

    return-object v0
.end method

.method private createDismissAnimationListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 80
    new-instance v0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$2;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog$2;-><init>(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V

    return-object v0
.end method

.method private createOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .line 58
    new-instance v0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;-><init>(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 173
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->getCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createCancelAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hideAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 166
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->getDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createDismissAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hideAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final getCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 151
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 141
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v0

    return-object v0
.end method

.method public final getShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 131
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->getShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected final onCanceledOnTouchOutside()Z
    .locals 3

    .line 196
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->getCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createCancelAnimationListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->hideAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 182
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    return-void
.end method

.method public final setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    return-void
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public final setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->decorator:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V

    return-void
.end method
