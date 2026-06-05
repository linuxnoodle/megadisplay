package com.kelocube.mirrorclient;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.kelocube.mirrorclient.AOAPTransportListener;
import com.kelocube.mirrorclient.MirrorClient;
import com.kelocube.mirrorclient.TCPTransportListener;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransportListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u00018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u00101\u001a\u000202J\u0010\u00103\u001a\u0002022\b\u00104\u001a\u0004\u0018\u000105J\b\u00106\u001a\u000202H\u0002J\u0006\u00107\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\r\"\u0004\b \u0010!R\u0011\u0010\"\u001a\u00020#¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001f\u0010&\u001a\u0010\u0012\f\u0012\n (*\u0004\u0018\u00010\n0\n0'¢\u0006\b\n\u0000\u001a\u0004\b&\u0010)R\u000e\u0010*\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001f\u0010,\u001a\u0010\u0012\f\u0012\n (*\u0004\u0018\u00010\u00160\u00160'¢\u0006\b\n\u0000\u001a\u0004\b-\u0010)R\u000e\u0010.\u001a\u00020/X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/kelocube/mirrorclient/TransportListener;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "aoap", "Lcom/kelocube/mirrorclient/AOAPTransportListener;", "batteryState", "", "<set-?>", "", "canAutoConnectUSB", "getCanAutoConnectUSB", "()Z", "value", "Lcom/kelocube/mirrorclient/MirrorClient;", "client", "getClient", "()Lcom/kelocube/mirrorclient/MirrorClient;", "setClient", "(Lcom/kelocube/mirrorclient/MirrorClient;)V", "clientReadyState", "Lcom/kelocube/mirrorclient/TransportListener$State;", "clientStateObserver", "Landroidx/lifecycle/Observer;", "Lcom/kelocube/mirrorclient/MirrorClient$State;", "getClientStateObserver", "()Landroidx/lifecycle/Observer;", "clients", "", "enabled", "getEnabled", "setEnabled", "(Z)V", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "isSessionActive", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "()Landroidx/lifecycle/MutableLiveData;", "isUSBConnected", "lastState", "state", "getState", "tcp", "Lcom/kelocube/mirrorclient/TCPTransportListener;", "usbDisconnectEvent", "close", "", "openIntent", "intent", "Landroid/content/Intent;", "update", "useAutoConnectUSB", "State", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TransportListener {
    private final AOAPTransportListener aoap;
    private int batteryState;
    private boolean canAutoConnectUSB;
    private MirrorClient client;
    private State clientReadyState;
    private final Observer<MirrorClient.State> clientStateObserver;
    private List<MirrorClient> clients;
    private final Context context;
    private boolean enabled;
    private final Handler handler;
    private final MutableLiveData<Boolean> isSessionActive;
    private boolean isUSBConnected;
    private State lastState;
    private final MutableLiveData<State> state;
    private final TCPTransportListener tcp;
    private int usbDisconnectEvent;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TransportListener.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/kelocube/mirrorclient/TransportListener$State;", "", "ready", "", "(Ljava/lang/String;IZ)V", "getReady", "()Z", "NoCable", "ChargeOnly", "NoAOAP", "AOAPDenied", "Waiting", "WaitingAOAP", "Ready", "ReadyWifi", "UpdateClient", "UpdateHost", "Error", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State AOAPDenied;
        public static final State ChargeOnly;
        public static final State NoAOAP;
        public static final State Waiting;
        public static final State WaitingAOAP;
        private final boolean ready;
        public static final State NoCable = new State("NoCable", 0, false, 1, null);
        public static final State Ready = new State("Ready", 6, true);
        public static final State ReadyWifi = new State("ReadyWifi", 7, true);
        public static final State UpdateClient = new State("UpdateClient", 8, false, 1, null);
        public static final State UpdateHost = new State("UpdateHost", 9, false, 1, null);
        public static final State Error = new State("Error", 10, false, 1, null);

        private static final /* synthetic */ State[] $values() {
            return new State[]{NoCable, ChargeOnly, NoAOAP, AOAPDenied, Waiting, WaitingAOAP, Ready, ReadyWifi, UpdateClient, UpdateHost, Error};
        }

        public static EnumEntries<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        private State(String str, int i, boolean z) {
            this.ready = z;
        }

        /* synthetic */ State(String str, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, (i2 & 1) != 0 ? false : z);
        }

        public final boolean getReady() {
            return this.ready;
        }

        static {
            int i = 1;
            DefaultConstructorMarker defaultConstructorMarker = null;
            boolean z = false;
            ChargeOnly = new State("ChargeOnly", 1, z, i, defaultConstructorMarker);
            int i2 = 1;
            DefaultConstructorMarker defaultConstructorMarker2 = null;
            boolean z2 = false;
            NoAOAP = new State("NoAOAP", 2, z2, i2, defaultConstructorMarker2);
            AOAPDenied = new State("AOAPDenied", 3, z, i, defaultConstructorMarker);
            Waiting = new State("Waiting", 4, z2, i2, defaultConstructorMarker2);
            WaitingAOAP = new State("WaitingAOAP", 5, z, i, defaultConstructorMarker);
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public TransportListener(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.handler = new Handler(Looper.getMainLooper());
        MutableLiveData<State> mutableLiveData = new MutableLiveData<>(State.NoCable);
        this.state = mutableLiveData;
        this.lastState = mutableLiveData.getValue();
        this.clientStateObserver = new Observer<MirrorClient.State>() { // from class: com.kelocube.mirrorclient.TransportListener$clientStateObserver$1
            @Override // androidx.lifecycle.Observer
            public void onChanged(MirrorClient.State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                this.this$0.isSessionActive().setValue(Boolean.valueOf(state == MirrorClient.State.Active));
            }
        };
        this.clients = new ArrayList();
        this.clientReadyState = State.Ready;
        this.tcp = new TCPTransportListener(new TCPTransportListener.Callbacks(new TransportListener$tcp$1(this)));
        AOAPTransportListener aOAPTransportListener = new AOAPTransportListener(new AOAPTransportListener.Callbacks(new TransportListener$aoap$1(this)), context);
        this.aoap = aOAPTransportListener;
        this.isSessionActive = new MutableLiveData<>(false);
        update();
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.TransportListener.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    if (intent != null) {
                        int intExtra = intent.getIntExtra("plugged", -1);
                        TransportListener transportListener = TransportListener.this;
                        transportListener.batteryState = (intExtra & 2) != 0 ? 2 : (intExtra & 1) != 0 ? 1 : 0;
                        transportListener.update();
                    }
                }
            }, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 4);
        } else {
            context.registerReceiver(new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.TransportListener.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    if (intent != null) {
                        int intExtra = intent.getIntExtra("plugged", -1);
                        TransportListener transportListener = TransportListener.this;
                        transportListener.batteryState = (intExtra & 2) != 0 ? 2 : (intExtra & 1) != 0 ? 1 : 0;
                        transportListener.update();
                    }
                }
            }, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        }
        aOAPTransportListener.getHaveAccessory().observeForever(new TransportListenerKt$sam$androidx_lifecycle_Observer$0(new Function1<Boolean, Unit>() { // from class: com.kelocube.mirrorclient.TransportListener.3
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
                TransportListener.this.update();
            }
        }));
        if (Build.VERSION.SDK_INT >= 33) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.TransportListener.4
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    String action = intent.getAction();
                    if (action != null && action.hashCode() == -343630553 && action.equals("android.net.wifi.STATE_CHANGE")) {
                        UtilKt.debugToast(context2, "NETWORK_STATE_CHANGED_ACTION");
                        TransportListener.this.update();
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            Unit unit = Unit.INSTANCE;
            context.registerReceiver(broadcastReceiver, intentFilter, 4);
            return;
        }
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.kelocube.mirrorclient.TransportListener.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                String action = intent.getAction();
                if (action != null && action.hashCode() == -343630553 && action.equals("android.net.wifi.STATE_CHANGE")) {
                    UtilKt.debugToast(context2, "NETWORK_STATE_CHANGED_ACTION");
                    TransportListener.this.update();
                }
            }
        };
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.wifi.STATE_CHANGE");
        Unit unit2 = Unit.INSTANCE;
        context.registerReceiver(broadcastReceiver2, intentFilter2);
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public final MutableLiveData<State> getState() {
        return this.state;
    }

    public final MirrorClient getClient() {
        return this.client;
    }

    private final void setClient(MirrorClient mirrorClient) {
        MutableLiveData<MirrorClient.State> state;
        MutableLiveData<MirrorClient.State> state2;
        MirrorClient mirrorClient2 = this.client;
        if (mirrorClient2 != null && (state2 = mirrorClient2.getState()) != null) {
            state2.removeObserver(this.clientStateObserver);
        }
        this.client = mirrorClient;
        if (mirrorClient == null || (state = mirrorClient.getState()) == null) {
            return;
        }
        state.observeForever(this.clientStateObserver);
    }

    public final Observer<MirrorClient.State> getClientStateObserver() {
        return this.clientStateObserver;
    }

    public final boolean getCanAutoConnectUSB() {
        return this.canAutoConnectUSB;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final void setEnabled(boolean z) throws IOException {
        this.tcp.setEnabled(z);
        this.aoap.setEnabled(z);
        this.enabled = z;
    }

    public final MutableLiveData<Boolean> isSessionActive() {
        return this.isSessionActive;
    }

    public final boolean useAutoConnectUSB() {
        boolean z = this.canAutoConnectUSB;
        this.canAutoConnectUSB = false;
        return z;
    }

    public final void close() {
        setClient(null);
        this.tcp.close();
        this.aoap.close();
    }

    public final void openIntent(Intent intent) throws IOException {
        this.aoap.openFromIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void update() {
        State state;
        State state2;
        Log.d(UtilKt.getTAG(this), "Updating");
        while (true) {
            Transport transportTakeTransport = this.aoap.takeTransport();
            if (transportTakeTransport == null && (transportTakeTransport = this.tcp.takeTransport()) == null) {
                break;
            }
            TCPTransport tCPTransport = transportTakeTransport instanceof TCPTransport ? (TCPTransport) transportTakeTransport : null;
            this.clientReadyState = (tCPTransport == null || !tCPTransport.isRemote()) ? State.Ready : State.ReadyWifi;
            this.clients.add(new MirrorClient(transportTakeTransport, new MirrorClient.Callbacks(new Function2<MirrorClient, AppException, Unit>() { // from class: com.kelocube.mirrorclient.TransportListener.update.1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(MirrorClient mirrorClient, AppException appException) {
                    invoke2(mirrorClient, appException);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MirrorClient client, AppException e) {
                    Intrinsics.checkNotNullParameter(client, "client");
                    Intrinsics.checkNotNullParameter(e, "e");
                    client.close();
                    TransportListener.this.clients.remove(client);
                    TransportListener.this.update();
                }
            })));
        }
        List<MirrorClient> list = this.clients;
        if (list.size() > 1) {
            CollectionsKt.sortWith(list, new Comparator() { // from class: com.kelocube.mirrorclient.TransportListener$update$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    MirrorClient mirrorClient = (MirrorClient) t;
                    MirrorClient mirrorClient2 = (MirrorClient) t2;
                    return ComparisonsKt.compareValues(Integer.valueOf((mirrorClient.getError() != null ? 8 : 0) + (mirrorClient.getState().getValue() == MirrorClient.State.Closed ? 4 : 0) + (mirrorClient.isRemote() ? 2 : 0)), Integer.valueOf((mirrorClient2.getError() == null ? 0 : 8) + (mirrorClient2.getState().getValue() != MirrorClient.State.Closed ? 0 : 4) + (mirrorClient2.isRemote() ? 2 : 0)));
                }
            });
        }
        setClient((MirrorClient) CollectionsKt.firstOrNull((List) this.clients));
        MirrorClient mirrorClient = this.client;
        if (mirrorClient != null) {
            this.state.setValue((mirrorClient == null || !mirrorClient.isRemote()) ? State.Ready : State.ReadyWifi);
        } else {
            AppException error = this.aoap.getError();
            if (error == null) {
                error = this.tcp.getError();
            }
            if (error != null) {
                MutableLiveData<State> mutableLiveData = this.state;
                int type = error.getType();
                if (type == 2) {
                    state2 = State.UpdateHost;
                } else if (type == 3) {
                    state2 = State.UpdateClient;
                } else if (type == 4) {
                    state2 = State.AOAPDenied;
                } else {
                    UtilKt.debugToast(this.context, error + "\n" + error.getStackTrace());
                    state2 = State.Error;
                }
                mutableLiveData.setValue(state2);
            } else {
                int i = this.batteryState;
                if (i == 2 || i == 1) {
                    MutableLiveData<State> mutableLiveData2 = this.state;
                    if (Intrinsics.areEqual((Object) this.aoap.getHaveAccessory().getValue(), (Object) true)) {
                        state = State.WaitingAOAP;
                    } else if (!this.aoap.getSupported()) {
                        state = State.NoAOAP;
                    } else {
                        state = State.Waiting;
                    }
                    mutableLiveData2.setValue(state);
                } else {
                    this.state.setValue(State.NoCable);
                }
            }
        }
        if (this.lastState != this.state.getValue()) {
            DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "State: " + this.state.getValue());
            this.lastState = this.state.getValue();
        }
        final boolean z = this.batteryState != 0;
        if (this.isUSBConnected != z) {
            this.isUSBConnected = z;
            final int i2 = this.usbDisconnectEvent + 1;
            this.usbDisconnectEvent = i2;
            this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.TransportListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    TransportListener.update$lambda$4(i2, this, z);
                }
            }, z ? TransportListenerKt.MS_DELAY_USB_CONNECT : 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void update$lambda$4(int i, TransportListener this$0, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == this$0.usbDisconnectEvent) {
            if (z) {
                DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), "USB connected");
                this$0.aoap.startPolling();
            } else {
                DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), "USB disconnected");
                this$0.canAutoConnectUSB = true;
                this$0.aoap.reset();
            }
        }
    }
}
