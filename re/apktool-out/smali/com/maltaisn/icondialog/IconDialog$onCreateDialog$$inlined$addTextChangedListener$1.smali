.class public final Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 IconDialog.kt\ncom/maltaisn/icondialog/IconDialog\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n135#2,4:98\n71#3:102\n77#4:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
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
.method public constructor <init>(Lcom/maltaisn/icondialog/IconDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchHandler$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v1}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchCallback$p(Lcom/maltaisn/icondialog/IconDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchHandler$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v1}, Lcom/maltaisn/icondialog/IconDialog;->access$getSearchCallback$p(Lcom/maltaisn/icondialog/IconDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onSearchQueryChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
