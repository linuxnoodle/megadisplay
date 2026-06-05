.class public final Lcom/kelocube/mirrorclient/Billing;
.super Ljava/lang/Object;
.source "Billing.kt"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBilling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Billing.kt\ncom/kelocube/mirrorclient/Billing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n1#2:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J1\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00152!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u001a0\u001dJ\u0008\u0010!\u001a\u00020\u001aH\u0016J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0016J \u0010%\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\'H\u0016J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0017J\u000e\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u000e\u00100\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u0016\u00101\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u00102\u001a\u000203J\u0008\u00104\u001a\u00020\u001aH\u0002J\u000e\u00105\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u0006\u00106\u001a\u00020\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Billing;",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "client",
        "Lcom/android/billingclient/api/BillingClient;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "productDetails",
        "Lcom/android/billingclient/api/ProductDetails;",
        "purchase",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/android/billingclient/api/Purchase;",
        "getPurchase",
        "()Landroidx/lifecycle/MutableLiveData;",
        "requestQueue",
        "Lcom/android/volley/RequestQueue;",
        "getReceipt",
        "",
        "useCache",
        "",
        "isPurchased",
        "makeLicenseRequest",
        "",
        "request",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "response",
        "onBillingServiceDisconnected",
        "onBillingSetupFinished",
        "result",
        "Lcom/android/billingclient/api/BillingResult;",
        "onPurchasesUpdated",
        "purchases",
        "",
        "showDemoDialog",
        "activity",
        "Lcom/kelocube/mirrorclient/ui/MainActivity;",
        "trialExpired",
        "showOfferDialog",
        "dialogOwner",
        "Lcom/kelocube/mirrorclient/ui/DialogOwner;",
        "showPurchasePendingDialog",
        "showPurchasedDialog",
        "showWelcomeDialog",
        "lastVersion",
        "",
        "startConnection",
        "tryStartPurchase",
        "update",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final client:Lcom/android/billingclient/api/BillingClient;

.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;

.field private productDetails:Lcom/android/billingclient/api/ProductDetails;

