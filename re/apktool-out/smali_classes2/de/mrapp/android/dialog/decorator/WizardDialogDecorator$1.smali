.class Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;
.super Ljava/lang/Object;
.source "WizardDialogDecorator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->createBackButtonListener()Landroid/view/View$OnClickListener;
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

    .line 513
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-static {p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->access$000(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)Lde/mrapp/android/dialog/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/dialog/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 519
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-static {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->access$100(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-static {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->access$000(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)Lde/mrapp/android/dialog/view/ViewPager;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
