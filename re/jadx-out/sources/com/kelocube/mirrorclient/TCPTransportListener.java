package com.kelocube.mirrorclient;

import android.os.ConditionVariable;
import android.os.Handler;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TCPTransportListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u0004\u0018\u00010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001f"}, d2 = {"Lcom/kelocube/mirrorclient/TCPTransportListener;", "", "callbacks", "Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;", "(Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;)V", "activeCond", "Landroid/os/ConditionVariable;", MirrorActivity.RESULT_EXTRA_ERROR, "Lcom/kelocube/mirrorclient/AppException;", "getError", "()Lcom/kelocube/mirrorclient/AppException;", "setError", "(Lcom/kelocube/mirrorclient/AppException;)V", "handler", "Landroid/os/Handler;", "thread", "Ljava/lang/Thread;", NotificationCompat.CATEGORY_TRANSPORT, "Lcom/kelocube/mirrorclient/Transport;", "getTransport", "()Lcom/kelocube/mirrorclient/Transport;", "setTransport", "(Lcom/kelocube/mirrorclient/Transport;)V", "close", "", "runThread", "setEnabled", "enabled", "", "takeTransport", "Callbacks", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TCPTransportListener {
    private final ConditionVariable activeCond;
    private final Callbacks callbacks;
    private AppException error;
    private final Handler handler;
    private final Thread thread;
    private Transport transport;

    /* JADX INFO: compiled from: TCPTransportListener.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;", "", "onUpdate", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)V", "getOnUpdate", "()Lkotlin/jvm/functions/Function0;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
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

    public TCPTransportListener(Callbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.callbacks = callbacks;
        Thread thread = new Thread(new Runnable() { // from class: com.kelocube.mirrorclient.TCPTransportListener$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runThread();
            }
        });
        this.thread = thread;
        this.handler = new Handler();
        this.activeCond = new ConditionVariable(false);
        thread.start();
    }

    public final Transport getTransport() {
        return this.transport;
    }

    public final void setTransport(Transport transport) {
        this.transport = transport;
    }

    public final AppException getError() {
        return this.error;
    }

    public final void setError(AppException appException) {
        this.error = appException;
    }

    public final void close() {
        this.thread.interrupt();
        this.thread.join();
    }

    public final Transport takeTransport() {
        Transport transport = this.transport;
        this.transport = null;
        return transport;
    }

    public final void setEnabled(boolean enabled) {
        if (enabled) {
            this.activeCond.open();
        } else {
            this.activeCond.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runThread() {
        while (!Thread.interrupted()) {
            try {
                ServerSocketChannel serverSocketChannelOpen = ServerSocketChannel.open();
                serverSocketChannelOpen.socket().bind(new InetSocketAddress(PrefsKt.APP_DEFAULT_PORT));
                serverSocketChannelOpen.socket().setSoTimeout(500);
                while (!Thread.interrupted()) {
                    this.activeCond.block();
                    try {
                        final SocketChannel socketChannelAccept = serverSocketChannelOpen.accept();
                        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.TCPTransportListener$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                TCPTransportListener.runThread$lambda$1(socketChannelAccept, this);
                            }
                        });
                    } catch (SocketTimeoutException unused) {
                    }
                }
            } catch (IOException e) {
                DiagnosticsKt.traceMessage(UtilKt.getTAG(this), e.toString());
                Log.w(UtilKt.getTAG(this), e.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runThread$lambda$1(SocketChannel socketChannel, final TCPTransportListener this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(socketChannel);
        final TCPTransport tCPTransport = new TCPTransport(socketChannel);
        Log.i(UtilKt.getTAG(this$0), "Accepted TCP client from " + socketChannel.socket().getRemoteSocketAddress());
        tCPTransport.setOnReady(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.TCPTransportListener$runThread$1$1
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
                    this.this$0.setError(null);
                    this.this$0.setTransport(tCPTransport);
                    this.this$0.callbacks.getOnUpdate().invoke();
                } else {
                    tCPTransport.close();
                    if (Intrinsics.areEqual(this.this$0.getTransport(), tCPTransport)) {
                        this.this$0.setTransport(null);
                    }
                    this.this$0.callbacks.getOnUpdate().invoke();
                }
            }
        });
        tCPTransport.setOnError(new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.TCPTransportListener$runThread$1$2
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
                if (Intrinsics.areEqual(this.this$0.getTransport(), tCPTransport) || this.this$0.getTransport() == null) {
                    if (it.getType() != 1) {
                        this.this$0.setError(it);
                    }
                    tCPTransport.close();
                    if (Intrinsics.areEqual(this.this$0.getTransport(), tCPTransport)) {
                        this.this$0.setTransport(null);
                    }
                    this.this$0.callbacks.getOnUpdate().invoke();
                }
            }
        });
        tCPTransport.start();
    }
}
