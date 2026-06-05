package com.kelocube.mirrorclient.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.lifecycle.Observer;
import androidx.preference.PreferenceManager;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.input.DialogInputExtKt;
import com.afollestad.materialdialogs.message.DialogMessageSettings;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.kelocube.mirrorclient.App;
import com.kelocube.mirrorclient.Billing;
import com.kelocube.mirrorclient.DiagnosticsKt;
import com.kelocube.mirrorclient.MirrorActivity;
import com.kelocube.mirrorclient.PrefsKt;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.TransportListener;
import com.kelocube.mirrorclient.UtilKt;
import com.kelocube.mirrorclient.databinding.ActivityMainBinding;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010>\u001a\u00020?2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020?0AH\u0002J\"\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u00020\u00142\u0006\u0010D\u001a\u00020\u00142\b\u0010E\u001a\u0004\u0018\u00010FH\u0014J\u0012\u0010G\u001a\u00020?2\b\u0010H\u001a\u0004\u0018\u00010IH\u0014J\b\u0010J\u001a\u00020?H\u0014J\b\u0010K\u001a\u00020?H\u0014J\b\u0010L\u001a\u00020?H\u0014J+\u0010M\u001a\u00020?2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010O2\u0017\u0010@\u001a\u0013\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020?0P¢\u0006\u0002\bRJ\u0010\u0010S\u001a\u00020?2\u0006\u0010\u0019\u001a\u00020\u001aH\u0003J\u0010\u0010T\u001a\u00020?2\u0006\u0010U\u001a\u00020\fH\u0002J\b\u0010V\u001a\u00020?H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020*X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\u000200X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u00105\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u000e\"\u0004\b7\u0010\u0010R\u001a\u00108\u001a\u000209X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006W"}, d2 = {"Lcom/kelocube/mirrorclient/ui/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "billing", "Lcom/kelocube/mirrorclient/Billing;", "getBilling", "()Lcom/kelocube/mirrorclient/Billing;", "setBilling", "(Lcom/kelocube/mirrorclient/Billing;)V", "binding", "Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;", "canAutoConnect", "", "getCanAutoConnect", "()Z", "setCanAutoConnect", "(Z)V", "connectAnim", "Landroidx/dynamicanimation/animation/SpringAnimation;", "currentState", "", "getCurrentState", "()I", "setCurrentState", "(I)V", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "getDialogOwner", "()Lcom/kelocube/mirrorclient/ui/DialogOwner;", "setDialogOwner", "(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "lastState", "Lcom/kelocube/mirrorclient/TransportListener$State;", "getLastState", "()Lcom/kelocube/mirrorclient/TransportListener$State;", "setLastState", "(Lcom/kelocube/mirrorclient/TransportListener$State;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/kelocube/mirrorclient/TransportListener;", "getListener", "()Lcom/kelocube/mirrorclient/TransportListener;", "setListener", "(Lcom/kelocube/mirrorclient/TransportListener;)V", "prefs", "Landroid/content/SharedPreferences;", "getPrefs", "()Landroid/content/SharedPreferences;", "setPrefs", "(Landroid/content/SharedPreferences;)V", "purchasePending", "getPurchasePending", "setPurchasePending", "tryStartSessionTime", "", "getTryStartSessionTime", "()J", "setTryStartSessionTime", "(J)V", "delayedHint", "", "func", "Lkotlin/Function0;", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "onStart", "showDialog", "tag", "", "Lkotlin/Function1;", "Lcom/afollestad/materialdialogs/MaterialDialog;", "Lkotlin/ExtensionFunctionType;", "showErrorReportDialog", "tryStartSession", "userInitiated", "updateState", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MainActivity extends AppCompatActivity {
    public Billing billing;
    private ActivityMainBinding binding;
    private boolean canAutoConnect;
    private SpringAnimation connectAnim;
    private int currentState;
    public DialogOwner dialogOwner;
    private final Handler handler = new Handler();
    private TransportListener.State lastState;
    public TransportListener listener;
    public SharedPreferences prefs;
    private boolean purchasePending;
    private long tryStartSessionTime;

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransportListener.State.values().length];
            try {
                iArr[TransportListener.State.NoCable.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransportListener.State.ChargeOnly.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransportListener.State.NoAOAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransportListener.State.AOAPDenied.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransportListener.State.UpdateClient.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransportListener.State.UpdateHost.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransportListener.State.Ready.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransportListener.State.ReadyWifi.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TransportListener.State.Error.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[TransportListener.State.Waiting.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[TransportListener.State.WaitingAOAP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final DialogOwner getDialogOwner() {
        DialogOwner dialogOwner = this.dialogOwner;
        if (dialogOwner != null) {
            return dialogOwner;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogOwner");
        return null;
    }

    public final void setDialogOwner(DialogOwner dialogOwner) {
        Intrinsics.checkNotNullParameter(dialogOwner, "<set-?>");
        this.dialogOwner = dialogOwner;
    }

    public final SharedPreferences getPrefs() {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prefs");
        return null;
    }

    public final void setPrefs(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<set-?>");
        this.prefs = sharedPreferences;
    }

    public final TransportListener getListener() {
        TransportListener transportListener = this.listener;
        if (transportListener != null) {
            return transportListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException(ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return null;
    }

    public final void setListener(TransportListener transportListener) {
        Intrinsics.checkNotNullParameter(transportListener, "<set-?>");
        this.listener = transportListener;
    }

    public final Billing getBilling() {
        Billing billing = this.billing;
        if (billing != null) {
            return billing;
        }
        Intrinsics.throwUninitializedPropertyAccessException("billing");
        return null;
    }

    public final void setBilling(Billing billing) {
        Intrinsics.checkNotNullParameter(billing, "<set-?>");
        this.billing = billing;
    }

    public final boolean getPurchasePending() {
        return this.purchasePending;
    }

    public final void setPurchasePending(boolean z) {
        this.purchasePending = z;
    }

    public final boolean getCanAutoConnect() {
        return this.canAutoConnect;
    }

    public final void setCanAutoConnect(boolean z) {
        this.canAutoConnect = z;
    }

    public final long getTryStartSessionTime() {
        return this.tryStartSessionTime;
    }

    public final void setTryStartSessionTime(long j) {
        this.tryStartSessionTime = j;
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public final int getCurrentState() {
        return this.currentState;
    }

    public final void setCurrentState(int i) {
        this.currentState = i;
    }

    public final TransportListener.State getLastState() {
        return this.lastState;
    }

    public final void setLastState(TransportListener.State state) {
        this.lastState = state;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityMainBinding activityMainBindingInflate = ActivityMainBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityMainBindingInflate, "inflate(...)");
        this.binding = activityMainBindingInflate;
        ActivityMainBinding activityMainBinding = null;
        if (activityMainBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBindingInflate = null;
        }
        setContentView(activityMainBindingInflate.getRoot());
        setDialogOwner(new DialogOwner(this));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
        setPrefs(defaultSharedPreferences);
        ActivityMainBinding activityMainBinding2 = this.binding;
        if (activityMainBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding2 = null;
        }
        activityMainBinding2.buttonSettings.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.onCreate$lambda$0(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding3 = this.binding;
        if (activityMainBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding3 = null;
        }
        activityMainBinding3.buttonAbout.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.onCreate$lambda$1(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding4 = this.binding;
        if (activityMainBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding4 = null;
        }
        SpringAnimation springAnimation = new SpringAnimation(activityMainBinding4.backView, DynamicAnimation.ALPHA);
        SpringForce springForce = new SpringForce();
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(200.0f);
        springAnimation.setSpring(springForce);
        springAnimation.animateToFinalPosition(0.0f);
        this.connectAnim = springAnimation;
        setBilling(App.INSTANCE.getInstance().getBilling());
        getBilling().update();
        this.purchasePending = false;
        ActivityMainBinding activityMainBinding5 = this.binding;
        if (activityMainBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding5 = null;
        }
        activityMainBinding5.buttonPurchase.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.onCreate$lambda$4(this.f$0, view);
            }
        });
        ActivityMainBinding activityMainBinding6 = this.binding;
        if (activityMainBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding6 = null;
        }
        activityMainBinding6.buttonPurchase.setVisibility(getBilling().isPurchased() ? 8 : 0);
        MainActivity mainActivity = this;
        getBilling().getPurchase().observe(mainActivity, new Observer() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainActivity.onCreate$lambda$5(this.f$0, (Purchase) obj);
            }
        });
        ActivityMainBinding activityMainBinding7 = this.binding;
        if (activityMainBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding7 = null;
        }
        activityMainBinding7.textStatusDesc.setMovementMethod(LinkMovementMethod.getInstance());
        ActivityMainBinding activityMainBinding8 = this.binding;
        if (activityMainBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityMainBinding = activityMainBinding8;
        }
        activityMainBinding.layoutRoot.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.onCreate$lambda$6(this.f$0, view);
            }
        });
        setListener(App.INSTANCE.getInstance().getListener());
        getListener().getState().observe(mainActivity, new Observer() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MainActivity.onCreate$lambda$7(this.f$0, (TransportListener.State) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, (Class<?>) SettingsActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(final MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LibsBuilder libsBuilder = new LibsBuilder();
        String string = this$0.getString(R.string.about_support);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        LibsBuilder libsBuilderWithAboutSpecial1 = libsBuilder.withAboutSpecial1(string);
        String string2 = this$0.getString(R.string.main_help);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        LibsBuilder libsBuilderWithLicenseDialog = libsBuilderWithAboutSpecial1.withAboutSpecial2(string2).withListener(new LibsConfiguration.LibsListenerImpl() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onCreate$2$1
            @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListenerImpl, com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
            public boolean onExtraClicked(View v, Libs.SpecialButton specialButton) {
                DialogOwner dialogOwner;
                Intrinsics.checkNotNullParameter(v, "v");
                Intrinsics.checkNotNullParameter(specialButton, "specialButton");
                int iOrdinal = specialButton.ordinal();
                if (iOrdinal == 0) {
                    Context context = v.getContext();
                    MyLibsActivity myLibsActivity = context instanceof MyLibsActivity ? (MyLibsActivity) context : null;
                    if (myLibsActivity == null || (dialogOwner = myLibsActivity.getDialogOwner()) == null) {
                        return true;
                    }
                    DialogOwner.showDialog$default(dialogOwner, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onCreate$2$1$onExtraClicked$1
                        @Override // kotlin.jvm.functions.Function1
                        public final Dialog invoke(Context it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            MaterialDialog materialDialog = new MaterialDialog(it, null, 2, null);
                            MaterialDialog.title$default(materialDialog, Integer.valueOf(R.string.about_support_title), null, 2, null);
                            MaterialDialog.message$default(materialDialog, Integer.valueOf(R.string.about_support_message), null, null, 6, null);
                            MaterialDialog.positiveButton$default(materialDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                            materialDialog.show();
                            return materialDialog;
                        }
                    }, 1, null);
                    return true;
                }
                if (iOrdinal != 1) {
                    return false;
                }
                Util util = Util.INSTANCE;
                Context context2 = v.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                String string3 = this.this$0.getString(R.string.about_help_url);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                util.openURL(context2, string3);
                return true;
            }

            @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListenerImpl, com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
            public boolean onIconLongClicked(View v) {
                DialogOwner dialogOwner;
                Intrinsics.checkNotNullParameter(v, "v");
                Context context = v.getContext();
                MyLibsActivity myLibsActivity = context instanceof MyLibsActivity ? (MyLibsActivity) context : null;
                if (myLibsActivity == null || (dialogOwner = myLibsActivity.getDialogOwner()) == null) {
                    return true;
                }
                this.this$0.showErrorReportDialog(dialogOwner);
                return true;
            }
        }).withOwnLibsActivityClass(MyLibsActivity.class).withLicenseShown(true).withLicenseDialog(true);
        String string3 = this$0.getString(R.string.about_label);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        LibsBuilder libsBuilderWithActivityTitle = libsBuilderWithLicenseDialog.withActivityTitle(string3);
        String string4 = this$0.getString(R.string.app_name);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        LibsBuilder libsBuilderWithAboutAppName = libsBuilderWithActivityTitle.withAboutAppName(string4);
        String string5 = this$0.getString(R.string.about_oss_description);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        libsBuilderWithAboutAppName.withAboutDescription(string5).withLibraries("androidmaterialpreferences", "lz4_java", "draglistview", "icondialoglib").start(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4(MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBilling().tryStartPurchase(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$5(MainActivity this$0, Purchase purchase) {
        Purchase value;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityMainBinding activityMainBinding = this$0.binding;
        if (activityMainBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityMainBinding = null;
        }
        activityMainBinding.buttonPurchase.setVisibility(this$0.getBilling().isPurchased() ? 8 : 0);
        if (this$0.getBilling().isPurchased() && !this$0.getPrefs().getBoolean(PrefsKt.PREF_SHOWN_PURCHASED_DIALOG, false)) {
            this$0.getBilling().showPurchasedDialog(this$0);
            this$0.getPrefs().edit().putBoolean(PrefsKt.PREF_SHOWN_PURCHASED_DIALOG, true).apply();
        } else {
            if (this$0.purchasePending || (value = this$0.getBilling().getPurchase().getValue()) == null || value.getPurchaseState() != 2) {
                return;
            }
            this$0.getBilling().showPurchasePendingDialog(this$0);
            this$0.purchasePending = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$6(MainActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.tryStartSession(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$7(MainActivity this$0, TransportListener.State state) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateState();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        final SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = defaultSharedPreferences.getInt(PrefsKt.PREF_LAST_VERSION, 0);
        if (intRef.element == 0 && defaultSharedPreferences.contains(PrefsKt.PREF_ALLOW_ERROR_REPORTS)) {
            intRef.element = 1;
        }
        this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() throws PackageManager.NameNotFoundException {
                MainActivity.onStart$lambda$8(this.f$0, intRef, defaultSharedPreferences);
            }
        }, 1000L);
        if (70 != intRef.element) {
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            editorEdit.putInt(PrefsKt.PREF_LAST_VERSION, 70);
            editorEdit.apply();
        }
        this.tryStartSessionTime = 0L;
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStart$lambda$8(MainActivity this$0, Ref.IntRef lastVersion, final SharedPreferences sharedPreferences) throws PackageManager.NameNotFoundException {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lastVersion, "$lastVersion");
        this$0.getBilling().showWelcomeDialog(this$0, lastVersion.element);
        if (sharedPreferences.contains(PrefsKt.PREF_ALLOW_ERROR_REPORTS)) {
            return;
        }
        this$0.showDialog("error_report", new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onStart$1$1
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
                showDialog.cancelable(false);
                Integer numValueOf = Integer.valueOf(R.string.main_error_reporting_allow);
                final SharedPreferences sharedPreferences2 = sharedPreferences;
                MaterialDialog.positiveButton$default(showDialog, numValueOf, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onStart$1$1.1
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
                    public final void invoke2(MaterialDialog it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        SharedPreferences.Editor editorEdit = sharedPreferences2.edit();
                        editorEdit.putBoolean(PrefsKt.PREF_ALLOW_ERROR_REPORTS, true);
                        editorEdit.apply();
                    }
                }, 2, null);
                Integer numValueOf2 = Integer.valueOf(R.string.main_error_reporting_disallow);
                final SharedPreferences sharedPreferences3 = sharedPreferences;
                MaterialDialog.negativeButton$default(showDialog, numValueOf2, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onStart$1$1.2
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
                    public final void invoke2(MaterialDialog it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        SharedPreferences.Editor editorEdit = sharedPreferences3.edit();
                        editorEdit.putBoolean(PrefsKt.PREF_ALLOW_ERROR_REPORTS, false);
                        editorEdit.apply();
                    }
                }, 2, null);
                MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_error_reporting_title), null, 2, null);
                MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_error_reporting_body), null, new Function1<DialogMessageSettings, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$onStart$1$1.3
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
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IOException {
        this.canAutoConnect = App.INSTANCE.getInstance().isResuming(System.nanoTime());
        updateState();
        getListener().setEnabled(true);
        super.onResume();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        getDialogOwner().close();
        super.onDestroy();
    }

    private final void tryStartSession(boolean userInitiated) {
        TransportListener.State value = getListener().getState().getValue();
        if (System.nanoTime() <= this.tryStartSessionTime + ((long) 1000000000) || MirrorActivity.INSTANCE.getRunning() != 0 || value == null || !value.getReady()) {
            return;
        }
        if (!userInitiated) {
            if (!getPrefs().getBoolean(PrefsKt.PREF_AUTOCONNECT, true)) {
                return;
            }
            if (!this.canAutoConnect && (value != TransportListener.State.Ready || !getListener().useAutoConnectUSB())) {
                return;
            }
        }
        this.tryStartSessionTime = System.nanoTime();
        startActivityForResult(new Intent(this, (Class<?>) MirrorActivity.class), 0);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            if ((data != null ? data.getLongExtra(MirrorActivity.RESULT_EXTRA_ACTIVE_TIME, 0L) : 0L) >= 30000000) {
                App.INSTANCE.getInstance().getBilling().showDemoDialog(this, false);
                return;
            }
            return;
        }
        Integer numValueOf = data != null ? Integer.valueOf(data.getIntExtra(MirrorActivity.RESULT_EXTRA_ERROR, 0)) : null;
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "MirrorActivity failed: " + numValueOf);
        if (numValueOf != null && numValueOf.intValue() == 1) {
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 8) {
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 5) {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_driver_error_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_driver_error_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 6) {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_license_error_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_license_error_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 7) {
            App.INSTANCE.getInstance().getBilling().showDemoDialog(this, true);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 11) {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_oom_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_oom_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 12) {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.4
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_gpu_driver_error_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_gpu_driver_error_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
        } else if (numValueOf != null && numValueOf.intValue() == 13) {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.5
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_no_encoder_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_no_encoder_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
        } else {
            showDialog$default(this, null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.onActivityResult.6
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
                    invoke2(materialDialog);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MaterialDialog showDialog) {
                    Intrinsics.checkNotNullParameter(showDialog, "$this$showDialog");
                    MaterialDialog.title$default(showDialog, Integer.valueOf(R.string.main_result_error_title), null, 2, null);
                    MaterialDialog.message$default(showDialog, Integer.valueOf(R.string.main_result_error_body), null, null, 6, null);
                    MaterialDialog.positiveButton$default(showDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorReportDialog(final DialogOwner dialogOwner) {
        DialogOwner.showDialog$default(dialogOwner, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.showErrorReportDialog.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Dialog invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                MaterialDialog materialDialog = new MaterialDialog(it, null, 2, null);
                final DialogOwner dialogOwner2 = dialogOwner;
                MaterialDialog.title$default(materialDialog, Integer.valueOf(R.string.error_report_send_title), null, 2, null);
                if (App.INSTANCE.getInstance().getDiagnostics().getEnabled()) {
                    MaterialDialog.message$default(materialDialog, Integer.valueOf(R.string.error_report_send_message), null, null, 6, null);
                    DialogInputExtKt.input$default(materialDialog, "myemail@example.com", null, null, null, 32, null, false, false, new Function2<MaterialDialog, CharSequence, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$showErrorReportDialog$1$1$1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog2, CharSequence charSequence) {
                            invoke2(materialDialog2, charSequence);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(MaterialDialog dialog, CharSequence text) {
                            Intrinsics.checkNotNullParameter(dialog, "dialog");
                            Intrinsics.checkNotNullParameter(text, "text");
                            App.INSTANCE.getInstance().getDiagnostics().captureUserReport(text.toString());
                            DialogOwner.showDialog$default(dialogOwner2, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.MainActivity$showErrorReportDialog$1$1$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public final Dialog invoke(Context it2) {
                                    Intrinsics.checkNotNullParameter(it2, "it");
                                    MaterialDialog materialDialog2 = new MaterialDialog(it2, null, 2, null);
                                    MaterialDialog.title$default(materialDialog2, Integer.valueOf(R.string.error_report_sent_title), null, 2, null);
                                    MaterialDialog.message$default(materialDialog2, Integer.valueOf(R.string.error_report_sent_message), null, null, 6, null);
                                    MaterialDialog.positiveButton$default(materialDialog2, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                                    materialDialog2.show();
                                    return materialDialog2;
                                }
                            }, 1, null);
                        }
                    }, 110, null);
                    MaterialDialog.positiveButton$default(materialDialog, Integer.valueOf(R.string.word_submit), null, null, 6, null);
                    MaterialDialog.negativeButton$default(materialDialog, Integer.valueOf(R.string.word_cancel), null, null, 6, null);
                } else {
                    MaterialDialog.message$default(materialDialog, Integer.valueOf(R.string.error_report_disabled), null, null, 6, null);
                    MaterialDialog.positiveButton$default(materialDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
                }
                materialDialog.show();
                return materialDialog;
            }
        }, 1, null);
    }

    private final void delayedHint(final Function0<Unit> func) {
        final int i = this.currentState;
        this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.ui.MainActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.delayedHint$lambda$10(i, this, func);
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void delayedHint$lambda$10(int i, MainActivity this$0, Function0 func) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(func, "$func");
        if (i == this$0.currentState) {
            func.invoke();
        }
    }

    private final void updateState() {
        String string;
        boolean z = this.lastState != getListener().getState().getValue();
        if (z) {
            this.lastState = getListener().getState().getValue();
            this.currentState++;
        }
        ActivityMainBinding activityMainBinding = null;
        if (z) {
            SpringAnimation springAnimation = this.connectAnim;
            if (springAnimation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connectAnim");
                springAnimation = null;
            }
            TransportListener.State value = getListener().getState().getValue();
            springAnimation.animateToFinalPosition((value == null || !value.getReady()) ? 0.0f : 1.0f);
        }
        tryStartSession(false);
        TransportListener.State value2 = getListener().getState().getValue();
        switch (value2 == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value2.ordinal()]) {
            case 1:
                ActivityMainBinding activityMainBinding2 = this.binding;
                if (activityMainBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding2 = null;
                }
                activityMainBinding2.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding3 = this.binding;
                if (activityMainBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding3 = null;
                }
                activityMainBinding3.textStatusLabel.setText(getString(R.string.main_status_connect_usb_label));
                ActivityMainBinding activityMainBinding4 = this.binding;
                if (activityMainBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding4 = null;
                }
                activityMainBinding4.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding5 = this.binding;
                if (activityMainBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding5;
                }
                TextView textView = activityMainBinding.textStatusDesc;
                TextTools textTools = TextTools.INSTANCE;
                String wifiIP = UtilKt.getWifiIP(this);
                if (wifiIP != null) {
                    string = getString(R.string.main_status_connect_usb_desc_ip, new Object[]{wifiIP});
                } else {
                    string = getString(R.string.main_status_connect_usb_desc);
                }
                Intrinsics.checkNotNull(string);
                textView.setText(textTools.linkify(string, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i) {
                        Util util = Util.INSTANCE;
                        MainActivity mainActivity = MainActivity.this;
                        MainActivity mainActivity2 = mainActivity;
                        String string2 = mainActivity.getString(R.string.main_status_connect_usb_link);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        util.openURL(mainActivity2, string2);
                    }
                }));
                break;
            case 2:
                ActivityMainBinding activityMainBinding6 = this.binding;
                if (activityMainBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding6 = null;
                }
                activityMainBinding6.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding7 = this.binding;
                if (activityMainBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding7 = null;
                }
                activityMainBinding7.textStatusLabel.setText(getString(R.string.main_status_charge_only_label));
                ActivityMainBinding activityMainBinding8 = this.binding;
                if (activityMainBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding8 = null;
                }
                activityMainBinding8.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding9 = this.binding;
                if (activityMainBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding9;
                }
                TextView textView2 = activityMainBinding.textStatusDesc;
                TextTools textTools2 = TextTools.INSTANCE;
                String string2 = getString(R.string.main_status_charge_only_desc);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                textView2.setText(textTools2.linkify(string2, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i) {
                        Util util = Util.INSTANCE;
                        MainActivity mainActivity = MainActivity.this;
                        MainActivity mainActivity2 = mainActivity;
                        String string3 = mainActivity.getString(R.string.main_status_charge_only_link);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        util.openURL(mainActivity2, string3);
                    }
                }));
                break;
            case 3:
                ActivityMainBinding activityMainBinding10 = this.binding;
                if (activityMainBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding10 = null;
                }
                activityMainBinding10.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding11 = this.binding;
                if (activityMainBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding11 = null;
                }
                activityMainBinding11.textStatusLabel.setText(getString(R.string.main_status_no_aoap_label));
                ActivityMainBinding activityMainBinding12 = this.binding;
                if (activityMainBinding12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding12 = null;
                }
                activityMainBinding12.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding13 = this.binding;
                if (activityMainBinding13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding13;
                }
                TextView textView3 = activityMainBinding.textStatusDesc;
                TextTools textTools3 = TextTools.INSTANCE;
                String string3 = getString(R.string.main_status_no_aoap_desc);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                textView3.setText(textTools3.linkify(string3, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.4
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i) {
                        Util util = Util.INSTANCE;
                        MainActivity mainActivity = MainActivity.this;
                        MainActivity mainActivity2 = mainActivity;
                        String string4 = mainActivity.getString(R.string.main_status_no_aoap_link);
                        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                        util.openURL(mainActivity2, string4);
                    }
                }));
                break;
            case 4:
                ActivityMainBinding activityMainBinding14 = this.binding;
                if (activityMainBinding14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding14 = null;
                }
                activityMainBinding14.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding15 = this.binding;
                if (activityMainBinding15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding15 = null;
                }
                activityMainBinding15.textStatusLabel.setText(getString(R.string.main_status_aoap_denied_label));
                ActivityMainBinding activityMainBinding16 = this.binding;
                if (activityMainBinding16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding16 = null;
                }
                activityMainBinding16.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding17 = this.binding;
                if (activityMainBinding17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding17;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_aoap_denied_desc));
                break;
            case 5:
                ActivityMainBinding activityMainBinding18 = this.binding;
                if (activityMainBinding18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding18 = null;
                }
                activityMainBinding18.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding19 = this.binding;
                if (activityMainBinding19 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding19 = null;
                }
                activityMainBinding19.textStatusLabel.setText(getString(R.string.main_status_update_client_label));
                ActivityMainBinding activityMainBinding20 = this.binding;
                if (activityMainBinding20 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding20 = null;
                }
                activityMainBinding20.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding21 = this.binding;
                if (activityMainBinding21 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding21;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_update_client_desc));
                break;
            case 6:
                ActivityMainBinding activityMainBinding22 = this.binding;
                if (activityMainBinding22 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding22 = null;
                }
                activityMainBinding22.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding23 = this.binding;
                if (activityMainBinding23 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding23 = null;
                }
                activityMainBinding23.textStatusLabel.setText(getString(R.string.main_status_update_host_label));
                ActivityMainBinding activityMainBinding24 = this.binding;
                if (activityMainBinding24 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding24 = null;
                }
                activityMainBinding24.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding25 = this.binding;
                if (activityMainBinding25 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding25;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_update_host_desc));
                break;
            case 7:
                ActivityMainBinding activityMainBinding26 = this.binding;
                if (activityMainBinding26 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding26 = null;
                }
                activityMainBinding26.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding27 = this.binding;
                if (activityMainBinding27 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding27 = null;
                }
                activityMainBinding27.textStatusLabel.setText(getString(R.string.main_status_ready_label));
                ActivityMainBinding activityMainBinding28 = this.binding;
                if (activityMainBinding28 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding28 = null;
                }
                activityMainBinding28.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding29 = this.binding;
                if (activityMainBinding29 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding29;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_ready_desc));
                break;
            case 8:
                ActivityMainBinding activityMainBinding30 = this.binding;
                if (activityMainBinding30 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding30 = null;
                }
                activityMainBinding30.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding31 = this.binding;
                if (activityMainBinding31 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding31 = null;
                }
                activityMainBinding31.textStatusLabel.setText(getString(R.string.main_status_ready_wifi_label));
                ActivityMainBinding activityMainBinding32 = this.binding;
                if (activityMainBinding32 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding32 = null;
                }
                activityMainBinding32.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding33 = this.binding;
                if (activityMainBinding33 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding33;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_ready_desc));
                break;
            case 9:
                ActivityMainBinding activityMainBinding34 = this.binding;
                if (activityMainBinding34 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding34 = null;
                }
                activityMainBinding34.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding35 = this.binding;
                if (activityMainBinding35 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding35 = null;
                }
                activityMainBinding35.textStatusLabel.setText(getString(R.string.main_status_error_label));
                ActivityMainBinding activityMainBinding36 = this.binding;
                if (activityMainBinding36 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding36 = null;
                }
                activityMainBinding36.textStatusDesc.setVisibility(0);
                ActivityMainBinding activityMainBinding37 = this.binding;
                if (activityMainBinding37 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding37;
                }
                activityMainBinding.textStatusDesc.setText(getString(R.string.main_status_error_desc));
                break;
            case 10:
                ActivityMainBinding activityMainBinding38 = this.binding;
                if (activityMainBinding38 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding38 = null;
                }
                activityMainBinding38.pbarStatus.setVisibility(0);
                ActivityMainBinding activityMainBinding39 = this.binding;
                if (activityMainBinding39 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding39 = null;
                }
                activityMainBinding39.textStatusLabel.setText(getString(R.string.main_status_wait_label));
                if (z) {
                    ActivityMainBinding activityMainBinding40 = this.binding;
                    if (activityMainBinding40 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        activityMainBinding = activityMainBinding40;
                    }
                    activityMainBinding.textStatusDesc.setVisibility(8);
                    delayedHint(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.5
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            ActivityMainBinding activityMainBinding41 = null;
                            if (Settings.Global.getInt(MainActivity.this.getContentResolver(), "adb_enabled", 0) != 0) {
                                ActivityMainBinding activityMainBinding42 = MainActivity.this.binding;
                                if (activityMainBinding42 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                    activityMainBinding42 = null;
                                }
                                activityMainBinding42.textStatusDesc.setVisibility(0);
                                ActivityMainBinding activityMainBinding43 = MainActivity.this.binding;
                                if (activityMainBinding43 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                } else {
                                    activityMainBinding41 = activityMainBinding43;
                                }
                                TextView textView4 = activityMainBinding41.textStatusDesc;
                                TextTools textTools4 = TextTools.INSTANCE;
                                String string4 = MainActivity.this.getString(R.string.main_status_wait_desc);
                                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                                final MainActivity mainActivity = MainActivity.this;
                                textView4.setText(textTools4.linkify(string4, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.5.1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                        invoke(num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(int i) {
                                        Util util = Util.INSTANCE;
                                        MainActivity mainActivity2 = mainActivity;
                                        MainActivity mainActivity3 = mainActivity2;
                                        String string5 = mainActivity2.getString(R.string.main_status_wait_desc_link);
                                        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                                        util.openURL(mainActivity3, string5);
                                    }
                                }));
                                return;
                            }
                            ActivityMainBinding activityMainBinding44 = MainActivity.this.binding;
                            if (activityMainBinding44 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                activityMainBinding44 = null;
                            }
                            activityMainBinding44.textStatusDesc.setVisibility(0);
                            ActivityMainBinding activityMainBinding45 = MainActivity.this.binding;
                            if (activityMainBinding45 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            } else {
                                activityMainBinding41 = activityMainBinding45;
                            }
                            TextView textView5 = activityMainBinding41.textStatusDesc;
                            TextTools textTools5 = TextTools.INSTANCE;
                            String string5 = MainActivity.this.getString(R.string.main_status_wait_no_adb_desc);
                            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                            final MainActivity mainActivity2 = MainActivity.this;
                            textView5.setText(textTools5.linkify(string5, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.updateState.5.2
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                    invoke(num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(int i) {
                                    Util util = Util.INSTANCE;
                                    MainActivity mainActivity3 = mainActivity2;
                                    MainActivity mainActivity4 = mainActivity3;
                                    String string6 = mainActivity3.getString(R.string.main_status_wait_no_adb_desc_link);
                                    Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                                    util.openURL(mainActivity4, string6);
                                }
                            }));
                        }
                    });
                }
                break;
            case 11:
                ActivityMainBinding activityMainBinding41 = this.binding;
                if (activityMainBinding41 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding41 = null;
                }
                activityMainBinding41.pbarStatus.setVisibility(0);
                ActivityMainBinding activityMainBinding42 = this.binding;
                if (activityMainBinding42 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding42 = null;
                }
                activityMainBinding42.textStatusLabel.setText(getString(R.string.main_status_wait_label));
                ActivityMainBinding activityMainBinding43 = this.binding;
                if (activityMainBinding43 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding43;
                }
                activityMainBinding.textStatusDesc.setVisibility(8);
                break;
            default:
                ActivityMainBinding activityMainBinding44 = this.binding;
                if (activityMainBinding44 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding44 = null;
                }
                activityMainBinding44.pbarStatus.setVisibility(8);
                ActivityMainBinding activityMainBinding45 = this.binding;
                if (activityMainBinding45 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityMainBinding45 = null;
                }
                activityMainBinding45.textStatusLabel.setText("???");
                ActivityMainBinding activityMainBinding46 = this.binding;
                if (activityMainBinding46 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityMainBinding = activityMainBinding46;
                }
                activityMainBinding.textStatusDesc.setVisibility(8);
                break;
        }
    }

    public static /* synthetic */ void showDialog$default(MainActivity mainActivity, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        mainActivity.showDialog(str, (Function1<? super MaterialDialog, Unit>) function1);
    }

    public final void showDialog(String tag, final Function1<? super MaterialDialog, Unit> func) {
        Intrinsics.checkNotNullParameter(func, "func");
        getDialogOwner().showDialog(tag, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.MainActivity.showDialog.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Dialog invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                MaterialDialog materialDialog = new MaterialDialog(MainActivity.this, null, 2, null);
                func.invoke(materialDialog);
                materialDialog.show();
                return materialDialog;
            }
        });
    }
}
