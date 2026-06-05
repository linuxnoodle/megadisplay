.class final Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Billing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Billing;->showDemoDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
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
.field final synthetic $activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

.field final synthetic $trialExpired:Z

.field final synthetic this$0:Lcom/kelocube/mirrorclient/Billing;


# direct methods
.method constructor <init>(ZLcom/kelocube/mirrorclient/ui/MainActivity;Lcom/kelocube/mirrorclient/Billing;)V
    .locals 0

    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->$trialExpired:Z

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->this$0:Lcom/kelocube/mirrorclient/Billing;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 10

    const-string v0, "$this$showDialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget v0, Lcom/kelocube/mirrorclient/R$layout;->dialog_billing_trial_expired:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 140
    new-instance v0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;

    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->$trialExpired:Z

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->this$0:Lcom/kelocube/mirrorclient/Billing;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;ZLcom/kelocube/mirrorclient/ui/MainActivity;Lcom/kelocube/mirrorclient/Billing;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->onShow(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method