.field private final purchase:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public static synthetic $r8$lambda$KJ1fLE6UJ0K7UOALZ4Vo9p7kxtM(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/Billing;->makeLicenseRequest$lambda$7$lambda$5(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L6xaKE_Q0gTX7fhblwwi1thjnXQ(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/Billing;->makeLicenseRequest$lambda$4(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N05yl6qKerrEDlKrEtMFBRuUpoY(Lcom/kelocube/mirrorclient/Billing;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/Billing;->update$lambda$2(Lcom/kelocube/mirrorclient/Billing;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v54JxI52JrkbSSMrhnkcBfzeeds(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/Billing;->makeLicenseRequest$lambda$7$lambda$6(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yb1jbSZDflKODx-BymhEX8zFx0w(Lcom/kelocube/mirrorclient/Billing;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Billing;->makeLicenseRequest$lambda$7(Lcom/kelocube/mirrorclient/Billing;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->prefs:Landroid/content/SharedPreferences;

    .line 33
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "newRequestQueue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    .line 38
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing;->client:Lcom/android/billingclient/api/BillingClient;

    .line 42
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Billing;->startConnection()V

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/kelocube/mirrorclient/Billing;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Billing;->client:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static final synthetic access$getProductDetails$p(Lcom/kelocube/mirrorclient/Billing;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Billing;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object p0
.end method

.method public static final synthetic access$setProductDetails$p(Lcom/kelocube/mirrorclient/Billing;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method public static synthetic getReceipt$default(Lcom/kelocube/mirrorclient/Billing;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing;->getReceipt(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final makeLicenseRequest$lambda$4(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final makeLicenseRequest$lambda$7(Lcom/kelocube/mirrorclient/Billing;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 267
    const-string v2, "\n"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&salt="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p3, p0, Lcom/kelocube/mirrorclient/Billing;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v1, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda2;-><init>(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {p3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private static final makeLicenseRequest$lambda$7$lambda$5(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final makeLicenseRequest$lambda$7$lambda$6(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p0, p2, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "0"

    :cond_1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final startConnection()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->client:Lcom/android/billingclient/api/BillingClient;

    move-object v1, p0

    check-cast v1, Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private static final update$lambda$2(Lcom/kelocube/mirrorclient/Billing;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "purchases"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    const-string v1, "full_version"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 71
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing;->getReceipt(Z)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/kelocube/mirrorclient/Billing;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "billing_receipt"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final getPurchase()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getReceipt(Z)Ljava/lang/String;
    .locals 14

    .line 55
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getOriginalJson(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSignature(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/16 v9, 0x2f

    const/16 v10, 0x5f

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Billing;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "billing_receipt"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final isPurchased()Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "billing_receipt"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final makeLicenseRequest(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda3;-><init>(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2}, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda4;-><init>(Lcom/kelocube/mirrorclient/Billing;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    check-cast v1, Lcom/android/volley/Request;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 215
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/kelocube/mirrorclient/Billing$onBillingSetupFinished$1;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/kelocube/mirrorclient/Billing$onBillingSetupFinished$1;-><init>(Lcom/kelocube/mirrorclient/Billing;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->update()V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_4

    const/4 p2, 0x7

    if-eq v0, p2, :cond_0

    .line 205
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Billing;->context:Landroid/content/Context;

    sget v0, Lcom/kelocube/mirrorclient/R$string;->billing_error_toast:I

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->update()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 182
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 184
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/kelocube/mirrorclient/Billing$onPurchasesUpdated$1$1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v0, v5}, Lcom/kelocube/mirrorclient/Billing$onPurchasesUpdated$1$1;-><init>(Lcom/kelocube/mirrorclient/Billing;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Billing;->startConnection()V

    .line 200
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Billing;->context:Landroid/content/Context;

    sget v0, Lcom/kelocube/mirrorclient/R$string;->billing_error_disconnected:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 209
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BillingResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->update()V

    return-void
.end method

.method public final showDemoDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;Z)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/kelocube/mirrorclient/Billing$showDemoDialog$1;-><init>(ZLcom/kelocube/mirrorclient/ui/MainActivity;Lcom/kelocube/mirrorclient/Billing;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, v1}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog$default(Lcom/kelocube/mirrorclient/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final showOfferDialog(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V
    .locals 3

    const-string v0, "dialogOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/kelocube/mirrorclient/Billing$showOfferDialog$1;->INSTANCE:Lcom/kelocube/mirrorclient/Billing$showOfferDialog$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showDialog$default(Lcom/kelocube/mirrorclient/ui/DialogOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final showPurchasePendingDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/kelocube/mirrorclient/Billing$showPurchasePendingDialog$1;->INSTANCE:Lcom/kelocube/mirrorclient/Billing$showPurchasePendingDialog$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog$default(Lcom/kelocube/mirrorclient/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final showPurchasedDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1;

    invoke-direct {v0, p1}, Lcom/kelocube/mirrorclient/Billing$showPurchasedDialog$1;-><init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog$default(Lcom/kelocube/mirrorclient/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final showWelcomeDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;I)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->isPurchased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Billing;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide v2, 0x17392b80400L

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 81
    new-instance p2, Lcom/kelocube/mirrorclient/Billing$showWelcomeDialog$1;

    invoke-direct {p2, p1}, Lcom/kelocube/mirrorclient/Billing$showWelcomeDialog$1;-><init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    const-string v0, "welcome_updated"

    invoke-virtual {p1, v0, p2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 95
    sget-object p2, Lcom/kelocube/mirrorclient/Billing$showWelcomeDialog$2;->INSTANCE:Lcom/kelocube/mirrorclient/Billing$showWelcomeDialog$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    const-string v0, "welcome_trial"

    invoke-virtual {p1, v0, p2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final tryStartPurchase(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Billing;->update()V

    .line 107
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 109
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Billing;->purchase:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_5

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Billing;->showPurchasePendingDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;)V

    goto :goto_2

    .line 113
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Billing;->client:Lcom/android/billingclient/api/BillingClient;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    goto :goto_2

    .line 126
    :cond_4
    sget-object v0, Lcom/kelocube/mirrorclient/Billing$tryStartPurchase$1;->INSTANCE:Lcom/kelocube/mirrorclient/Billing$tryStartPurchase$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v2, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->showDialog$default(Lcom/kelocube/mirrorclient/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Billing;->startConnection()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final update()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing;->client:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/Billing;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method
