.class final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    value = "SMAP\nEditActionMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditActionMenuActivity.kt\ncom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,240:1\n362#2,4:241\n*S KotlinDebug\n*F\n+ 1 EditActionMenuActivity.kt\ncom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1\n*L\n138#1:241,4\n*E\n"
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    .line 139
    sget v1, Lcom/kelocube/mirrorclient/R$string;->edit_am_reset_message:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->message$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 140
    sget v1, Lcom/kelocube/mirrorclient/R$string;->word_cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 141
    sget v1, Lcom/kelocube/mirrorclient/R$string;->edit_am_reset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v1, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;

    invoke-direct {v1, v0}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;-><init>(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 243
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 244
    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
