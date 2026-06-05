package com.kelocube.mirrorclient;

import android.graphics.Rect;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.Queue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Marker;

/* JADX INFO: compiled from: Decoder.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0014J\u0018\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020\u0018H\u0016J\b\u0010\"\u001a\u00020\u0018H\u0002J \u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0016J\b\u0010(\u001a\u00020\u0018H\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082.¢\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/kelocube/mirrorclient/SyncDecoder;", "Lcom/kelocube/mirrorclient/Decoder;", "()V", "bufferCondition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "bufferLock", "Ljava/util/concurrent/locks/ReentrantLock;", "buffers", "Ljava/util/Queue;", "", "codec", "Landroid/media/MediaCodec;", "handler", "Landroid/os/Handler;", "inputBuffers", "", "Ljava/nio/ByteBuffer;", "[Ljava/nio/ByteBuffer;", "running", "", "thread", "Ljava/lang/Thread;", "doProcessInput", "", "data", "", "offset", "length", "flags", "onOutputFormatChanged", "format", "Landroid/media/MediaFormat;", "release", "runThread", "start", "surface", "Landroid/view/Surface;", "width", "height", "stop", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SyncDecoder extends Decoder {
    private final Condition bufferCondition;
    private final ReentrantLock bufferLock;
    private final Queue<Integer> buffers = new ArrayDeque();
    private MediaCodec codec;
    private final Handler handler;
    private ByteBuffer[] inputBuffers;
    private boolean running;
    private Thread thread;

    public SyncDecoder() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.bufferLock = reentrantLock;
        this.bufferCondition = reentrantLock.newCondition();
        this.handler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runThread() {
        try {
            final MediaCodec mediaCodec = this.codec;
            Intrinsics.checkNotNull(mediaCodec);
            while (!Thread.interrupted()) {
                while (true) {
                    int iDequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
                    if (iDequeueInputBuffer < 0) {
                        break;
                    }
                    ReentrantLock reentrantLock = this.bufferLock;
                    reentrantLock.lock();
                    try {
                        this.buffers.add(Integer.valueOf(iDequeueInputBuffer));
                        this.bufferCondition.signal();
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
                int iDequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(new MediaCodec.BufferInfo(), 1000L);
                if (iDequeueOutputBuffer >= 0) {
                    mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, System.nanoTime());
                    this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.SyncDecoder$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            SyncDecoder.runThread$lambda$1(this.f$0);
                        }
                    });
                } else if (iDequeueOutputBuffer != -3 && iDequeueOutputBuffer == -2) {
                    this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.SyncDecoder$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            SyncDecoder.runThread$lambda$2(this.f$0, mediaCodec);
                        }
                    });
                }
            }
        } catch (Throwable th2) {
            this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.SyncDecoder$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SyncDecoder.runThread$lambda$3(this.f$0, th2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runThread$lambda$1(SyncDecoder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getOnFrame().invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runThread$lambda$2(SyncDecoder this$0, MediaCodec codec) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(codec, "$codec");
        MediaFormat outputFormat = codec.getOutputFormat();
        Intrinsics.checkNotNullExpressionValue(outputFormat, "getOutputFormat(...)");
        this$0.onOutputFormatChanged(codec, outputFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runThread$lambda$3(SyncDecoder this$0, Throwable e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "$e");
        this$0.getOnError().invoke(new AppException("Codec error", e, 0, 4, null));
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void start(Surface surface, int width, int height) throws InterruptedException {
        Intrinsics.checkNotNullParameter(surface, "surface");
        stop();
        ReentrantLock reentrantLock = this.bufferLock;
        reentrantLock.lock();
        try {
            try {
                super.start(surface, width, height);
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", width, height);
                Intrinsics.checkNotNullExpressionValue(mediaFormatCreateVideoFormat, "createVideoFormat(...)");
                if (Build.VERSION.SDK_INT >= 23) {
                    mediaFormatCreateVideoFormat.setInteger("operating-rate", 1000);
                }
                mediaFormatCreateVideoFormat.setInteger("max-input-size", 0);
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                this.codec = mediaCodecCreateDecoderByType;
                Intrinsics.checkNotNull(mediaCodecCreateDecoderByType);
                mediaCodecCreateDecoderByType.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
                mediaCodecCreateDecoderByType.start();
                ByteBuffer[] inputBuffers = mediaCodecCreateDecoderByType.getInputBuffers();
                Intrinsics.checkNotNullExpressionValue(inputBuffers, "getInputBuffers(...)");
                this.inputBuffers = inputBuffers;
                this.running = true;
                Thread thread = new Thread(new Runnable() { // from class: com.kelocube.mirrorclient.SyncDecoder$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.runThread();
                    }
                }, UtilKt.getTAG(this));
                this.thread = thread;
                Intrinsics.checkNotNull(thread);
                thread.start();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw new AppException("Codec error", th, 0, 4, null);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void stop() throws InterruptedException {
        ReentrantLock reentrantLock = this.bufferLock;
        reentrantLock.lock();
        try {
            Log.i(UtilKt.getTAG(this), "Stopping decoding");
            this.running = false;
            Thread thread = this.thread;
            if (thread != null) {
                thread.interrupt();
                Unit unit = Unit.INSTANCE;
            }
            reentrantLock.unlock();
            Thread thread2 = this.thread;
            if (thread2 != null) {
                thread2.join();
            }
            this.thread = null;
            try {
                MediaCodec mediaCodec = this.codec;
                if (mediaCodec != null) {
                    mediaCodec.stop();
                }
            } catch (Throwable unused) {
            }
            try {
                MediaCodec mediaCodec2 = this.codec;
                if (mediaCodec2 != null) {
                    mediaCodec2.release();
                }
            } catch (Throwable unused2) {
            }
            this.codec = null;
            this.buffers.clear();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void release() throws InterruptedException {
        stop();
    }

    @Override // com.kelocube.mirrorclient.Decoder
    protected void doProcessInput(byte[] data, int offset, int length, int flags) {
        Intrinsics.checkNotNullParameter(data, "data");
        ReentrantLock reentrantLock = this.bufferLock;
        reentrantLock.lock();
        try {
            Integer numPoll = this.buffers.poll();
            if (numPoll == null) {
                Date date = new Date(System.currentTimeMillis() + ((long) 1000));
                while (numPoll == null) {
                    if (!this.bufferCondition.awaitUntil(date)) {
                        return;
                    } else {
                        numPoll = this.buffers.poll();
                    }
                }
            }
            ByteBuffer[] byteBufferArr = this.inputBuffers;
            if (byteBufferArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("inputBuffers");
                byteBufferArr = null;
            }
            ByteBuffer byteBuffer = byteBufferArr[numPoll.intValue()];
            byteBuffer.position(0);
            byteBuffer.put(data, offset, length);
            try {
                MediaCodec mediaCodec = this.codec;
                Intrinsics.checkNotNull(mediaCodec);
                mediaCodec.queueInputBuffer(numPoll.intValue(), 0, byteBuffer.position(), 0L, flags);
                Unit unit = Unit.INSTANCE;
            } catch (IllegalStateException unused) {
                throw new AppException("Decoder error", null, 0, 6, null);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    private final void onOutputFormatChanged(MediaCodec codec, MediaFormat format) {
        int integer = format.getInteger("width");
        int integer2 = format.getInteger("height");
        Rect rect = new Rect(format.getInteger("crop-left"), format.getInteger("crop-top"), format.getInteger("crop-right"), format.getInteger("crop-bottom"));
        Log.i(UtilKt.getTAG(this), "New video format: " + integer + Marker.ANY_MARKER + integer2 + ", crop: " + rect.toShortString());
        getOnNewFormat().invoke(Integer.valueOf(integer), Integer.valueOf(integer2), rect);
    }
}
