package com.kelocube.mirrorclient;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.lifecycle.MutableLiveData;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AOAPTransportListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001BB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00104\u001a\u000205J\u0010\u00106\u001a\u0002052\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002052\b\u0010:\u001a\u0004\u0018\u00010;J\u0006\u0010<\u001a\u000205J\u0006\u0010=\u001a\u000205J\b\u0010>\u001a\u0004\u0018\u00010?J\b\u0010@\u001a\u000205H\u0002J\b\u0010A\u001a\u000205H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0018\u001a\u0010\u0012\f\u0012\n \u001a*\u0004\u0018\u00010\n0\n0\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n \u001a*\u0004\u0018\u00010!0!X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010(\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\rR\u000e\u0010,\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u000e\u00102\u001a\u000203X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006C"}, d2 = {"Lcom/kelocube/mirrorclient/AOAPTransportListener;", "", "callbacks", "Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;", "context", "Landroid/content/Context;", "(Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;Landroid/content/Context;)V", "connectingTransport", "Lcom/kelocube/mirrorclient/AOAPTransport;", "value", "", "enabled", "getEnabled", "()Z", "setEnabled", "(Z)V", MirrorActivity.RESULT_EXTRA_ERROR, "Lcom/kelocube/mirrorclient/AppException;", "getError", "()Lcom/kelocube/mirrorclient/AppException;", "setError", "(Lcom/kelocube/mirrorclient/AppException;)V", "handler", "Landroid/os/Handler;", "haveAccessory", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "getHaveAccessory", "()Landroidx/lifecycle/MutableLiveData;", "setHaveAccessory", "(Landroidx/lifecycle/MutableLiveData;)V", "havePermission", "permIntent", "Landroid/app/PendingIntent;", "pipe", "Lcom/kelocube/mirrorclient/AOAPPipe;", "getPipe", "()Lcom/kelocube/mirrorclient/AOAPPipe;", "setPipe", "(Lcom/kelocube/mirrorclient/AOAPPipe;)V", "polling", "requested", "supported", "getSupported", "ticking", NotificationCompat.CATEGORY_TRANSPORT, "getTransport", "()Lcom/kelocube/mirrorclient/AOAPTransport;", "setTransport", "(Lcom/kelocube/mirrorclient/AOAPTransport;)V", "usbManager", "Landroid/hardware/usb/UsbManager;", "close", "", "openAccessory", "accessory", "Landroid/hardware/usb/UsbAccessory;", "openFromIntent", "intent", "Landroid/content/Intent;", "reset", "startPolling", "takeTransport", "Lcom/kelocube/mirrorclient/Transport;", "tick", "tryConnect", "Callbacks", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AOAPTransportListener {
    private final Callbacks callbacks;
    private AOAPTransport connectingTransport;
    private final Context context;
    private boolean enabled;
    private AppException error;
    private final Handler handler;
    private MutableLiveData<Boolean> haveAccessory;
    private boolean havePermission;
    private final PendingIntent permIntent;
    private AOAPPipe pipe;
    private boolean polling;
    private boolean requested;
    private final boolean supported;
    private boolean ticking;
    private AOAPTransport transport;
    private final UsbManager usbManager;

    /* JADX INFO: compiled from: AOAPTransportListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;", "", "onUpdate", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "getOnUpdate", "()Lkotlin/jvm/functions/Function0;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function0<Unit> onUpdate;

        public Callbacks(Function0<Unit> onUpdate) {
            Intrinsics.checkNotNullParameter(onUpdate, "onUpdate");
            this.onUpdate = onUpdate;
        }

        public final Function0<Unit> getOnUpdate() {
            return this.onUpdate;
        }
    }

    public AOAPTransportListener(Callbacks callbacks, Context context) throws IOException {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        Intrinsics.checkNotNullParameter(context, "context");
        this.callbacks = callbacks;
        this.context = context;
        this.supported = context.getPackageManager().hasSystemFeature("android.hardware.usb.accessory");
        this.handler = new Handler();
        this.haveAccessory = new MutableLiveData<>(false);
        Object systemService = context.getSystemService("usb");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        this.usbManager = (UsbManager) systemService;
        this.permIntent = PendingIntent.getBroadcast(context, 0, new Intent("com.android.example.USB_PERMISSION"), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        final String tag = UtilKt.getTAG(this);
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.AOAPTransportListener.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) throws IOException {
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    if (Intrinsics.areEqual(intent.getAction(), "com.android.example.USB_PERMISSION")) {
                        if (intent.getBooleanExtra("permission", false)) {
                            Log.i(tag, "Accessory permission granted");
                            this.openFromIntent(intent);
                        } else {
                            Log.w(tag, "Accessory permission denied");
                            this.setError(new AppException("Accessory permission denied", null, 4));
                            this.callbacks.getOnUpdate().invoke();
                        }
                    }
                }
            }, new IntentFilter("com.android.example.USB_PERMISSION"), 4);
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.AOAPTransportListener.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) throws IOException {
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    if (Intrinsics.areEqual(intent.getAction(), "android.hardware.usb.action.USB_ACCESSORY_DETACHED")) {
                        UtilKt.debugToast(context2, "ACTION_USB_ACCESSORY_DETACHED");
                        AOAPTransportListener.this.reset();
                    }
                }
            }, new IntentFilter("android.hardware.usb.action.USB_ACCESSORY_DETACHED"), 4);
        } else {
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.AOAPTransportListener.3
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) throws IOException {
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    if (Intrinsics.areEqual(intent.getAction(), "com.android.example.USB_PERMISSION")) {
                        if (intent.getBooleanExtra("permission", false)) {
                            Log.i(tag, "Accessory permission granted");
                            this.openFromIntent(intent);
                        } else {
                            Log.w(tag, "Accessory permission denied");
                            this.setError(new AppException("Accessory permission denied", null, 4));
                            this.callbacks.getOnUpdate().invoke();
                        }
                    }
                }
            }, new IntentFilter("com.android.example.USB_PERMISSION"));
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.AOAPTransportListener.4
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) throws IOException {
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    if (Intrinsics.areEqual(intent.getAction(), "android.hardware.usb.action.USB_ACCESSORY_DETACHED")) {
                        UtilKt.debugToast(context2, "ACTION_USB_ACCESSORY_DETACHED");
                        AOAPTransportListener.this.reset();
                    }
                }
            }, new IntentFilter("android.hardware.usb.action.USB_ACCESSORY_DETACHED"));
        }
        tick();
    }

    public final boolean getSupported() {
        return this.supported;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(boolean z) throws IOException {
        this.enabled = z;
        if (!z || this.ticking) {
            return;
        }
        tick();
    }

    public final AOAPPipe getPipe() {
        return this.pipe;
    }

    public final void setPipe(AOAPPipe aOAPPipe) {
        this.pipe = aOAPPipe;
    }

    public final AOAPTransport getTransport() {
        return this.transport;
    }

    public final void setTransport(AOAPTransport aOAPTransport) {
        this.transport = aOAPTransport;
    }

    public final AppException getError() {
        return this.error;
    }

    public final void setError(AppException appException) {
        this.error = appException;
    }

    public final MutableLiveData<Boolean> getHaveAccessory() {
        return this.haveAccessory;
    }

    public final void setHaveAccessory(MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.haveAccessory = mutableLiveData;
    }

    public final Transport takeTransport() {
        AOAPTransport aOAPTransport = this.transport;
        this.transport = null;
        return aOAPTransport;
    }

    public final void startPolling() {
        this.polling = true;
    }

    public final void close() {
        AOAPTransport aOAPTransport = this.transport;
        if (aOAPTransport != null) {
            aOAPTransport.close();
        }
        AOAPTransport aOAPTransport2 = this.connectingTransport;
        if (aOAPTransport2 != null) {
            aOAPTransport2.close();
        }
    }

    public final void reset() throws IOException {
        AOAPTransport aOAPTransport = this.connectingTransport;
        if (aOAPTransport != null) {
            aOAPTransport.close();
        }
        this.connectingTransport = null;
        AOAPTransport aOAPTransport2 = this.transport;
        if (aOAPTransport2 != null) {
            aOAPTransport2.close();
        }
        this.transport = null;
        if (this.pipe != null) {
            DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "CLOSE ACCESSORY");
        }
        AOAPPipe aOAPPipe = this.pipe;
        if (aOAPPipe != null) {
            aOAPPipe.close();
        }
        this.pipe = null;
        this.error = null;
        this.requested = false;
        this.polling = false;
    }

    private final void openAccessory(UsbAccessory accessory) throws IOException {
        reset();
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenAccessory = this.usbManager.openAccessory(accessory);
            Intrinsics.checkNotNullExpressionValue(parcelFileDescriptorOpenAccessory, "openAccessory(...)");
            this.pipe = new AOAPPipe(parcelFileDescriptorOpenAccessory);
            UtilKt.debugToast(this.context, "OPEN ACCESSORY");
        } catch (SecurityException e) {
            this.error = new AppException("AOAP open SecurityException", null, 4);
            UtilKt.debugToast(this.context, e.toString());
        } catch (Throwable th) {
            UtilKt.debugToast(this.context, th.toString());
            Log.w(UtilKt.getTAG(this), th);
        }
        tryConnect();
    }

    private final void tryConnect() {
        AOAPPipe aOAPPipe = this.pipe;
        if (aOAPPipe != null) {
            AOAPTransport aOAPTransport = this.connectingTransport;
            if (aOAPTransport != null) {
                aOAPTransport.close();
            }
            this.connectingTransport = null;
            if (aOAPPipe.getInUse()) {
                return;
            }
            Log.i(UtilKt.getTAG(this), "Opening new");
            final AOAPTransport aOAPTransport2 = new AOAPTransport(aOAPPipe);
            aOAPTransport2.setOnReady(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.AOAPTransportListener$tryConnect$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    if (this.this$0.getTransport() == null) {
                        this.this$0.setTransport(aOAPTransport2);
                        if (Intrinsics.areEqual(this.this$0.connectingTransport, aOAPTransport2)) {
                            this.this$0.connectingTransport = null;
                        }
                        this.this$0.setError(null);
                        this.this$0.callbacks.getOnUpdate().invoke();
                        return;
                    }
                    aOAPTransport2.close();
                    if (Intrinsics.areEqual(this.this$0.connectingTransport, aOAPTransport2)) {
                        this.this$0.connectingTransport = null;
                    }
                    if (Intrinsics.areEqual(this.this$0.getTransport(), aOAPTransport2)) {
                        this.this$0.setTransport(null);
                    }
                    this.this$0.callbacks.getOnUpdate().invoke();
                }
            });
            aOAPTransport2.setOnError(new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.AOAPTransportListener$tryConnect$1$1$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
                    invoke2(appException);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(AppException it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.getType() != 1) {
                        this.this$0.setError(it);
                    }
                    aOAPTransport2.close();
                    if (Intrinsics.areEqual(this.this$0.connectingTransport, aOAPTransport2)) {
                        this.this$0.connectingTransport = null;
                    }
                    if (Intrinsics.areEqual(this.this$0.getTransport(), aOAPTransport2)) {
                        this.this$0.setTransport(null);
                    }
                    this.this$0.callbacks.getOnUpdate().invoke();
                }
            });
            aOAPTransport2.start();
            this.connectingTransport = aOAPTransport2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openFromIntent(android.content.Intent r7) throws java.io.IOException {
        /*
            r6 = this;
            com.kelocube.mirrorclient.AOAPPipe r0 = r6.pipe
            r1 = 1
            if (r0 != 0) goto L2f
            if (r7 == 0) goto L2f
            java.lang.String r0 = "accessory"
            android.os.Parcelable r7 = r7.getParcelableExtra(r0)
            android.hardware.usb.UsbAccessory r7 = (android.hardware.usb.UsbAccessory) r7
            if (r7 == 0) goto L2f
            java.lang.String r0 = com.kelocube.mirrorclient.UtilKt.getTAG(r6)
            java.lang.String r2 = r7.getDescription()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Intent: "
            r3.<init>(r4)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            com.kelocube.mirrorclient.DiagnosticsKt.traceMessage(r0, r2)
            r6.havePermission = r1
            r6.openAccessory(r7)
        L2f:
            com.kelocube.mirrorclient.AOAPPipe r7 = r6.pipe
            if (r7 != 0) goto L92
            android.hardware.usb.UsbManager r7 = r6.usbManager
            android.hardware.usb.UsbAccessory[] r7 = r7.getAccessoryList()
            if (r7 == 0) goto L92
            int r0 = r7.length
            r2 = 0
        L3d:
            if (r2 >= r0) goto L92
            r3 = r7[r2]
            java.lang.String r4 = r3.getModel()
            java.lang.String r5 = "Android"
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L77
            java.lang.String r4 = r3.getModel()
            java.lang.String r5 = "getModel(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            int r4 = r4.length()
            if (r4 != 0) goto L5f
            goto L77
        L5f:
            java.lang.String r4 = r3.getModel()
            java.lang.String r5 = "superDisplay"
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 != 0) goto L77
            java.lang.String r4 = r3.getModel()
            java.lang.String r5 = "SuperDisplay"
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L8f
        L77:
            boolean r4 = r6.havePermission
            if (r4 == 0) goto L82
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            r6.openAccessory(r3)
            goto L8f
        L82:
            boolean r4 = r6.requested
            if (r4 != 0) goto L8f
            android.hardware.usb.UsbManager r4 = r6.usbManager
            android.app.PendingIntent r5 = r6.permIntent
            r4.requestPermission(r3, r5)
            r6.requested = r1
        L8f:
            int r2 = r2 + 1
            goto L3d
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kelocube.mirrorclient.AOAPTransportListener.openFromIntent(android.content.Intent):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tick() throws IOException {
        AOAPPipe aOAPPipe;
        if (this.enabled && this.polling) {
            openFromIntent(null);
        }
        if (this.enabled && (aOAPPipe = this.pipe) != null && !aOAPPipe.getInUse()) {
            tryConnect();
        }
        if (this.enabled) {
            this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.AOAPTransportListener$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    this.f$0.tick();
                }
            }, 1000L);
        }
        this.ticking = this.enabled;
    }
}
