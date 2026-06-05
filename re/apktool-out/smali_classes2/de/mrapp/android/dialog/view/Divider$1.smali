.class Lde/mrapp/android/dialog/view/Divider$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/Divider;->createVisibilityAnimationListener(Z)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/view/Divider;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/view/Divider;Z)V
    .locals 0

    .line 61
    iput-object p1, p0, Lde/mrapp/android/dialog/view/Divider$1;->this$0:Lde/mrapp/android/dialog/view/Divider;

    iput-boolean p2, p0, Lde/mrapp/android/dialog/view/Divider$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 76
    iget-boolean p1, p0, Lde/mrapp/android/dialog/view/Divider$1;->val$show:Z

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lde/mrapp/android/dialog/view/Divider$1;->this$0:Lde/mrapp/android/dialog/view/Divider;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lde/mrapp/android/dialog/view/Divider;->access$101(Lde/mrapp/android/dialog/view/Divider;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 67
    iget-boolean p1, p0, Lde/mrapp/android/dialog/view/Divider$1;->val$show:Z

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lde/mrapp/android/dialog/view/Divider$1;->this$0:Lde/mrapp/android/dialog/view/Divider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lde/mrapp/android/dialog/view/Divider;->access$001(Lde/mrapp/android/dialog/view/Divider;I)V

    :cond_0
    return-void
.end method
