package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.multidex.MultiDexApplication;
import androidx.preference.PreferenceManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: App.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0002'(B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0017J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020!H\u0003J\b\u0010#\u001a\u00020!H\u0003J\b\u0010$\u001a\u00020!H\u0016J\b\u0010%\u001a\u00020!H\u0002J\b\u0010&\u001a\u00020!H\u0002R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\t@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001f\u0010\r\u001a\u0010\u0012\f\u0012\n \u0010*\u0004\u0018\u00010\u000f0\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0012@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0018@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006)"}, d2 = {"Lcom/kelocube/mirrorclient/App;", "Landroidx/multidex/MultiDexApplication;", "Landroidx/lifecycle/LifecycleObserver;", "()V", "<set-?>", "Lcom/kelocube/mirrorclient/Billing;", "billing", "getBilling", "()Lcom/kelocube/mirrorclient/Billing;", "Lcom/kelocube/mirrorclient/Diagnostics;", "diagnostics", "getDiagnostics", "()Lcom/kelocube/mirrorclient/Diagnostics;", "isActive", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "()Landroidx/lifecycle/MutableLiveData;", "Lcom/kelocube/mirrorclient/TransportListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getListener", "()Lcom/kelocube/mirrorclient/TransportListener;", "startTime", "", "", "userId", "getUserId", "()Ljava/lang/String;", "getTestId", "", "isResuming", "activityStartTime", "onCreate", "", "onStart", "onStop", "onTerminate", "requestPermission", "runFgServiceWhenNecessary", "AppType", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class App extends MultiDexApplication implements LifecycleObserver {
    public static App instance;
    private Billing billing;
    private Diagnostics diagnostics;
    private final MutableLiveData<Boolean> isActive = new MutableLiveData<>(false);
    private TransportListener listener;
    private long startTime;
    private String userId;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AppType type = AppType.Superbrush;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: App.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kelocube/mirrorclient/App$AppType;", "", "(Ljava/lang/String;I)V", "Superbrush", "USBMonitor", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class AppType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AppType[] $VALUES;
        public static final AppType Superbrush = new AppType("Superbrush", 0);
        public static final AppType USBMonitor = new AppType("USBMonitor", 1);

        private static final /* synthetic */ AppType[] $values() {
            return new AppType[]{Superbrush, USBMonitor};
        }

        public static EnumEntries<AppType> getEntries() {
            return $ENTRIES;
        }

        public static AppType valueOf(String str) {
            return (AppType) Enum.valueOf(AppType.class, str);
        }

        public static AppType[] values() {
            return (AppType[]) $VALUES.clone();
        }

        private AppType(String str, int i) {
        }

        static {
            AppType[] appTypeArr$values = $values();
            $VALUES = appTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(appTypeArr$values);
        }
    }

    /* JADX INFO: compiled from: App.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/kelocube/mirrorclient/App$Companion;", "", "()V", "instance", "Lcom/kelocube/mirrorclient/App;", "getInstance", "()Lcom/kelocube/mirrorclient/App;", "setInstance", "(Lcom/kelocube/mirrorclient/App;)V", "type", "Lcom/kelocube/mirrorclient/App$AppType;", "getType", "()Lcom/kelocube/mirrorclient/App$AppType;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final App getInstance() {
            App app = App.instance;
            if (app != null) {
                return app;
            }
            Intrinsics.throwUninitializedPropertyAccessException("instance");
            return null;
        }

        public final void setInstance(App app) {
            Intrinsics.checkNotNullParameter(app, "<set-?>");
            App.instance = app;
        }

        public final AppType getType() {
            return App.type;
        }
    }

    public final String getUserId() {
        String str = this.userId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userId");
        return null;
    }

    public final Diagnostics getDiagnostics() {
        Diagnostics diagnostics = this.diagnostics;
        if (diagnostics != null) {
            return diagnostics;
        }
        Intrinsics.throwUninitializedPropertyAccessException("diagnostics");
        return null;
    }

    public final TransportListener getListener() {
        TransportListener transportListener = this.listener;
        if (transportListener != null) {
            return transportListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException(ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return null;
    }

    public final Billing getBilling() {
        Billing billing = this.billing;
        if (billing != null) {
            return billing;
        }
        Intrinsics.throwUninitializedPropertyAccessException("billing");
        return null;
    }

    public final MutableLiveData<Boolean> isActive() {
        return this.isActive;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        ProcessLifecycleOwner.INSTANCE.get().getLifecycle().addObserver(this);
        String string = Settings.Secure.getString(getContentResolver(), "android_id");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        this.userId = string;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.diagnostics = new Diagnostics(applicationContext, getUserId());
        Context applicationContext2 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
        this.listener = new TransportListener(applicationContext2);
        Context applicationContext3 = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
        this.billing = new Billing(applicationContext3);
        runFgServiceWhenNecessary();
        INSTANCE.setInstance(this);
    }

    @Override // android.app.Application
    public void onTerminate() {
        getListener().close();
        super.onTerminate();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    private final void onStart() {
        Log.i(UtilKt.getTAG(this), "onStart");
        this.startTime = System.nanoTime();
        this.isActive.setValue(true);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private final void onStop() {
        Log.i(UtilKt.getTAG(this), "onStop");
        this.isActive.setValue(false);
    }

    public final boolean isResuming(long activityStartTime) {
        Boolean value = this.isActive.getValue();
        Intrinsics.checkNotNull(value);
        if (value.booleanValue()) {
            long j = this.startTime;
            if (j != 0 && activityStartTime != 0 && Math.abs(j - activityStartTime) < 1000000000) {
                return true;
            }
        }
        return false;
    }

    public final int getTestId() {
        return PreferenceManager.getDefaultSharedPreferences(this).getInt("test_id", 0);
    }

    private final void runFgServiceWhenNecessary() {
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.App$runFgServiceWhenNecessary$updateFgServiceStatus$1
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
                Boolean value = this.this$0.getListener().isSessionActive().getValue();
                if (value == null) {
                    value = false;
                }
                boolean zBooleanValue = value.booleanValue();
                boolean z = PreferenceManager.getDefaultSharedPreferences(this.this$0.getApplicationContext()).getBoolean(PrefsKt.PREF_REMAIN_CONNECTED, true);
                if (!zBooleanValue || FgService.Companion.isRunning()) {
                    if (!zBooleanValue && FgService.Companion.isRunning()) {
                        this.this$0.stopService(new Intent(this.this$0, (Class<?>) FgService.class));
                    }
                } else if (z) {
                    if (ContextCompat.checkSelfPermission(this.this$0, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION") != 0) {
                        this.this$0.requestPermission();
                    } else {
                        Intent intent = new Intent(this.this$0, (Class<?>) FgService.class);
                        if (Build.VERSION.SDK_INT < 29) {
                            ContextCompat.startForegroundService(this.this$0, intent);
                        }
                    }
                }
                if (!zBooleanValue || z || Intrinsics.areEqual((Object) this.this$0.isActive().getValue(), (Object) true)) {
                    return;
                }
                this.this$0.getListener().close();
            }
        };
        this.isActive.observeForever(new AppKt$sam$androidx_lifecycle_Observer$0(new Function1<Boolean, Unit>() { // from class: com.kelocube.mirrorclient.App.runFgServiceWhenNecessary.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean bool) {
                function0.invoke();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestPermission() {
        if (Build.VERSION.SDK_INT >= 34) {
            Intent intent = new Intent("REQUEST_PERMISSION");
            intent.putExtra("permission", "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION");
            sendBroadcast(intent);
        }
    }
}
