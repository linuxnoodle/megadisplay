package com.kelocube.mirrorclient;

import android.os.Handler;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.kelocube.mirrorclient.Transport;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Transport.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001:\u0001SB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010=\u001a\u00020\u001aJ\b\u0010>\u001a\u00020\u001aH\u0014J\b\u0010?\u001a\u00020\u001aH\u0002J\b\u0010@\u001a\u00020/H\u0016J\b\u0010A\u001a\u00020\u001aH\u0014J\u0018\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u0002012\u0006\u0010D\u001a\u00020\bH\u0002J\b\u0010E\u001a\u00020\u001aH\u0002J\b\u0010F\u001a\u00020\u001aH\u0002J\u0016\u0010G\u001a\u00020\u001a2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u001a0%H\u0002J5\u0010I\u001a\u00020\u001a2\u0006\u0010J\u001a\u00020\b2%\u0010K\u001a!\u0012\u0013\u0012\u001101¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(L\u0012\u0004\u0012\u00020\u001a0\u0015j\u0002`MJ\u0006\u0010N\u001a\u00020\u001aJ\u0014\u0010O\u001a\u00020\u001a2\n\b\u0002\u0010P\u001a\u0004\u0018\u00010 H\u0002J\b\u0010Q\u001a\u00020\u001aH\u0002J\b\u0010R\u001a\u00020\u001aH\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\n\"\u0004\b\u0011\u0010\fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R5\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u001a0\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR5\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110 ¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u001a0\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001c\"\u0004\b#\u0010\u001eR \u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u0010*\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00160,X\u0082.¢\u0006\u0004\n\u0002\u0010-R\u000e\u0010.\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082.¢\u0006\u0002\n\u0000R\u0016\u00102\u001a\n 4*\u0004\u0018\u00010303X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000201X\u0082.¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000207X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcom/kelocube/mirrorclient/Transport;", "", "stream", "Ljava/nio/channels/ScatteringByteChannel;", "sendStream", "Ljava/nio/channels/GatheringByteChannel;", "(Ljava/nio/channels/ScatteringByteChannel;Ljava/nio/channels/GatheringByteChannel;)V", "clientVersion", "", "getClientVersion", "()I", "setClientVersion", "(I)V", "handler", "Landroid/os/Handler;", "hostVersion", "getHostVersion", "setHostVersion", "initLock", "Ljava/util/concurrent/locks/ReentrantLock;", "onData", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/Transport$Data;", "Lkotlin/ParameterName;", "name", "data", "", "getOnData", "()Lkotlin/jvm/functions/Function1;", "setOnData", "(Lkotlin/jvm/functions/Function1;)V", "onError", "Lcom/kelocube/mirrorclient/AppException;", "e", "getOnError", "setOnError", "onReady", "Lkotlin/Function0;", "getOnReady", "()Lkotlin/jvm/functions/Function0;", "setOnReady", "(Lkotlin/jvm/functions/Function0;)V", "readData", "readStreams", "", "[Lcom/kelocube/mirrorclient/Transport$Data;", "running", "", "sendBuffer", "Ljava/nio/ByteBuffer;", "sendCondition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "sendLock", "sendThread", "Ljava/lang/Thread;", "sendingBuffer", "started", "thread", "timeoutTicks", "Ljava/util/concurrent/atomic/AtomicInteger;", "close", "doClose", "initStream", "isRemote", "readFinished", "readFromSocket", "buffer", "bytes", "runRead", "runSend", "runThreadLoop", "loop", "send", "length", "callback", "to", "Lcom/kelocube/mirrorclient/DataCallback;", "start", "stop", MirrorActivity.RESULT_EXTRA_ERROR, "tickTimeout", "writeFinished", "Data", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class Transport {
    private volatile int clientVersion;
    private final Handler handler;
    private volatile int hostVersion;
    private final ReentrantLock initLock;
    private volatile Function1<? super Data, Unit> onData;
    private Function1<? super AppException, Unit> onError;
    private Function0<Unit> onReady;
    private Data readData;
    private Data[] readStreams;
    private volatile boolean running;
    private ByteBuffer sendBuffer;
    private final Condition sendCondition;
    private final ReentrantLock sendLock;
    private final GatheringByteChannel sendStream;
    private final Thread sendThread;
    private ByteBuffer sendingBuffer;
    private volatile boolean started;
    private final ScatteringByteChannel stream;
    private final Thread thread;
    private final AtomicInteger timeoutTicks;

    protected void doClose() {
    }

    public boolean isRemote() {
        return false;
    }

    protected void readFinished() {
    }

    protected void writeFinished() {
    }

    public Transport(ScatteringByteChannel stream, GatheringByteChannel sendStream) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        Intrinsics.checkNotNullParameter(sendStream, "sendStream");
        this.stream = stream;
        this.sendStream = sendStream;
        this.onData = new Function1<Data, Unit>() { // from class: com.kelocube.mirrorclient.Transport$onData$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Transport.Data it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Transport.Data data) {
                invoke2(data);
                return Unit.INSTANCE;
            }
        };
        this.onReady = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.Transport$onReady$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.onError = new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.Transport$onError$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AppException it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
                invoke2(appException);
                return Unit.INSTANCE;
            }
        };
        this.handler = new Handler();
        this.thread = new Thread(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runRead();
            }
        }, UtilKt.getTAG(this) + " (read)");
        this.timeoutTicks = new AtomicInteger(10);
        this.sendThread = new Thread(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runSend();
            }
        }, UtilKt.getTAG(this) + " (send)");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.sendLock = reentrantLock;
        this.sendCondition = reentrantLock.newCondition();
        this.initLock = new ReentrantLock();
    }

    /* JADX INFO: compiled from: Transport.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/kelocube/mirrorclient/Transport$Data;", "", "buffer", "Ljava/nio/ByteBuffer;", "length", "", "(Ljava/nio/ByteBuffer;I)V", "getBuffer", "()Ljava/nio/ByteBuffer;", "getLength", "()I", "setLength", "(I)V", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Data {
        private final ByteBuffer buffer;
        private int length;

        public Data(ByteBuffer buffer, int i) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            this.buffer = buffer;
            this.length = i;
        }

        public final ByteBuffer getBuffer() {
            return this.buffer;
        }

        public final int getLength() {
            return this.length;
        }

        public final void setLength(int i) {
            this.length = i;
        }
    }

    public final Function1<Data, Unit> getOnData() {
        return this.onData;
    }

    public final void setOnData(Function1<? super Data, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onData = function1;
    }

    public final Function0<Unit> getOnReady() {
        return this.onReady;
    }

    public final void setOnReady(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onReady = function0;
    }

    public final Function1<AppException, Unit> getOnError() {
        return this.onError;
    }

    public final void setOnError(Function1<? super AppException, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onError = function1;
    }

    public final int getClientVersion() {
        return this.clientVersion;
    }

    public final void setClientVersion(int i) {
        this.clientVersion = i;
    }

    public final int getHostVersion() {
        return this.hostVersion;
    }

    public final void setHostVersion(int i) {
        this.hostVersion = i;
    }

    public final void start() {
        try {
            if (!this.running) {
                try {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16384);
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate, "allocate(...)");
                    this.readData = new Data(byteBufferAllocate, 0);
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(100000);
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate2, "allocate(...)");
                    ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(10000000);
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate3, "allocate(...)");
                    this.readStreams = new Data[]{new Data(byteBufferAllocate2, 0), new Data(byteBufferAllocate3, 0)};
                    ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(10000);
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate4, "allocate(...)");
                    this.sendBuffer = byteBufferAllocate4;
                    ByteBuffer byteBufferAllocate5 = ByteBuffer.allocate(10000);
                    Intrinsics.checkNotNullExpressionValue(byteBufferAllocate5, "allocate(...)");
                    this.sendingBuffer = byteBufferAllocate5;
                    this.running = true;
                    this.thread.start();
                    this.sendThread.start();
                    tickTimeout();
                    return;
                } catch (OutOfMemoryError e) {
                    throw new AppException("Failed to allocate network buffers", e, 11);
                }
            }
            throw new IllegalStateException("Check failed.".toString());
        } catch (AppException e2) {
            this.onError.invoke(e2);
        }
    }

    static /* synthetic */ void stop$default(Transport transport, AppException appException, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stop");
        }
        if ((i & 1) != 0) {
            appException = null;
        }
        transport.stop(appException);
    }

    private final void stop(final AppException error) {
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Transport.stop$lambda$0(this.f$0, error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stop$lambda$0(Transport this$0, AppException appException) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.running) {
            if (appException != null) {
                appException.printStackTrace();
            }
            Log.i(UtilKt.getTAG(this$0), "Disconnecting");
            this$0.running = false;
            DiagnosticsKt.traceMessage(UtilKt.getTAG(this$0), String.valueOf(appException));
            Function1<? super AppException, Unit> function1 = this$0.onError;
            if (appException == null) {
                appException = new AppException("No error", null, 1);
            }
            function1.invoke(appException);
            this$0.thread.interrupt();
            this$0.sendThread.interrupt();
            this$0.doClose();
            Log.i(UtilKt.getTAG(this$0), "Disconnected");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tickTimeout() throws AppException {
        if (this.running) {
            if (this.timeoutTicks.decrementAndGet() <= 0) {
                stop(new AppException("Read timed out", null, 1));
                return;
            }
            if (this.started) {
                send(0, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Transport.tickTimeout.1
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(ByteBuffer it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                        invoke2(byteBuffer);
                        return Unit.INSTANCE;
                    }
                });
            }
            this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() throws AppException {
                    this.f$0.tickTimeout();
                }
            }, 1000L);
        }
    }

    public final void close() {
        Log.i(UtilKt.getTAG(this), "close");
        this.onData = new Function1<Data, Unit>() { // from class: com.kelocube.mirrorclient.Transport.close.1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Data it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Data data) {
                invoke2(data);
                return Unit.INSTANCE;
            }
        };
        this.onError = new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.Transport.close.2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AppException it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
                invoke2(appException);
                return Unit.INSTANCE;
            }
        };
        stop$default(this, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void readFromSocket(ByteBuffer buffer, int bytes) throws SocketException, InterruptedException, AppException {
        if (buffer.position() + bytes > buffer.array().length || bytes <= 0) {
            throw new AppException("Packet too large (" + buffer.position() + " + " + bytes + " > " + buffer.array().length + ")", null, 0, 6, null);
        }
        while (bytes > 0) {
            Data data = this.readData;
            Data data2 = null;
            if (data == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data = null;
            }
            int iPosition = data.getBuffer().position();
            Data data3 = this.readData;
            if (data3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data3 = null;
            }
            if (iPosition == data3.getLength()) {
                this.timeoutTicks.set(10);
                Data data4 = this.readData;
                if (data4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readData");
                    data4 = null;
                }
                data4.getBuffer().position(0);
                Data data5 = this.readData;
                if (data5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readData");
                    data5 = null;
                }
                ScatteringByteChannel scatteringByteChannel = this.stream;
                Data data6 = this.readData;
                if (data6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readData");
                    data6 = null;
                }
                data5.setLength(scatteringByteChannel.read(data6.getBuffer()));
                Data data7 = this.readData;
                if (data7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readData");
                    data7 = null;
                }
                data7.getBuffer().position(0);
                if (!this.running) {
                    throw new InterruptedException();
                }
                Data data8 = this.readData;
                if (data8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readData");
                    data8 = null;
                }
                if (data8.getLength() == -1) {
                    throw new SocketException("EOF");
                }
            }
            Data data9 = this.readData;
            if (data9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data9 = null;
            }
            int length = data9.getLength();
            Data data10 = this.readData;
            if (data10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data10 = null;
            }
            int iMin = Math.min(bytes, length - data10.getBuffer().position());
            Data data11 = this.readData;
            if (data11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data11 = null;
            }
            byte[] bArrArray = data11.getBuffer().array();
            Data data12 = this.readData;
            if (data12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data12 = null;
            }
            buffer.put(bArrArray, data12.getBuffer().position(), iMin);
            Data data13 = this.readData;
            if (data13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
                data13 = null;
            }
            ByteBuffer buffer2 = data13.getBuffer();
            Data data14 = this.readData;
            if (data14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readData");
            } else {
                data2 = data14;
            }
            buffer2.position(data2.getBuffer().position() + iMin);
            bytes -= iMin;
        }
        if (bytes == 0) {
            return;
        }
        throw new AppException("toRead = " + bytes, null, 0, 6, null);
    }

    private final void initStream() {
        ReentrantLock reentrantLock = this.initLock;
        reentrantLock.lock();
        try {
            if (!this.running) {
                throw new InterruptedException();
            }
            if (this.started) {
                return;
            }
            Data[] dataArr = this.readStreams;
            ByteBuffer byteBuffer = null;
            if (dataArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("readStreams");
                dataArr = null;
            }
            ByteBuffer buffer = dataArr[0].getBuffer();
            Transport transport = this;
            String str = TransportKt.HANDSHAKE_BASE;
            readFromSocket(buffer, 4);
            if (!Intrinsics.areEqual(StandardCharsets.US_ASCII.decode(ByteBuffer.wrap(buffer.array(), 0, 4)).toString(), "MIRR")) {
                readFromSocket(buffer, (str.length() + TransportKt.HANDSHAKE_VERSION_LENGTH) - 4);
                if (Intrinsics.areEqual(StandardCharsets.US_ASCII.decode(ByteBuffer.wrap(buffer.array(), 0, str.length())).toString(), str)) {
                    String string = StandardCharsets.US_ASCII.decode(ByteBuffer.wrap(buffer.array(), str.length(), TransportKt.HANDSHAKE_VERSION_LENGTH)).toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    Integer intOrNull = StringsKt.toIntOrNull(string);
                    int iIntValue = ((Number) ArraysKt.first(TransportKt.SUPPORTED_HOST_VERSIONS)).intValue();
                    if (intOrNull == null) {
                        throw new AppException("Wrong protocol", null, 1);
                    }
                    if (iIntValue < intOrNull.intValue()) {
                        throw new AppException("Old client version", null, 3);
                    }
                    if (iIntValue > intOrNull.intValue() && !ArraysKt.contains(TransportKt.SUPPORTED_HOST_VERSIONS, intOrNull)) {
                        throw new AppException("Old host version", null, 2);
                    }
                    this.hostVersion = intOrNull.intValue();
                    this.clientVersion = iIntValue;
                    String strPadStart = StringsKt.padStart(intOrNull.toString(), TransportKt.HANDSHAKE_VERSION_LENGTH, '0');
                    readFromSocket(buffer, 1);
                    if (buffer.array()[str.length() + TransportKt.HANDSHAKE_VERSION_LENGTH] != 0) {
                        throw new AppException("Wrong protocol", null, 1);
                    }
                    buffer.position(0);
                    Log.d(UtilKt.getTAG(this), "Read handshake");
                    Data[] dataArr2 = this.readStreams;
                    if (dataArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("readStreams");
                        dataArr2 = null;
                    }
                    for (Data data : dataArr2) {
                        data.getBuffer().order(ByteOrder.LITTLE_ENDIAN);
                    }
                    ByteBuffer byteBuffer2 = this.sendBuffer;
                    if (byteBuffer2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                        byteBuffer2 = null;
                    }
                    byteBuffer2.order(buffer.order());
                    ByteBuffer byteBuffer3 = this.sendingBuffer;
                    if (byteBuffer3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                        byteBuffer3 = null;
                    }
                    byteBuffer3.order(buffer.order());
                    reentrantLock = this.sendLock;
                    reentrantLock.lock();
                    ByteBuffer byteBuffer4 = this.sendBuffer;
                    if (byteBuffer4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                    } else {
                        byteBuffer = byteBuffer4;
                    }
                    String str2 = TransportKt.HANDSHAKE_BASE + ((Object) strPadStart) + "\u0000";
                    Charset US_ASCII = StandardCharsets.US_ASCII;
                    Intrinsics.checkNotNullExpressionValue(US_ASCII, "US_ASCII");
                    byte[] bytes = str2.getBytes(US_ASCII);
                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                    byteBuffer.put(bytes);
                    this.sendCondition.signal();
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    this.started = true;
                    Log.d(UtilKt.getTAG(this), "Stream started");
                    reentrantLock.unlock();
                    this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Transport.initStream$lambda$5(this.f$0);
                        }
                    });
                    return;
                }
                throw new AppException("Wrong protocol", null, 1);
            }
            throw new AppException("Old host version", null, 2);
        } catch (Throwable th) {
            throw th;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initStream$lambda$5(Transport this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onReady.invoke();
    }

    public final void send(int length, Function1<? super ByteBuffer, Unit> callback) throws AppException {
        Intrinsics.checkNotNullParameter(callback, "callback");
        int i = length + 4;
        if (i > 10000) {
            throw new AppException("Outgoing packet too large (" + i + " > 10000)", null, 0, 6, null);
        }
        ReentrantLock reentrantLock = this.sendLock;
        reentrantLock.lock();
        try {
            ByteBuffer byteBuffer = this.sendBuffer;
            ByteBuffer byteBuffer2 = null;
            if (byteBuffer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                byteBuffer = null;
            }
            int length2 = byteBuffer.array().length;
            ByteBuffer byteBuffer3 = this.sendBuffer;
            if (byteBuffer3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                byteBuffer3 = null;
            }
            if (i > length2 - byteBuffer3.position()) {
                throw new AppException("Network send buffer overflow", null, 0, 6, null);
            }
            ByteBuffer byteBuffer4 = this.sendBuffer;
            if (byteBuffer4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                byteBuffer4 = null;
            }
            byteBuffer4.putInt(length);
            ByteBuffer byteBuffer5 = this.sendBuffer;
            if (byteBuffer5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                byteBuffer5 = null;
            }
            int iPosition = byteBuffer5.position();
            ByteBuffer byteBuffer6 = this.sendBuffer;
            if (byteBuffer6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                byteBuffer6 = null;
            }
            callback.invoke(byteBuffer6);
            ByteBuffer byteBuffer7 = this.sendBuffer;
            if (byteBuffer7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
            } else {
                byteBuffer2 = byteBuffer7;
            }
            int iPosition2 = byteBuffer2.position() - iPosition;
            if (iPosition2 != length) {
                throw new AppException("Wrote wrong packet length (" + iPosition2 + " != " + length + ")", null, 0, 6, null);
            }
            this.sendCondition.signal();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    private final void runThreadLoop(Function0<Unit> loop) {
        AppException appException;
        Log.d(UtilKt.getTAG(this), "Entering " + Thread.currentThread().getName());
        try {
            try {
                try {
                    try {
                        initStream();
                        while (this.running) {
                            loop.invoke();
                        }
                    } catch (Throwable th) {
                        appException = new AppException("Network error", th, 1);
                        stop(appException);
                        Log.d(UtilKt.getTAG(this), "Exiting " + Thread.currentThread().getName());
                    }
                } catch (SocketTimeoutException e) {
                    appException = new AppException("Socket timed out", e, 1);
                    stop(appException);
                    Log.d(UtilKt.getTAG(this), "Exiting " + Thread.currentThread().getName());
                } catch (IOException e2) {
                    appException = new AppException("Disconnected", e2, 1);
                    stop(appException);
                    Log.d(UtilKt.getTAG(this), "Exiting " + Thread.currentThread().getName());
                }
            } catch (AppException e3) {
                stop(e3);
            } catch (InterruptedException unused) {
                Log.d(UtilKt.getTAG(this), "Thread interrupted");
            }
            stop(null);
            Log.d(UtilKt.getTAG(this), "Exiting " + Thread.currentThread().getName());
        } catch (Throwable th2) {
            stop(null);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runRead() {
        runThreadLoop(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.Transport.runRead.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() throws SocketException, InterruptedException, AppException {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() throws SocketException, InterruptedException, AppException {
                Data[] dataArr = Transport.this.readStreams;
                Data[] dataArr2 = null;
                if (dataArr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readStreams");
                    dataArr = null;
                }
                ByteBuffer buffer = dataArr[0].getBuffer();
                int iPosition = buffer.position();
                Transport.this.readFromSocket(buffer, 3);
                buffer.position(iPosition);
                byte b = buffer.get();
                int i = buffer.getShort();
                buffer.position(iPosition);
                Data[] dataArr3 = Transport.this.readStreams;
                if (dataArr3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("readStreams");
                } else {
                    dataArr2 = dataArr3;
                }
                Data data = dataArr2[b];
                while (i > 0) {
                    int iMin = Math.min(i, (data.getLength() == 0 ? 4 : data.getLength()) - data.getBuffer().position());
                    if (iMin > 0) {
                        Transport.this.readFromSocket(data.getBuffer(), iMin);
                        i -= iMin;
                        if (data.getLength() == 0) {
                            if (data.getBuffer().position() > 4) {
                                throw new IllegalStateException("Check failed.".toString());
                            }
                            if (data.getBuffer().position() == 4) {
                                data.getBuffer().position(0);
                                data.setLength(data.getBuffer().getInt());
                                data.getLength();
                                data.getBuffer().position(0);
                            }
                        } else if (data.getLength() == data.getBuffer().position()) {
                            data.getBuffer().position(0);
                            Transport.this.getOnData().invoke(data);
                            data.setLength(0);
                            data.getBuffer().position(0);
                        }
                    } else {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                }
            }
        });
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Transport.runRead$lambda$7(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runRead$lambda$7(Transport this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.readFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runSend() {
        runThreadLoop(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.Transport.runSend.1
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
                ByteBuffer byteBuffer;
                ReentrantLock reentrantLock = Transport.this.sendLock;
                Transport transport = Transport.this;
                reentrantLock.lock();
                while (true) {
                    try {
                        ByteBuffer byteBuffer2 = transport.sendBuffer;
                        byteBuffer = null;
                        if (byteBuffer2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                            byteBuffer2 = null;
                        }
                        if (byteBuffer2.position() != 0) {
                            break;
                        } else {
                            transport.sendCondition.await();
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                ByteBuffer byteBuffer3 = transport.sendingBuffer;
                if (byteBuffer3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                    byteBuffer3 = null;
                }
                ByteBuffer byteBuffer4 = transport.sendBuffer;
                if (byteBuffer4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                    byteBuffer4 = null;
                }
                transport.sendingBuffer = byteBuffer4;
                transport.sendBuffer = byteBuffer3;
                ByteBuffer byteBuffer5 = transport.sendBuffer;
                if (byteBuffer5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendBuffer");
                    byteBuffer5 = null;
                }
                byteBuffer5.position(0);
                reentrantLock.unlock();
                GatheringByteChannel gatheringByteChannel = Transport.this.sendStream;
                ByteBuffer byteBuffer6 = Transport.this.sendingBuffer;
                if (byteBuffer6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                    byteBuffer6 = null;
                }
                byte[] bArrArray = byteBuffer6.array();
                ByteBuffer byteBuffer7 = Transport.this.sendingBuffer;
                if (byteBuffer7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                    byteBuffer7 = null;
                }
                int iArrayOffset = byteBuffer7.arrayOffset();
                ByteBuffer byteBuffer8 = Transport.this.sendingBuffer;
                if (byteBuffer8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                    byteBuffer8 = null;
                }
                int iPosition = byteBuffer8.position();
                ByteBuffer byteBuffer9 = Transport.this.sendingBuffer;
                if (byteBuffer9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendingBuffer");
                } else {
                    byteBuffer = byteBuffer9;
                }
                gatheringByteChannel.write(ByteBuffer.wrap(bArrArray, iArrayOffset, iPosition - byteBuffer.arrayOffset()));
            }
        });
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.Transport$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Transport.runSend$lambda$8(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runSend$lambda$8(Transport this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.writeFinished();
    }
}
