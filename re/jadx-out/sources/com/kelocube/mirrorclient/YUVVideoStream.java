package com.kelocube.mirrorclient;

import android.graphics.Rect;
import android.opengl.EGL14;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: YUVVideoStream.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u0003\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\fH\u0016J\b\u0010\u001a\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0002J\b\u0010\u001c\u001a\u00020\u0012H\u0016J(\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\fH\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/kelocube/mirrorclient/YUVVideoStream;", "Lcom/kelocube/mirrorclient/VideoStream;", "Landroid/view/SurfaceHolder$Callback;", "layout", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "decoder", "Lcom/kelocube/mirrorclient/Decoder;", "haveConfig", "", "haveSurface", "height", "", "lowLatency", "view", "Landroid/view/SurfaceView;", "width", "configure", "", "activeArea", "Landroid/graphics/Rect;", "processInput", "data", "", "offset", "length", "release", "start", "stop", "surfaceChanged", "p0", "Landroid/view/SurfaceHolder;", "p1", "p2", "p3", "surfaceCreated", "surfaceDestroyed", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class YUVVideoStream extends VideoStream implements SurfaceHolder.Callback {
    private final Decoder decoder;
    private boolean haveConfig;
    private boolean haveSurface;
    private int height;
    private final ViewGroup layout;
    private boolean lowLatency;
    private final SurfaceView view;
    private int width;

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder p0, int p1, int p2, int p3) {
        Intrinsics.checkNotNullParameter(p0, "p0");
    }

    public YUVVideoStream(ViewGroup layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.layout = layout;
        SurfaceView surfaceView = new SurfaceView(layout.getContext());
        this.view = surfaceView;
        Decoder asyncDecoder = App.INSTANCE.getInstance().getTestId() != 1 ? new AsyncDecoder() : new SyncDecoder();
        this.decoder = asyncDecoder;
        surfaceView.getHolder().addCallback(this);
        layout.addView(surfaceView);
        asyncDecoder.setOnError(new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.YUVVideoStream.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppException appException) {
                invoke2(appException);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AppException e) {
                Intrinsics.checkNotNullParameter(e, "e");
                YUVVideoStream.this.getOnError().invoke(e);
            }
        });
        asyncDecoder.setOnFrame(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.YUVVideoStream.2
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
                YUVVideoStream.this.getOnFrameDone().invoke();
            }
        });
    }

    @Override // com.kelocube.mirrorclient.VideoStream
    public void release() {
        this.decoder.release();
        this.layout.removeView(this.view);
    }

    @Override // com.kelocube.mirrorclient.VideoStream
    public void stop() {
        this.decoder.stop();
    }

    @Override // com.kelocube.mirrorclient.VideoStream
    public void processInput(byte[] data, int offset, int length) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.decoder.processInput(data, offset, length);
    }

    @Override // com.kelocube.mirrorclient.VideoStream
    public void configure(int width, int height, boolean lowLatency) {
        this.width = width;
        this.height = height;
        this.lowLatency = lowLatency;
        this.haveConfig = true;
        start();
    }

    @Override // com.kelocube.mirrorclient.VideoStream
    public void layout(Rect activeArea) {
        Intrinsics.checkNotNullParameter(activeArea, "activeArea");
        this.view.layout(activeArea.left, activeArea.top, activeArea.right, activeArea.bottom);
        this.view.bringToFront();
    }

    private final void start() {
        if (this.haveSurface && this.haveConfig) {
            Decoder decoder = this.decoder;
            Surface surface = this.view.getHolder().getSurface();
            Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
            decoder.start(surface, this.width, this.height);
            if (this.decoder.getUnsupportedResolution()) {
                Toast.makeText(this.layout.getContext(), R.string.session_unsupported_decoder_resolution, 1).show();
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        stop();
        this.haveSurface = false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        EGL14.eglSwapInterval(EGL14.eglGetDisplay(this.view.getDisplay().getDisplayId()), 0);
        this.haveSurface = true;
        start();
    }
}
