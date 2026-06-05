package com.kelocube.mirrorclient;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.kelocube.mirrorclient.HostPoller;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HostPoller.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010!\u001a\u00020\rH\u0002J\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000RJ\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\f\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/kelocube/mirrorclient/HostPoller;", "", "()V", "handler", "Landroid/os/Handler;", "onResult", "Lkotlin/Function2;", "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;", "Lkotlin/ParameterName;", "name", "request", "", "online", "", "getOnResult", "()Lkotlin/jvm/functions/Function2;", "setOnResult", "(Lkotlin/jvm/functions/Function2;)V", "getOnline", "()Z", "setOnline", "(Z)V", "getRequest", "()Lcom/kelocube/mirrorclient/HostPoller$PollRequest;", "setRequest", "(Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V", "running", "socket", "Ljava/net/Socket;", "socketLock", "Ljava/util/concurrent/locks/ReentrantLock;", "thread", "Ljava/lang/Thread;", "runPoll", "start", "stop", "PollRequest", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class HostPoller {
    private boolean online;
    private volatile PollRequest request;
    private boolean running;
    private Socket socket;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private Thread thread = new Thread();
    private final ReentrantLock socketLock = new ReentrantLock();
    private Function2<? super PollRequest, ? super Boolean, Unit> onResult = new Function2<PollRequest, Boolean, Unit>() { // from class: com.kelocube.mirrorclient.HostPoller$onResult$1
        public final void invoke(HostPoller.PollRequest pollRequest, boolean z) {
            Intrinsics.checkNotNullParameter(pollRequest, "<anonymous parameter 0>");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(HostPoller.PollRequest pollRequest, Boolean bool) {
            invoke(pollRequest, bool.booleanValue());
            return Unit.INSTANCE;
        }
    };

    /* JADX INFO: compiled from: HostPoller.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/kelocube/mirrorclient/HostPoller$PollRequest;", "", "address", "Ljava/net/InetSocketAddress;", "userData", "(Ljava/net/InetSocketAddress;Ljava/lang/Object;)V", "getAddress", "()Ljava/net/InetSocketAddress;", "getUserData", "()Ljava/lang/Object;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class PollRequest {
        private final InetSocketAddress address;
        private final Object userData;

        public PollRequest(InetSocketAddress address, Object obj) {
            Intrinsics.checkNotNullParameter(address, "address");
            this.address = address;
            this.userData = obj;
        }

        public final InetSocketAddress getAddress() {
            return this.address;
        }

        public final Object getUserData() {
            return this.userData;
        }
    }

    public final boolean getOnline() {
        return this.online;
    }

    public final void setOnline(boolean z) {
        this.online = z;
    }

    public final Function2<PollRequest, Boolean, Unit> getOnResult() {
        return this.onResult;
    }

    public final void setOnResult(Function2<? super PollRequest, ? super Boolean, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onResult = function2;
    }

    public final PollRequest getRequest() {
        return this.request;
    }

    public final void setRequest(PollRequest pollRequest) {
        this.request = pollRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runPoll() {
        while (true) {
            try {
                int i = HostPollerKt.POLL_DELAY_FAIL;
                final PollRequest pollRequest = this.request;
                if (pollRequest != null) {
                    try {
                        try {
                            InetSocketAddress inetSocketAddress = new InetSocketAddress(pollRequest.getAddress().getHostName(), pollRequest.getAddress().getPort());
                            ReentrantLock reentrantLock = this.socketLock;
                            reentrantLock.lock();
                            try {
                                this.socket = new Socket();
                                Unit unit = Unit.INSTANCE;
                                reentrantLock.unlock();
                                Socket socket = this.socket;
                                Intrinsics.checkNotNull(socket);
                                socket.connect(inetSocketAddress, HostPollerKt.POLL_TIMEOUT);
                                if (Thread.interrupted()) {
                                    throw new InterruptedException();
                                }
                                Log.d(UtilKt.getTAG(this), "Host " + inetSocketAddress + " is online");
                                this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.HostPoller$$ExternalSyntheticLambda1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        HostPoller.runPoll$lambda$4$lambda$1(this.f$0, pollRequest);
                                    }
                                });
                                Socket socket2 = this.socket;
                                Intrinsics.checkNotNull(socket2);
                                socket2.close();
                                i = HostPollerKt.POLL_DELAY_SUCCESS;
                                Unit unit2 = Unit.INSTANCE;
                            } catch (Throwable th) {
                                reentrantLock.unlock();
                                throw th;
                            }
                        } catch (IOException unused) {
                            if (Thread.interrupted()) {
                                throw new InterruptedException();
                            }
                            Log.d(UtilKt.getTAG(this), "Host " + pollRequest.getAddress() + " is offline (no connection)");
                            Boolean.valueOf(this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.HostPoller$$ExternalSyntheticLambda2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    HostPoller.runPoll$lambda$4$lambda$2(this.f$0, pollRequest);
                                }
                            }));
                        }
                    } catch (UnknownHostException unused2) {
                        if (Thread.interrupted()) {
                            throw new InterruptedException();
                        }
                        Log.d(UtilKt.getTAG(this), "Host " + pollRequest.getAddress() + " is offline (unknown host)");
                        Boolean.valueOf(this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.HostPoller$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                HostPoller.runPoll$lambda$4$lambda$3(this.f$0, pollRequest);
                            }
                        }));
                    }
                }
                Thread.sleep(i);
            } catch (InterruptedException unused3) {
                Log.d(UtilKt.getTAG(this), "Host poller thread interrupted");
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runPoll$lambda$4$lambda$1(HostPoller this$0, PollRequest it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.online = true;
        this$0.onResult.invoke(it, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runPoll$lambda$4$lambda$2(HostPoller this$0, PollRequest it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.online = false;
        this$0.onResult.invoke(it, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runPoll$lambda$4$lambda$3(HostPoller this$0, PollRequest it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        this$0.online = false;
        this$0.onResult.invoke(it, false);
    }

    public final void start() {
        if (this.running) {
            return;
        }
        Thread thread = new Thread(new Runnable() { // from class: com.kelocube.mirrorclient.HostPoller$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runPoll();
            }
        });
        this.thread = thread;
        thread.start();
        this.running = true;
    }

    public final void stop() throws InterruptedException {
        if (this.running) {
            this.thread.interrupt();
            ReentrantLock reentrantLock = this.socketLock;
            reentrantLock.lock();
            try {
                Socket socket = this.socket;
                if (socket != null) {
                    socket.close();
                    Unit unit = Unit.INSTANCE;
                }
                reentrantLock.unlock();
                this.thread.join();
                this.running = false;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }
}
