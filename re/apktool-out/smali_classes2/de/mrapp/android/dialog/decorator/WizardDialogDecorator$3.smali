.class Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;
.super Ljava/lang/Object;
.source "WizardDialogDecorator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->createFinishButtonListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-static {p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->access$000(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)Lde/mrapp/android/dialog/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/dialog/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 583
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-static {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->access$300(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 584
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/WizardDialog;->dismiss()V

    :cond_0
    return-void
.end method
