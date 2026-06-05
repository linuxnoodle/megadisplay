.class Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;
.super Ljava/lang/Object;
.source "AbstractAnimateableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/AbstractAnimateableDialog;->createOnShowListener()Landroid/content/DialogInterface$OnShowListener;
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

    .line 58
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-static {v0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->access$000(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->getShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/decorator/AnimateableDialogDecorator;->showAnimated(Lde/mrapp/android/dialog/animation/DialogAnimation;Landroid/animation/Animator$AnimatorListener;)Z

    .line 64
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-static {v0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->access$100(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractAnimateableDialog$1;->this$0:Lde/mrapp/android/dialog/AbstractAnimateableDialog;

    invoke-static {v0}, Lde/mrapp/android/dialog/AbstractAnimateableDialog;->access$100(Lde/mrapp/android/dialog/AbstractAnimateableDialog;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
