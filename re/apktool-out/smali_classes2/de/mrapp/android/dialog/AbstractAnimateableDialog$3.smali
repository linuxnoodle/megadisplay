.class Lde/mrapp/android/dialog/AbstractAnimateableDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbstractAnimateableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createCancelAnimationListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$3;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 104
    iget-object p1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$3;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-static {p1}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->access$301(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)V

    return-void
.end method
