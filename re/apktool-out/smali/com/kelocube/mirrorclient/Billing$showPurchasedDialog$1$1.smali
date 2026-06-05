.class final Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Billing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    sget-object p1, Lcom/kelocube/mirrorclient/ui/Util;->INSTANCE:Lcom/kelocube/mirrorclient/ui/Util;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "market://details?id=com.kelocube.mirrorclient"

    invoke-virtual {p1, v0, v1}, Lcom/kelocube/mirrorclient/ui/Util;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
