.class Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;
.super Ljava/lang/Object;
.source "EditTextDialogDecorator.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->createTextChangedListener()Landroid/text/TextWatcher;
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

    .line 310
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 326
    iget-object p2, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-static {p2, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->access$002(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 328
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-static {p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->access$100(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    :cond_0
    return-void
.end method
