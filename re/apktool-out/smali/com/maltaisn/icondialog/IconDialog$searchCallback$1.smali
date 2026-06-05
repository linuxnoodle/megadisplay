.class final Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;
.super Ljava/lang/Object;
.source "IconDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog;-><init>()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v1}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchEdt$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onSearchQueryEntered(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
