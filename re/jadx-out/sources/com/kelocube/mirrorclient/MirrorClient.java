package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import com.kelocube.mirrorclient.MirrorSession;
import com.kelocube.mirrorclient.Transport;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MirrorClient.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0003ABCB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&J\u0010\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020\fH\u0002J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+J\u0006\u0010,\u001a\u00020#J\u0010\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020/H\u0002J?\u00100\u001a\u00020#2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\b2%\u00104\u001a!\u0012\u0013\u0012\u001106¢\u0006\f\b7\u0012\b\b8\u0012\u0004\b\b(9\u0012\u0004\u0012\u00020#05j\u0002`:H\u0002J\u0006\u0010;\u001a\u00020#J\u0016\u0010<\u001a\u00020#2\u0006\u0010=\u001a\u00020>2\u0006\u0010,\u001a\u00020?J\u0006\u0010@\u001a\u00020#R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\nR\u0011\u0010\u0015\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001f\u0010\u001a\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c0\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006D"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorClient;", "", NotificationCompat.CATEGORY_TRANSPORT, "Lcom/kelocube/mirrorclient/Transport;", "callbacks", "Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;", "(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;)V", "clientVersion", "", "getClientVersion", "()I", MirrorActivity.RESULT_EXTRA_ERROR, "Lcom/kelocube/mirrorclient/AppException;", "getError", "()Lcom/kelocube/mirrorclient/AppException;", "setError", "(Lcom/kelocube/mirrorclient/AppException;)V", "handler", "Landroid/os/Handler;", "hostVersion", "getHostVersion", "isRemote", "", "()Z", "session", "Lcom/kelocube/mirrorclient/MirrorSession;", "state", "Landroidx/lifecycle/MutableLiveData;", "Lcom/kelocube/mirrorclient/MirrorClient$State;", "kotlin.jvm.PlatformType", "getState", "()Landroidx/lifecycle/MutableLiveData;", "getTransport", "()Lcom/kelocube/mirrorclient/Transport;", "close", "", "configChanged", "newConfig", "Landroid/content/res/Configuration;", "handleError", "e", "handleKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "layout", "onData", "data", "Lcom/kelocube/mirrorclient/Transport$Data;", "sendData", "type", "Lcom/kelocube/mirrorclient/MirrorClient$DataType;", "maxLength", "callback", "Lkotlin/Function1;", "Ljava/nio/ByteBuffer;", "Lkotlin/ParameterName;", "name", "to", "Lcom/kelocube/mirrorclient/DataCallback;", "showOnboarding", "startSession", "context", "Landroid/content/Context;", "Landroid/view/ViewGroup;", "stopSession", "Callbacks", "DataType", "State", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MirrorClient {
    private final Callbacks callbacks;
    private final int clientVersion;
    private AppException error;
    private final Handler handler;
    private final int hostVersion;
    private MirrorSession session;
    private final MutableLiveData<State> state;
    private final Transport transport;

    public MirrorClient(Transport transport, Callbacks callbacks) {
        Intrinsics.checkNotNullParameter(transport, "transport");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.transport = transport;
        this.callbacks = callbacks;
        this.state = new MutableLiveData<>(State.Ready);
        this.hostVersion = transport.getHostVersion();
        this.clientVersion = transport.getClientVersion();
        this.handler = new Handler(Looper.getMainLooper());
        transport.setOnError(new AnonymousClass1(this));
        transport.setOnData(new AnonymousClass2(this));
    }

    public final Transport getTransport() {
        return this.transport;
    }

    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B=\u00126\u0010\u0002\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0003¢\u0006\u0002\u0010\u000bRA\u0010\u0002\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorClient$Callbacks;", "", "onError", "Lkotlin/Function2;", "Lcom/kelocube/mirrorclient/MirrorClient;", "Lkotlin/ParameterName;", "name", "caller", "Lcom/kelocube/mirrorclient/AppException;", "e", "", "(Lkotlin/jvm/functions/Function2;)V", "getOnError", "()Lkotlin/jvm/functions/Function2;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function2<MirrorClient, AppException, Unit> onError;

        /* JADX WARN: Multi-variable type inference failed */
        public Callbacks(Function2<? super MirrorClient, ? super AppException, Unit> onError) {
            Intrinsics.checkNotNullParameter(onError, "onError");
            this.onError = onError;
        }

        public final Function2<MirrorClient, AppException, Unit> getOnError() {
            return this.onError;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0015\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorClient$DataType;", "", "id", "", "(Ljava/lang/String;IB)V", "getId", "()B", "State", "Configure", "Stop", "Frame", "FrameDone", "PointerMove", "PointerShape", "TakeScreenshot", "Touch", "Pen", "Unlock", "Scale", "InputConfig", "InputKey", "Error", "Keyboard", "Command", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class DataType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DataType[] $VALUES;
        private final byte id;
        public static final DataType State = new DataType("State", 0, (byte) 0);
        public static final DataType Configure = new DataType("Configure", 1, (byte) 1);
        public static final DataType Stop = new DataType("Stop", 2, (byte) 2);
        public static final DataType Frame = new DataType("Frame", 3, (byte) 3);
        public static final DataType FrameDone = new DataType("FrameDone", 4, (byte) 4);
        public static final DataType PointerMove = new DataType("PointerMove", 5, (byte) 5);
        public static final DataType PointerShape = new DataType("PointerShape", 6, (byte) 6);
        public static final DataType TakeScreenshot = new DataType("TakeScreenshot", 7, (byte) 7);
        public static final DataType Touch = new DataType("Touch", 8, (byte) 8);
        public static final DataType Pen = new DataType("Pen", 9, (byte) 9);
        public static final DataType Unlock = new DataType("Unlock", 10, (byte) 10);
        public static final DataType Scale = new DataType("Scale", 11, (byte) 11);
        public static final DataType InputConfig = new DataType("InputConfig", 12, (byte) 12);
        public static final DataType InputKey = new DataType("InputKey", 13, (byte) 13);
        public static final DataType Error = new DataType("Error", 14, (byte) 14);
        public static final DataType Keyboard = new DataType("Keyboard", 15, (byte) 15);
        public static final DataType Command = new DataType("Command", 16, (byte) 16);

        private static final /* synthetic */ DataType[] $values() {
            return new DataType[]{State, Configure, Stop, Frame, FrameDone, PointerMove, PointerShape, TakeScreenshot, Touch, Pen, Unlock, Scale, InputConfig, InputKey, Error, Keyboard, Command};
        }

        public static EnumEntries<DataType> getEntries() {
            return $ENTRIES;
        }

        public static DataType valueOf(String str) {
            return (DataType) Enum.valueOf(DataType.class, str);
        }

        public static DataType[] values() {
            return (DataType[]) $VALUES.clone();
        }

        private DataType(String str, int i, byte b) {
            this.id = b;
        }

        public final byte getId() {
            return this.id;
        }

        static {
            DataType[] dataTypeArr$values = $values();
            $VALUES = dataTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(dataTypeArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorClient$State;", "", "(Ljava/lang/String;I)V", "Ready", "Active", "Closed", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State Ready = new State("Ready", 0);
        public static final State Active = new State("Active", 1);
        public static final State Closed = new State("Closed", 2);

        private static final /* synthetic */ State[] $values() {
            return new State[]{Ready, Active, Closed};
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

        private State(String str, int i) {
        }

        static {
            State[] stateArr$values = $values();
            $VALUES = stateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(stateArr$values);
        }
    }

    public final AppException getError() {
        return this.error;
    }

    public final void setError(AppException appException) {
        this.error = appException;
    }

    public final MutableLiveData<State> getState() {
        return this.state;
    }

    public final int getHostVersion() {
        return this.hostVersion;
    }

    public final int getClientVersion() {
        return this.clientVersion;
    }

    public final boolean isRemote() {
        return this.transport.isRemote();
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorClient$1, reason: invalid class name */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<AppException, Unit> {
        AnonymousClass1(Object obj) {
            super(1, obj, MirrorClient.class, "handleError", "handleError(Lcom/kelocube/mirrorclient/AppException;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
            invoke2(appException);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(AppException p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((MirrorClient) this.receiver).handleError(p0);
        }
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorClient$2, reason: invalid class name */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Transport.Data, Unit> {
        AnonymousClass2(Object obj) {
            super(1, obj, MirrorClient.class, "onData", "onData(Lcom/kelocube/mirrorclient/Transport$Data;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Transport.Data data) throws AppException {
            invoke2(data);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Transport.Data p0) throws AppException {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((MirrorClient) this.receiver).onData(p0);
        }
    }

    public final void close() {
        stopSession();
        this.transport.close();
        this.state.setValue(State.Closed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleError(final AppException e) {
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.MirrorClient$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MirrorClient.handleError$lambda$0(this.f$0, e);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleError$lambda$0(MirrorClient this$0, AppException e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "$e");
        this$0.error = e;
        this$0.close();
        this$0.callbacks.getOnError().invoke(this$0, e);
    }

    public final void startSession(Context context, ViewGroup layout) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(layout, "layout");
        if (this.session == null) {
            this.session = new MirrorSession(context, layout, new MirrorSession.Callbacks(new C00501(this), new Function0<Unit>() { // from class: com.kelocube.mirrorclient.MirrorClient.startSession.2
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
                    MirrorClient.this.getState().setValue(State.Active);
                }
            }, new AnonymousClass3(this)));
        }
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorClient$startSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class C00501 extends FunctionReferenceImpl implements Function3<DataType, Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit> {
        C00501(Object obj) {
            super(3, obj, MirrorClient.class, "sendData", "sendData(Lcom/kelocube/mirrorclient/MirrorClient$DataType;ILkotlin/jvm/functions/Function1;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(DataType dataType, Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) throws AppException {
            invoke(dataType, num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
            return Unit.INSTANCE;
        }

        public final void invoke(DataType p0, int i, Function1<? super ByteBuffer, Unit> p2) throws AppException {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p2, "p2");
            ((MirrorClient) this.receiver).sendData(p0, i, p2);
        }
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorClient$startSession$3, reason: invalid class name */
    /* JADX INFO: compiled from: MirrorClient.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<AppException, Unit> {
        AnonymousClass3(Object obj) {
            super(1, obj, MirrorClient.class, "handleError", "handleError(Lcom/kelocube/mirrorclient/AppException;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
            invoke2(appException);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(AppException p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((MirrorClient) this.receiver).handleError(p0);
        }
    }

    public final void stopSession() {
        if (this.session != null) {
            this.state.setValue(State.Ready);
            MirrorSession mirrorSession = this.session;
            if (mirrorSession != null) {
                mirrorSession.close();
            }
            this.session = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onData(Transport.Data data) throws AppException {
        byte b = data.getBuffer().get();
        if (b == DataType.Error.getId()) {
            byte b2 = data.getBuffer().get();
            if (b2 != MirrorClientKt.ERROR_DRIVER_ERROR) {
                if (b2 != MirrorClientKt.ERROR_LICENSE_ERROR) {
                    if (b2 != MirrorClientKt.ERROR_TRIAL_EXPIRED) {
                        if (b2 == MirrorClientKt.ERROR_WARN_BAD_RESOLUTION) {
                            MirrorSession mirrorSession = this.session;
                            if (mirrorSession != null) {
                                mirrorSession.showWarning(new AppException("ERROR_WARN_BAD_RESOLUTION", null, 9));
                                return;
                            }
                            return;
                        }
                        if (b2 != MirrorClientKt.ERROR_GPU_DRIVER_ERROR) {
                            if (b2 != MirrorClientKt.ERROR_NO_ENCODER) {
                                if (b2 != MirrorClientKt.ERROR_WARN_SOFTWARE_ENCODER) {
                                    throw new AppException("Unknown host error", null, 10);
                                }
                                MirrorSession mirrorSession2 = this.session;
                                if (mirrorSession2 != null) {
                                    mirrorSession2.showWarning(new AppException("ERROR_WARN_BAD_RESOLUTION", null, 14));
                                    return;
                                }
                                return;
                            }
                            throw new AppException("ERROR_NO_ENCODER", null, 13);
                        }
                        throw new AppException("ERROR_GPU_DRIVER_ERROR", null, 12);
                    }
                    throw new AppException("ERROR_TRIAL_EXPIRED", null, 7);
                }
                throw new AppException("ERROR_LICENSE_ERROR", null, 6);
            }
            throw new AppException("ERROR_DRIVER_ERROR", null, 5);
        }
        MirrorSession mirrorSession3 = this.session;
        if (mirrorSession3 != null) {
            mirrorSession3.onData(b, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendData(final DataType type, int maxLength, final Function1<? super ByteBuffer, Unit> callback) throws AppException {
        this.transport.send(maxLength + 1, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorClient.sendData.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                invoke2(byteBuffer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ByteBuffer to) {
                Intrinsics.checkNotNullParameter(to, "to");
                to.put(type.getId());
                callback.invoke(to);
            }
        });
    }

    public final void layout() {
        MirrorSession mirrorSession = this.session;
        if (mirrorSession != null) {
            mirrorSession.layout();
        }
    }

    public final void showOnboarding() {
        MirrorSession mirrorSession = this.session;
        if (mirrorSession != null) {
            mirrorSession.showOnboarding();
        }
    }

    public final void configChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        MirrorSession mirrorSession = this.session;
        if (mirrorSession != null) {
            mirrorSession.configChanged(newConfig);
        }
    }

    public final void handleKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        MirrorSession mirrorSession = this.session;
        if (mirrorSession != null) {
            mirrorSession.handleKeyEvent(event);
        }
    }
}
