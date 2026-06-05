.class Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;
.super Ljava/lang/Object;
.source "EditTextDialogDecorator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 358
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-static {p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->access$200(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    :cond_0
    return-void
.end method
