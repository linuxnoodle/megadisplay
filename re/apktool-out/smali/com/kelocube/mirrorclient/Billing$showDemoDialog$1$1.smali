.class final Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Billing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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

.field final synthetic $this_showDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic $trialExpired:Z

.field final synthetic this$0:Lcom/kelocube/mirrorclient/Billing;


# direct methods
.method public static synthetic $r8$lambda$cITkfS9r_kant3muJJ3XDtBI7wo(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->invoke$lambda$2$lambda$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjLW6IhsdLb-d08NE3DNCavWfJg(Lcom/kelocube/mirrorclient/Billing;Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->invoke$lambda$2$lambda$0(Lcom/kelocube/mirrorclient/Billing;Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;ZLcom/kelocube/mirrorclient/ui/MainActivity;Lcom/kelocube/mirrorclient/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$this_showDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-boolean p2, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$trialExpired:Z

    iput-object p3, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    iput-object p4, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->this$0:Lcom/kelocube/mirrorclient/Billing;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$0(Lcom/kelocube/mirrorclient/Billing;Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_showDialog"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing;->tryStartPurchase(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    .line 155
    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_showDialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$this_showDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->getCustomView(Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$trialExpired:Z

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$this_showDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->$activity:Lcom/kelocube/mirrorclient/ui/MainActivity;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1;->this$0:Lcom/kelocube/mirrorclient/Billing;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/kelocube/mirrorclient/R$string;->billing_trial_expired_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/kelocube/mirrorclient/R$string;->billing_trial_expired_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/kelocube/mirrorclient/R$string;->billing_trial_reminder_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/kelocube/mirrorclient/R$string;->billing_trial_reminder_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textBody:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->textBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/kelocube/mirrorclient/R$color;->colorOnPrimary:I

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 152
    :goto_0
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->buttonBuy:Landroid/widget/Button;

    sget v5, Lcom/kelocube/mirrorclient/R$string;->billing_trial_buy:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Billing;->access$getProductDetails$p(Lcom/kelocube/mirrorclient/Billing;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    const-string v7, ""

    :cond_2
    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->buttonBuy:Landroid/widget/Button;

    new-instance v4, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2, v1}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/Billing;Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogBillingTrialExpiredBinding;->buttonCancel:Landroid/widget/Button;

    new-instance v0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
