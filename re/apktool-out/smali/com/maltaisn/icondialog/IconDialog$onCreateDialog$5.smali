.class public final Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "IconDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/maltaisn/icondialog/IconDialog$onCreateDialog$5",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "pos",
        "lib_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getListAdapter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v1}, Lcom/maltaisn/icondialog/IconDialog;->access$getListLayout$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maltaisn/icondialog/IconLayoutManager;->getSpanCount()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->getItemSpanCount(II)I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method
