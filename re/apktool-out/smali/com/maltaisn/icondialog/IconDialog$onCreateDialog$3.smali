.class final Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;
.super Ljava/lang/Object;
.source "IconDialog.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog;


# direct methods
.method constructor <init>(Lcom/maltaisn/icondialog/IconDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchHandler$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p2}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchCallback$p(Lcom/maltaisn/icondialog/IconDialog;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p2}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchEdt$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onSearchActionEvent(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
