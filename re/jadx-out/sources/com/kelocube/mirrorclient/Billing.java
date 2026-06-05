package com.kelocube.mirrorclient;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.method.LinkMovementMethod;
import android.util.Base64;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.text.HtmlCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.preference.PreferenceManager;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.callbacks.DialogCallbackExtKt;
import com.afollestad.materialdialogs.customview.DialogCustomViewExtKt;
import com.afollestad.materialdialogs.message.DialogMessageSettings;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientKotlinKt;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.android.volley.NetworkResponse;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.kelocube.mirrorclient.Billing;
import com.kelocube.mirrorclient.databinding.DialogBillingTrialExpiredBinding;
import com.kelocube.mirrorclient.ui.DialogOwner;
import com.kelocube.mirrorclient.ui.MainActivity;
import com.kelocube.mirrorclient.ui.Util;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: Billing.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J1\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00152!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u001a0\u001dJ\b\u0010!\u001a\u00020\u001aH\u0016J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0016J \u0010%\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010'H\u0016J\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0017J\u000e\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u000e\u00100\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u0016\u00101\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u00102\u001a\u000203J\b\u00104\u001a\u00020\u001aH\u0002J\u000e\u00105\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*J\u0006\u00106\u001a\u00020\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/kelocube/mirrorclient/Billing;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "Lcom/android/billingclient/api/BillingClientStateListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "client", "Lcom/android/billingclient/api/BillingClient;", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "purchase", "Landroidx/lifecycle/MutableLiveData;", "Lcom/android/billingclient/api/Purchase;", "getPurchase", "()Landroidx/lifecycle/MutableLiveData;", "requestQueue", "Lcom/android/volley/RequestQueue;", "getReceipt", "", "useCache", "", "isPurchased", "makeLicenseRequest", "", "request", "callback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "response", "onBillingServiceDisconnected", "onBillingSetupFinished", "result", "Lcom/android/billingclient/api/BillingResult;", "onPurchasesUpdated", "purchases", "", "showDemoDialog", "activity", "Lcom/kelocube/mirrorclient/ui/MainActivity;", "trialExpired", "showOfferDialog", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "showPurchasePendingDialog", "showPurchasedDialog", "showWelcomeDialog", "lastVersion", "", "startConnection", "tryStartPurchase", "update", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Billing implements PurchasesUpdatedListener, BillingClientStateListener {
    private final BillingClient client;
    private final Context context;
    private final SharedPreferences prefs;
    private ProductDetails productDetails;
    private final MutableLiveData<Purchase> purchase;
    private final RequestQueue requestQueue;

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
    }

    public Billing(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.prefs = PreferenceManager.getDefaultSharedPreferences(context);
        RequestQueue requestQueueNewRequestQueue = Volley.newRequestQueue(context);
        Intrinsics.checkNotNullExpressionValue(requestQueueNewRequestQueue, "newRequestQueue(...)");
        this.requestQueue = requestQueueNewRequestQueue;
        this.purchase = new MutableLiveData<>(null);
        BillingClient billingClientBuild = BillingClient.newBuilder(context).setListener(this).enablePendingPurchases().build();
        Intrinsics.checkNotNullExpressionValue(billingClientBuild, "build(...)");
        this.client = billingClientBuild;
        startConnection();
    }

    public final MutableLiveData<Purchase> getPurchase() {
        return this.purchase;
    }

    private final void startConnection() {
        this.client.startConnection(this);
    }

    public final boolean isPurchased() {
        Purchase value = this.purchase.getValue();
        if (value != null && value.getPurchaseState() == 1) {
            return true;
        }
        String string = this.prefs.getString(PrefsKt.PREF_RECEIPT, null);
        return (string == null || string.length() == 0) ? false : true;
    }

    public static /* synthetic */ String getReceipt$default(Billing billing, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return billing.getReceipt(z);
    }

    public final String getReceipt(boolean useCache) {
        String string;
        Purchase value = this.purchase.getValue();
        if (value == null) {
            return (!useCache || (string = this.prefs.getString(PrefsKt.PREF_RECEIPT, null)) == null) ? "" : string;
        }
        String originalJson = value.getOriginalJson();
        Intrinsics.checkNotNullExpressionValue(originalJson, "getOriginalJson(...)");
        byte[] bytes = originalJson.getBytes(Charsets.US_ASCII);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        String strEncodeToString = Base64.encodeToString(bytes, 0);
        String signature = value.getSignature();
        Intrinsics.checkNotNullExpressionValue(signature, "getSignature(...)");
        return StringsKt.replace$default(StringsKt.replace$default(strEncodeToString + "," + signature, '+', '-', false, 4, (Object) null), '/', '_', false, 4, (Object) null);
    }

    public final void update() {
        this.client.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.kelocube.mirrorclient.Billing$$ExternalSyntheticLambda0
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                Billing.update$lambda$2(this.f$0, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void update$lambda$2(Billing this$0, BillingResult billingResult, List purchases) {
        Object next;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(billingResult, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        Iterator it = purchases.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Purchase) next).getProducts().contains("full_version")) {
                    break;
                }
            }
        }
        this$0.purchase.postValue((Purchase) next);
        this$0.prefs.edit().putString(PrefsKt.PREF_RECEIPT, this$0.getReceipt(false)).apply();
    }

    public final void showWelcomeDialog(final MainActivity activity, int lastVersion) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (isPurchased()) {
            return;
        }
        if (this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).firstInstallTime < 1595894400000L) {
            activity.showDialog("welcome_updated", new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showWelcomeDialog.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.billing_redeem_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.billing_redeem_message), null, new Function1<DialogMessageSettings, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showWelcomeDialog.1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DialogMessageSettings dialogMessageSettings) {
                            invoke2(dialogMessageSettings);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DialogMessageSettings message) {
                            Intrinsics.checkNotNullParameter(message, "$this$message");
                            UtilKt.htmlWithCorrectLinkColor(message);
                        }
                    }, 2, null);
                    Integer numValueOf = Integer.valueOf(R.string.billing_redeem_button);
                    final MainActivity mainActivity = activity;
                    MaterialDialog.positiveButton$default(showDialog, numValueOf, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showWelcomeDialog.1.2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                            invoke2(materialDialog);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(MaterialDialog it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            String userId = App.INSTANCE.getInstance().getUserId();
                            byte[] bytes = (userId + "An unexpected error has occurred.").getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bytes);
                            Intrinsics.checkNotNull(bArrDigest);
                            String str = "";
                            for (byte b : bArrDigest) {
                                String str2 = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                                Intrinsics.checkNotNullExpressionValue(str2, "format(this, *args)");
                                str = str + str2;
                            }
                            Util.INSTANCE.openURL(mainActivity, "https://us-central1-mirrorapp-licensing.cloudfunctions.net/redeem?id=" + userId + "&key=" + str);
                        }
                    }, 2, null);
                    showDialog.cancelable(false);
                }
            });
        } else if (lastVersion == 0) {
            activity.showDialog("welcome_trial", new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showWelcomeDialog.2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.billing_welcome_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.billing_welcome_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                    showDialog.cancelable(false);
                }
            });
        }
    }

    public final void tryStartPurchase(MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        update();
        ProductDetails productDetails = this.productDetails;
        if (productDetails != null) {
            Purchase value = this.purchase.getValue();
            Integer numValueOf = value != null ? Integer.valueOf(value.getPurchaseState()) : null;
            if (numValueOf != null && numValueOf.intValue() == 1) {
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 2) {
                showPurchasePendingDialog(activity);
                return;
            }
            BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(CollectionsKt.listOf(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build())).build();
            Intrinsics.checkNotNullExpressionValue(billingFlowParamsBuild, "build(...)");
            this.client.launchBillingFlow(activity, billingFlowParamsBuild);
            return;
        }
        MainActivity.showDialog$default(activity, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.tryStartPurchase.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                invoke2(materialDialog);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(MaterialDialog showDialog) {
                Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.billing_error_title), null, 2, null);
                MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.billing_error_body), null, null, 6, null);
                MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
            }
        }, 1, null);
        startConnection();
    }

    public final void showDemoDialog(final MainActivity activity, final boolean trialExpired) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (isPurchased()) {
            return;
        }
        MainActivity.showDialog$default(activity, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showDemoDialog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                invoke2(materialDialog);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(MaterialDialog showDialog) {
                Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                DialogCustomViewExtKt.customView$default(showDialog, Integer.valueOf(R.layout.dialog_billing_trial_expired), null, false, true, false, false, 50, null);
                showDialog.cancelable(false);
                DialogCallbackExtKt.onShow(showDialog, new C00071(showDialog, trialExpired, activity, this));
            }

            /* JADX INFO: renamed from: com.kelocube.mirrorclient.Billing$showDemoDialog$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: Billing.kt */
            @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/afollestad/materialdialogs/MaterialDialog;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
            static final class C00071 extends Lambda implements Function1<MaterialDialog, Unit> {
                final /* synthetic */ MainActivity $activity;
                final /* synthetic */ MaterialDialog $this_showDialog;
                final /* synthetic */ boolean $trialExpired;
                final /* synthetic */ Billing this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00071(MaterialDialog materialDialog, boolean z, MainActivity mainActivity, Billing billing) {
                    super(1);
                    this.$this_showDialog = materialDialog;
                    this.$trialExpired = z;
                    this.$activity = mainActivity;
                    this.this$0 = billing;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog it) {
                    String formattedPrice;
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
                    Intrinsics.checkNotNullParameter(it, "it");
                    DialogBillingTrialExpiredBinding dialogBillingTrialExpiredBindingBind = DialogBillingTrialExpiredBinding.bind(DialogCustomViewExtKt.getCustomView(this.$this_showDialog));
                    Intrinsics.checkNotNullExpressionValue(dialogBillingTrialExpiredBindingBind, "bind(...)");
                    boolean z = this.$trialExpired;
                    final MaterialDialog materialDialog = this.$this_showDialog;
                    final MainActivity mainActivity = this.$activity;
                    final Billing billing = this.this$0;
                    if (z) {
                        dialogBillingTrialExpiredBindingBind.textTitle.setText(materialDialog.getContext().getString(R.string.billing_trial_expired_title));
                        dialogBillingTrialExpiredBindingBind.textBody.setText(materialDialog.getContext().getString(R.string.billing_trial_expired_message));
                    } else {
                        dialogBillingTrialExpiredBindingBind.textTitle.setText(materialDialog.getContext().getString(R.string.billing_trial_reminder_title));
                        dialogBillingTrialExpiredBindingBind.textBody.setText(HtmlCompat.fromHtml(materialDialog.getContext().getString(R.string.billing_trial_reminder_message), 0));
                        dialogBillingTrialExpiredBindingBind.textBody.setMovementMethod(LinkMovementMethod.getInstance());
                        dialogBillingTrialExpiredBindingBind.textBody.setLinkTextColor(ContextCompat.getColor(materialDialog.getContext(), R.color.colorOnPrimary));
                    }
                    Button button = dialogBillingTrialExpiredBindingBind.buttonBuy;
                    int i = R.string.billing_trial_buy;
                    Object[] objArr = new Object[1];
                    ProductDetails productDetails = billing.productDetails;
                    if (productDetails == null || (oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails()) == null || (formattedPrice = oneTimePurchaseOfferDetails.getFormattedPrice()) == null) {
                        formattedPrice = "";
                    }
                    objArr[0] = formattedPrice;
                    button.setText(mainActivity.getString(i, objArr));
                    dialogBillingTrialExpiredBindingBind.buttonBuy.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.Billing$showDemoDialog$1$1$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Billing.C00381.C00071.invoke$lambda$2$lambda$0(billing, mainActivity, materialDialog, view);
                        }
                    });
                    dialogBillingTrialExpiredBindingBind.buttonCancel.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.Billing$showDemoDialog$1$1$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Billing.C00381.C00071.invoke$lambda$2$lambda$1(materialDialog, view);
                        }
                    });
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final void invoke$lambda$2$lambda$0(Billing this$0, MainActivity activity, MaterialDialog this_showDialog, View view) {
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    Intrinsics.checkNotNullParameter(activity, "$activity");
                    Intrinsics.checkNotNullParameter(this_showDialog, "$this_showDialog");
                    this$0.tryStartPurchase(activity);
                    this_showDialog.dismiss();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final void invoke$lambda$2$lambda$1(MaterialDialog this_showDialog, View view) {
                    Intrinsics.checkNotNullParameter(this_showDialog, "$this_showDialog");
                    this_showDialog.dismiss();
                }
            }
        }, 1, null);
    }

    public final void showOfferDialog(DialogOwner dialogOwner) {
        Intrinsics.checkNotNullParameter(dialogOwner, "dialogOwner");
        if (isPurchased()) {
            return;
        }
        DialogOwner.showDialog$default(dialogOwner, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.Billing.showOfferDialog.1
            @Override // kotlin.jvm.functions.Function1
            public final Dialog invoke(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                MaterialDialog materialDialog = new MaterialDialog(context, null, 2, null);
                DialogCustomViewExtKt.customView$default(materialDialog, Integer.valueOf(R.layout.layout_offer), null, false, true, false, false, 54, null);
                materialDialog.cancelable(false);
                materialDialog.show();
                return materialDialog;
            }
        }, 1, null);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult result, List<Purchase> purchases) {
        Intrinsics.checkNotNullParameter(result, "result");
        int responseCode = result.getResponseCode();
        if (responseCode == -1) {
            startConnection();
            Context context = this.context;
            Toast.makeText(context, context.getString(R.string.billing_error_disconnected), 1).show();
        } else if (responseCode != 0) {
            if (responseCode != 1 && responseCode != 2) {
                if (responseCode == 7) {
                    update();
                } else {
                    Context context2 = this.context;
                    Toast.makeText(context2, context2.getString(R.string.billing_error_toast, Integer.valueOf(result.getResponseCode())), 0).show();
                }
            }
        } else if (purchases != null) {
            for (Purchase purchase : purchases) {
                if (purchase.getPurchaseState() == 1 && !purchase.isAcknowledged()) {
                    BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new Billing$onPurchasesUpdated$1$1(this, purchase, null), 2, null);
                }
            }
        }
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "BillingResult: " + result.getResponseCode());
        update();
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.Billing$onBillingSetupFinished$1, reason: invalid class name */
    /* JADX INFO: compiled from: Billing.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @DebugMetadata(c = "com.kelocube.mirrorclient.Billing$onBillingSetupFinished$1", f = "Billing.kt", i = {}, l = {216}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Billing.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                BillingClient billingClient = Billing.this.client;
                QueryProductDetailsParams queryProductDetailsParamsBuild = QueryProductDetailsParams.newBuilder().setProductList(CollectionsKt.listOf(QueryProductDetailsParams.Product.newBuilder().setProductId("full_version").setProductType("inapp").build())).build();
                Intrinsics.checkNotNullExpressionValue(queryProductDetailsParamsBuild, "build(...)");
                this.label = 1;
                obj = BillingClientKotlinKt.queryProductDetails(billingClient, queryProductDetailsParamsBuild, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Billing billing = Billing.this;
            List<ProductDetails> productDetailsList = ((ProductDetailsResult) obj).getProductDetailsList();
            ProductDetails productDetails = null;
            Object obj2 = null;
            if (productDetailsList != null) {
                Iterator<T> it = productDetailsList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((ProductDetails) next).getProductId(), "full_version")) {
                        obj2 = next;
                        break;
                    }
                }
                productDetails = (ProductDetails) obj2;
            }
            billing.productDetails = productDetails;
            return Unit.INSTANCE;
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResponseCode() == 0) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new AnonymousClass1(null), 2, null);
        }
        update();
    }

    public final void showPurchasePendingDialog(MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        MainActivity.showDialog$default(activity, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showPurchasePendingDialog.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                invoke2(materialDialog);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(MaterialDialog showDialog) {
                Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.billing_pending_title), null, 2, null);
                MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.billing_pending_body), null, null, 6, null);
                MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
            }
        }, 1, null);
    }

    public final void showPurchasedDialog(final MainActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        MainActivity.showDialog$default(activity, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showPurchasedDialog.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                invoke2(materialDialog);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(MaterialDialog showDialog) {
                Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.billing_purchased_title), null, 2, null);
                MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.billing_purchased_body), null, null, 6, null);
                MaterialDialog.icon$default(showDialog, Integer.valueOf(R.drawable.ic_baseline_favorite_24), null, 2, null);
                showDialog.cancelable(false);
                Integer numValueOf = Integer.valueOf(R.string.billing_purchased_rate);
                final MainActivity mainActivity = activity;
                MaterialDialog.positiveButton$default(showDialog, numValueOf, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.Billing.showPurchasedDialog.1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                        invoke2(materialDialog);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(MaterialDialog it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        Util.INSTANCE.openURL(mainActivity, "market://details?id=com.kelocube.mirrorclient");
                    }
                }, 2, null);
                MaterialDialog.negativeButton$default(showDialog, Integer.valueOf(R.string.billing_purchased_no_thanks), null, null, 6, null);
            }
        }, 1, null);
    }

    public final void makeLicenseRequest(final String request, final Function1<? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), request);
        this.requestQueue.add(new StringRequest(request, new Response.Listener() { // from class: com.kelocube.mirrorclient.Billing$$ExternalSyntheticLambda3
            @Override // com.android.volley.Response.Listener
            public final void onResponse(Object obj) {
                Billing.makeLicenseRequest$lambda$4(this.f$0, callback, (String) obj);
            }
        }, new Response.ErrorListener() { // from class: com.kelocube.mirrorclient.Billing$$ExternalSyntheticLambda4
            @Override // com.android.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                Billing.makeLicenseRequest$lambda$7(this.f$0, request, callback, volleyError);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeLicenseRequest$lambda$4(Billing this$0, Function1 callback, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        String tag = UtilKt.getTAG(this$0);
        Intrinsics.checkNotNull(str);
        DiagnosticsKt.traceMessage(tag, str);
        callback.invoke(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeLicenseRequest$lambda$7(final Billing this$0, String request, final Function1 callback, VolleyError volleyError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), volleyError.toString());
        String str = StringsKt.replace$default(request, "\n", "", false, 4, (Object) null) + "&salt=" + System.currentTimeMillis();
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), str);
        this$0.requestQueue.add(new StringRequest(str, new Response.Listener() { // from class: com.kelocube.mirrorclient.Billing$$ExternalSyntheticLambda1
            @Override // com.android.volley.Response.Listener
            public final void onResponse(Object obj) {
                Billing.makeLicenseRequest$lambda$7$lambda$5(this.f$0, callback, (String) obj);
            }
        }, new Response.ErrorListener() { // from class: com.kelocube.mirrorclient.Billing$$ExternalSyntheticLambda2
            @Override // com.android.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError2) {
                Billing.makeLicenseRequest$lambda$7$lambda$6(this.f$0, callback, volleyError2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeLicenseRequest$lambda$7$lambda$5(Billing this$0, Function1 callback, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        String tag = UtilKt.getTAG(this$0);
        Intrinsics.checkNotNull(str);
        DiagnosticsKt.traceMessage(tag, str);
        callback.invoke(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void makeLicenseRequest$lambda$7$lambda$6(Billing this$0, Function1 callback, VolleyError volleyError) {
        String string;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(callback, "$callback");
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), volleyError.toString());
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (networkResponse == null || (string = Integer.valueOf(networkResponse.statusCode).toString()) == null) {
            string = "0";
        }
        callback.invoke(string);
    }
}
