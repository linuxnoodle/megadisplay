.class final Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/MainActivity;->updateState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$3;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 386
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$3;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    .line 387
    sget-object p1, Lcom/kelocube/mirrorclient/ui/Util;->INSTANCE:Lcom/kelocube/mirrorclient/ui/Util;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$3;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/kelocube/mirrorclient/R$string;->main_status_charge_only_link:I

    invoke-virtual {v0, v2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/kelocube/mirrorclient/ui/Util;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
