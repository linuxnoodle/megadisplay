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
import java.io.IOException;
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
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\fH\u0014J\b\u0010\u001d\u001a\u00020\u0017H\u0016J \u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\fH\u0016J\b\u0010#\u001a\u00020\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/kelocube/mirrorclient/AsyncDecoder;", "Lcom/kelocube/mirrorclient/Decoder;", "()V", "acceptBuffers", "", "bufferCondition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "bufferLock", "Ljava/util/concurrent/locks/ReentrantLock;", "buffers", "Ljava/util/Queue;", "", "callback", "Landroid/media/MediaCodec$Callback;", "getCallback", "()Landroid/media/MediaCodec$Callback;", "codec", "Landroid/media/MediaCodec;", "handler", "Landroid/os/Handler;", "running", "doProcessInput", "", "data", "", "offset", "length", "flags", "release", "start", "surface", "Landroid/view/Surface;", "width", "height", "stop", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AsyncDecoder extends Decoder {
    private boolean acceptBuffers;
    private final Condition bufferCondition;
    private final ReentrantLock bufferLock;
    private final Queue<Integer> buffers = new ArrayDeque();
    private final MediaCodec.Callback callback;
    private final MediaCodec codec;
    private final Handler handler;
    private boolean running;

    public AsyncDecoder() throws IOException {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.bufferLock = reentrantLock;
        this.bufferCondition = reentrantLock.newCondition();
        this.handler = new Handler(Looper.getMainLooper());
        MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
        Intrinsics.checkNotNullExpressionValue(mediaCodecCreateDecoderByType, "createDecoderByType(...)");
        this.codec = mediaCodecCreateDecoderByType;
        this.callback = new MediaCodec.Callback() { // from class: com.kelocube.mirrorclient.AsyncDecoder$callback$1
            @Override // android.media.MediaCodec.Callback
            public void onInputBufferAvailable(MediaCodec codec, int id) {
                Intrinsics.checkNotNullParameter(codec, "codec");
                if (this.this$0.acceptBuffers) {
                    ReentrantLock reentrantLock2 = this.this$0.bufferLock;
                    AsyncDecoder asyncDecoder = this.this$0;
                    reentrantLock2.lock();
                    try {
                        asyncDecoder.buffers.add(Integer.valueOf(id));
                        asyncDecoder.bufferCondition.signal();
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock2.unlock();
                    }
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputBufferAvailable(MediaCodec codec, int id, MediaCodec.BufferInfo info) {
                Intrinsics.checkNotNullParameter(codec, "codec");
                Intrinsics.checkNotNullParameter(info, "info");
                if (this.this$0.acceptBuffers) {
                    codec.releaseOutputBuffer(id, System.nanoTime());
                    this.this$0.getOnFrame().invoke();
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputFormatChanged(MediaCodec codec, MediaFormat format) {
                Intrinsics.checkNotNullParameter(codec, "codec");
                Intrinsics.checkNotNullParameter(format, "format");
                int integer = format.getInteger("width");
                int integer2 = format.getInteger("height");
                Rect rect = new Rect(format.getInteger("crop-left"), format.getInteger("crop-top"), format.getInteger("crop-right"), format.getInteger("crop-bottom"));
                Log.i(UtilKt.getTAG(this), "New video format: " + integer + Marker.ANY_MARKER + integer2 + ", crop: " + rect.toShortString());
                this.this$0.getOnNewFormat().invoke(Integer.valueOf(integer), Integer.valueOf(integer2), rect);
            }

            @Override // android.media.MediaCodec.Callback
            public void onError(MediaCodec codec, MediaCodec.CodecException e) {
                Intrinsics.checkNotNullParameter(codec, "codec");
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.getOnError().invoke(new AppException("Codec error", e, 0, 4, null));
            }
        };
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void start(Surface surface, int width, int height) {
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
                    try {
                        Double d = (Double) this.codec.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities().getSupportedFrameRatesFor(width, height).getUpper();
                        Log.i(UtilKt.getTAG(this), "Max Operating Rate = " + d);
                        mediaFormatCreateVideoFormat.setInteger("operating-rate", (int) d.doubleValue());
                    } catch (Throwable th) {
                        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "Failed to get max operating rate: " + th.getMessage());
                    }
                }
                mediaFormatCreateVideoFormat.setInteger("max-input-size", 0);
                if (Build.VERSION.SDK_INT >= 30) {
                    try {
                        if (this.codec.getCodecInfo().getCapabilitiesForType("video/avc").isFeatureSupported("low-latency")) {
                            mediaFormatCreateVideoFormat.setFeatureEnabled("low-latency", true);
                        }
                    } catch (Throwable th2) {
                        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), th2.toString());
                    }
                }
                try {
                    setUnsupportedResolution(false);
                    if (!this.codec.getCodecInfo().getCapabilitiesForType("video/avc").getVideoCapabilities().isSizeSupported(width, height)) {
                        setUnsupportedResolution(true);
                    }
                } catch (Throwable th3) {
                    DiagnosticsKt.traceMessage(UtilKt.getTAG(this), th3.toString());
                }
                this.codec.setCallback(this.callback);
                this.codec.configure(mediaFormatCreateVideoFormat, surface, (MediaCrypto) null, 0);
                this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.AsyncDecoder$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncDecoder.start$lambda$1$lambda$0(this.f$0);
                    }
                });
                this.codec.start();
                this.running = true;
                Unit unit = Unit.INSTANCE;
            } catch (MediaCodec.CodecException e) {
                throw new AppException("Codec error", e, 0, 4, null);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void start$lambda$1$lambda$0(AsyncDecoder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.acceptBuffers = true;
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void stop() {
        ReentrantLock reentrantLock = this.bufferLock;
        reentrantLock.lock();
        try {
            if (this.running) {
                Log.i(UtilKt.getTAG(this), "Stopping decoding");
                this.running = false;
                try {
                    this.codec.stop();
                } catch (Throwable unused) {
                }
                try {
                    this.codec.reset();
                } catch (Throwable unused2) {
                }
                this.buffers.clear();
                this.acceptBuffers = false;
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.kelocube.mirrorclient.Decoder
    public void release() {
        stop();
        try {
            this.codec.release();
        } catch (IllegalStateException e) {
            Log.w(UtilKt.getTAG(this), e);
        }
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
            ByteBuffer inputBuffer = this.codec.getInputBuffer(numPoll.intValue());
            Intrinsics.checkNotNull(inputBuffer);
            inputBuffer.position(0);
            inputBuffer.put(data, offset, length);
            try {
                this.codec.queueInputBuffer(numPoll.intValue(), 0, inputBuffer.position(), 0L, 0);
                Unit unit = Unit.INSTANCE;
            } catch (IllegalStateException unused) {
                throw new AppException("Decoder error", null, 0, 6, null);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final MediaCodec.Callback getCallback() {
        return this.callback;
    }
}
