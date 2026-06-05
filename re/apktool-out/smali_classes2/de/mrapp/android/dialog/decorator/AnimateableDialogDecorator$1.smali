.class Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;
.super Ljava/lang/Object;
.source "AnimateableDialogDecorator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->createHideAnimationListener(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

.field final synthetic val$animatedView:Landroid/view/View;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$animatedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$animatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
