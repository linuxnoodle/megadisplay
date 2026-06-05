.class final Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "Ljava/lang/CharSequence;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "text",
        "",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;->$dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "text"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    sget-object p1, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/App;->getDiagnostics()Lcom/kelocube/mirrorclient/Diagnostics;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/Diagnostics;->captureUserReport(Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1;->$dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    sget-object p2, Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1$1;->INSTANCE:Lcom/kelocube/mirrorclient/ui/MainActivity$showErrorReportDialog$1$1$1$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, v1}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showDialog$default(Lcom/kelocube/mirrorclient/ui/DialogOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
