.class final Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/MainActivity;->showErrorReportDialog(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,475:1\n362#2,4:476\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1\n*L\n315#1:476,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Dialog;",
        "it",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1;->$dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1;->$dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    .line 316
    sget v3, Lcom/kelocube/mirrorclient/R$string;->error_report_send_title:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3, v1, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->title$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 317
    sget-object v1, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/App;->getDiagnostics()Lcom/kelocube/mirrorclient/Diagnostics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/Diagnostics;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget v1, Lcom/kelocube/mirrorclient/R$string;->error_report_send_message:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 319
    new-instance v1, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;

    invoke-direct {v1, p1}, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;-><init>(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/16 v11, 0x6e

    const/4 v12, 0x0

    const-string v2, "myemail@example.com"

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v12}, Lcom/afollestad/materialdialogs/input/DialogInputExtKt;->input$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;ILjava/lang/Integer;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 332
    sget p1, Lcom/kelocube/mirrorclient/R$string;->word_submit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 333
    sget p1, Lcom/kelocube/mirrorclient/R$string;->word_cancel:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 335
    :cond_0
    sget p1, Lcom/kelocube/mirrorclient/R$string;->error_report_disabled:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 336
    sget p1, Lcom/kelocube/mirrorclient/R$string;->word_ok:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 478
    :goto_0
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 479
    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
