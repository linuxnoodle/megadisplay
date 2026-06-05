.class Lde/mrapp/android/view/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/view/FloatingActionButton;->createVisibilityAnimatorListener(I)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/view/FloatingActionButton;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lde/mrapp/android/view/FloatingActionButton;I)V
    .locals 0

    .line 502
    iput-object p1, p0, Lde/mrapp/android/view/FloatingActionButton$1;->this$0:Lde/mrapp/android/view/FloatingActionButton;

    iput p2, p0, Lde/mrapp/android/view/FloatingActionButton$1;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 524
    iget-object p1, p0, Lde/mrapp/android/view/FloatingActionButton$1;->this$0:Lde/mrapp/android/view/FloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lde/mrapp/android/view/FloatingActionButton;->access$202(Lde/mrapp/android/view/FloatingActionButton;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 518
    iget-object p1, p0, Lde/mrapp/android/view/FloatingActionButton$1;->this$0:Lde/mrapp/android/view/FloatingActionButton;

    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton$1;->val$visibility:I

    invoke-static {p1, v0}, Lde/mrapp/android/view/FloatingActionButton;->access$101(Lde/mrapp/android/view/FloatingActionButton;I)V

    .line 519
    iget-object p1, p0, Lde/mrapp/android/view/FloatingActionButton$1;->this$0:Lde/mrapp/android/view/FloatingActionButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lde/mrapp/android/view/FloatingActionButton;->access$202(Lde/mrapp/android/view/FloatingActionButton;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 506
    iget p1, p0, Lde/mrapp/android/view/FloatingActionButton$1;->val$visibility:I

    if-nez p1, :cond_0

    .line 507
    iget-object v0, p0, Lde/mrapp/android/view/FloatingActionButton$1;->this$0:Lde/mrapp/android/view/FloatingActionButton;

    invoke-static {v0, p1}, Lde/mrapp/android/view/FloatingActionButton;->access$001(Lde/mrapp/android/view/FloatingActionButton;I)V

    :cond_0
    return-void
.end method
