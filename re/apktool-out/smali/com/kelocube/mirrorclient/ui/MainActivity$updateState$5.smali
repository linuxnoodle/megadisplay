.class final Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 440
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "getString(...)"

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ui/MainActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/MainActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    iget-object v0, v0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ui/MainActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/MainActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    iget-object v0, v3, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusDesc:Landroid/widget/TextView;

    sget-object v2, Lcom/kelocube/mirrorclient/ui/TextTools;->INSTANCE:Lcom/kelocube/mirrorclient/ui/TextTools;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    sget v4, Lcom/kelocube/mirrorclient/R$string;->main_status_wait_desc:I

    invoke-virtual {v3, v4}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5$1;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-direct {v1, v4}, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5$1;-><init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3, v1}, Lcom/kelocube/mirrorclient/ui/TextTools;->linkify(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ui/MainActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/MainActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v0, v0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ui/MainActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/MainActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    iget-object v0, v3, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusDesc:Landroid/widget/TextView;

    sget-object v2, Lcom/kelocube/mirrorclient/ui/TextTools;->INSTANCE:Lcom/kelocube/mirrorclient/ui/TextTools;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    sget v4, Lcom/kelocube/mirrorclient/R$string;->main_status_wait_no_adb_desc:I

    invoke-virtual {v3, v4}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5$2;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-direct {v1, v4}, Lcom/kelocube/mirrorclient/ui/MainActivity$updateState$5$2;-><init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3, v1}, Lcom/kelocube/mirrorclient/ui/TextTools;->linkify(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
