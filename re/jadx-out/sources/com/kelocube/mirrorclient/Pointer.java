package com.kelocube.mirrorclient;

import android.content.Context;
import android.graphics.Rect;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.kelocube.mirrorclient.CanvasScaler;
import com.kelocube.mirrorclient.Transport;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.jpountz.lz4.LZ4Exception;
import net.jpountz.lz4.LZ4Factory;
import net.jpountz.lz4.LZ4FastDecompressor;

/* JADX INFO: compiled from: Pointer.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001NB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J&\u00109\u001a\u00020 2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bJ\u000e\u0010:\u001a\u00020 2\u0006\u0010;\u001a\u00020<J\u000e\u0010;\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010=\u001a\u00020 2\u0006\u0010>\u001a\u00020?J\u0012\u0010@\u001a\u00020 2\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u000e\u0010C\u001a\u00020 2\u0006\u0010D\u001a\u00020EJ\u000e\u0010F\u001a\u00020 2\u0006\u0010D\u001a\u00020EJ \u0010G\u001a\u00020 2\u0006\u0010H\u001a\u00020B2\u0006\u0010I\u001a\u00020\b2\u0006\u0010J\u001a\u00020\bH\u0016J\u001c\u0010K\u001a\u00020 2\b\u0010A\u001a\u0004\u0018\u00010B2\b\u0010L\u001a\u0004\u0018\u00010MH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0012*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R5\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020 0\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082.¢\u0006\u0002\n\u0000R\u0011\u00102\u001a\u000203¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u000e\u00106\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lcom/kelocube/mirrorclient/Pointer;", "Landroid/opengl/GLSurfaceView$Renderer;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "activeArea", "Landroid/graphics/Rect;", "attrVertex", "", "cHeight", "cWidth", "frag", "h2w", "", "hHeight", "hWidth", "imageData", "Ljava/nio/ByteBuffer;", "kotlin.jvm.PlatformType", "lz4", "Lnet/jpountz/lz4/LZ4FastDecompressor;", "m1", "m2", "mTransform", "newShape", "Lcom/kelocube/mirrorclient/Pointer$PointerShape;", "onError", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/AppException;", "Lkotlin/ParameterName;", "name", "e", "", "getOnError", "()Lkotlin/jvm/functions/Function1;", "setOnError", "(Lkotlin/jvm/functions/Function1;)V", "program", "shape", "shapeLock", "Ljava/util/concurrent/locks/ReentrantLock;", "texHeight", "texWidth", "textureId", "updateTexture", "", "vert", "vertData", "vertexBuffer", "Ljava/nio/FloatBuffer;", "view", "Landroid/opengl/GLSurfaceView;", "getView", "()Landroid/opengl/GLSurfaceView;", "w2c", "x", "y", "configure", "inflate", "layout", "Landroid/view/ViewGroup;", "onCropChanged", "crop", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "onDrawFrame", "p0", "Ljavax/microedition/khronos/opengles/GL10;", "onMoveData", "data", "Lcom/kelocube/mirrorclient/Transport$Data;", "onShapeData", "onSurfaceChanged", "unused", "width", "height", "onSurfaceCreated", "p1", "Ljavax/microedition/khronos/egl/EGLConfig;", "PointerShape", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Pointer implements GLSurfaceView.Renderer {
    private Rect activeArea;
    private int attrVertex;
    private int cHeight;
    private int cWidth;
    private int frag;
    private float[] h2w;
    private int hHeight;
    private int hWidth;
    private ByteBuffer imageData;
    private final LZ4FastDecompressor lz4;
    private float[] m1;
    private float[] m2;
    private volatile float[] mTransform;
    private PointerShape newShape;
    private Function1<? super AppException, Unit> onError;
    private int program;
    private PointerShape shape;
    private ReentrantLock shapeLock;
    private int texHeight;
    private int texWidth;
    private int textureId;
    private boolean updateTexture;
    private int vert;
    private float[] vertData;
    private FloatBuffer vertexBuffer;
    private final GLSurfaceView view;
    private float[] w2c;
    private int x;
    private int y;

    public Pointer(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        GLSurfaceView gLSurfaceView = new GLSurfaceView(context);
        this.view = gLSurfaceView;
        this.lz4 = LZ4Factory.fastestJavaInstance().fastDecompressor();
        this.imageData = ByteBuffer.allocate(0);
        this.shape = new PointerShape(0, 0, 0, 0, 15, null);
        this.shapeLock = new ReentrantLock();
        this.mTransform = new float[16];
        this.h2w = new float[16];
        this.w2c = new float[16];
        this.m1 = new float[16];
        this.m2 = new float[16];
        this.vertData = new float[20];
        this.onError = new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.Pointer$onError$1
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
        gLSurfaceView.setEGLContextClientVersion(2);
        gLSurfaceView.setZOrderMediaOverlay(true);
        gLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 0, 0);
        gLSurfaceView.getHolder().setFormat(-2);
        gLSurfaceView.setRenderer(this);
        gLSurfaceView.setRenderMode(0);
    }

    public final GLSurfaceView getView() {
        return this.view;
    }

    /* JADX INFO: compiled from: Pointer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/kelocube/mirrorclient/Pointer$PointerShape;", "", "width", "", "height", "hotSpotX", "hotSpotY", "(IIII)V", "getHeight", "()I", "getHotSpotX", "getHotSpotY", "getWidth", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class PointerShape {
        private final int height;
        private final int hotSpotX;
        private final int hotSpotY;
        private final int width;

        public PointerShape() {
            this(0, 0, 0, 0, 15, null);
        }

        public PointerShape(int i, int i2, int i3, int i4) {
            this.width = i;
            this.height = i2;
            this.hotSpotX = i3;
            this.hotSpotY = i4;
        }

        public /* synthetic */ PointerShape(int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4);
        }

        public final int getWidth() {
            return this.width;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getHotSpotX() {
            return this.hotSpotX;
        }

        public final int getHotSpotY() {
            return this.hotSpotY;
        }
    }

    public final Function1<AppException, Unit> getOnError() {
        return this.onError;
    }

    public final void setOnError(Function1<? super AppException, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onError = function1;
    }

    public final void inflate(ViewGroup layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        layout.addView(this.view);
    }

    public final void layout(Rect activeArea) {
        Intrinsics.checkNotNullParameter(activeArea, "activeArea");
        this.activeArea = activeArea;
        this.view.layout(activeArea.left, activeArea.top, activeArea.right, activeArea.bottom);
        this.view.bringToFront();
    }

    public final void onMoveData(Transport.Data data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.x = data.getBuffer().getShort();
        this.y = data.getBuffer().getShort();
        this.view.requestRender();
    }

    public final void configure(int cWidth, int cHeight, int hWidth, int hHeight) {
        this.view.getHolder().setFixedSize(cWidth, cHeight);
        this.cWidth = cWidth;
        this.cHeight = cHeight;
        this.hWidth = hWidth;
        this.hHeight = hHeight;
        float fMax = Math.max(hWidth, hHeight);
        float f = hWidth;
        float f2 = hHeight;
        float f3 = cWidth;
        float f4 = cHeight;
        float f5 = f3 / f4 > f / f2 ? (f2 / fMax) / f4 : (f / fMax) / f3;
        Matrix.setIdentityM(this.h2w, 0);
        float f6 = 1.0f / fMax;
        Matrix.scaleM(this.h2w, 0, f6, f6, 1.0f);
        Matrix.translateM(this.h2w, 0, (-hWidth) / 2.0f, (-hHeight) / 2.0f, 0.0f);
        Matrix.setIdentityM(this.w2c, 0);
        Matrix.scaleM(this.w2c, 0, 2.0f / (f3 * f5), (-2.0f) / (f4 * f5), 1.0f);
        onCropChanged(new CanvasScaler.Crop());
    }

    public final void onCropChanged(CanvasScaler.Crop crop) {
        Intrinsics.checkNotNullParameter(crop, "crop");
        Matrix.setIdentityM(this.m1, 0);
        Matrix.translateM(this.m1, 0, crop.getX(), crop.getY(), 0.0f);
        Matrix.rotateM(this.m1, 0, (crop.getT() * 180.0f) / 3.1415927f, 0.0f, 0.0f, 1.0f);
        Matrix.scaleM(this.m1, 0, crop.getA(), crop.getA(), 1.0f);
        Matrix.multiplyMM(this.m2, 0, this.w2c, 0, this.m1, 0);
        Matrix.multiplyMM(this.m1, 0, this.m2, 0, this.h2w, 0);
        float[] fArr = this.m1;
        this.m1 = this.mTransform;
        this.mTransform = fArr;
        this.view.requestRender();
    }

    public final void onShapeData(Transport.Data data) {
        Intrinsics.checkNotNullParameter(data, "data");
        PointerShape pointerShape = new PointerShape(data.getBuffer().getShort(), data.getBuffer().getShort(), data.getBuffer().getShort(), data.getBuffer().getShort());
        int width = pointerShape.getWidth() * pointerShape.getHeight();
        int i = width * 4;
        if (this.imageData.capacity() < i) {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(width * 8);
            this.imageData = byteBufferAllocateDirect;
            byteBufferAllocateDirect.order(ByteOrder.BIG_ENDIAN);
        }
        ReentrantLock reentrantLock = this.shapeLock;
        reentrantLock.lock();
        try {
            try {
                if (this.lz4.decompress(data.getBuffer(), data.getBuffer().position(), this.imageData, 0, i) == 0) {
                    throw new AppException("Invalid pointer shape data", null, 0, 6, null);
                }
                data.getBuffer().position(data.getBuffer().position() + i);
                this.imageData.position(0);
                this.newShape = pointerShape;
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                this.view.requestRender();
            } catch (LZ4Exception unused) {
                throw new AppException("Invalid pointer shape data", null, 0, 6, null);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 unused, int width, int height) {
        Intrinsics.checkNotNullParameter(unused, "unused");
        GLES20.glViewport(0, 0, width, height);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 p0, EGLConfig p1) {
        try {
            InputStream inputStreamOpenRawResource = this.view.getResources().openRawResource(R.raw.preview_vert);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "openRawResource(...)");
            this.vert = UtilKt.loadShader(35633, inputStreamOpenRawResource);
            InputStream inputStreamOpenRawResource2 = this.view.getResources().openRawResource(R.raw.preview_frag);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource2, "openRawResource(...)");
            this.frag = UtilKt.loadShader(35632, inputStreamOpenRawResource2);
            int iGlCreateProgram = GLES20.glCreateProgram();
            this.program = iGlCreateProgram;
            GLES20.glAttachShader(iGlCreateProgram, this.vert);
            GLES20.glAttachShader(this.program, this.frag);
            GLES20.glLinkProgram(this.program);
            this.attrVertex = GLES20.glGetAttribLocation(this.program, "vertex");
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(64);
            byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
            FloatBuffer floatBufferAsFloatBuffer = byteBufferAllocateDirect.asFloatBuffer();
            Intrinsics.checkNotNullExpressionValue(floatBufferAsFloatBuffer, "asFloatBuffer(...)");
            this.vertexBuffer = floatBufferAsFloatBuffer;
            ReentrantLock reentrantLock = this.shapeLock;
            reentrantLock.lock();
            try {
                this.updateTexture = true;
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (AppException e) {
            this.onError.invoke(e);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 p0) {
        try {
            ReentrantLock reentrantLock = this.shapeLock;
            reentrantLock.lock();
            try {
                PointerShape pointerShape = this.newShape;
                FloatBuffer floatBuffer = null;
                if (pointerShape != null) {
                    Intrinsics.checkNotNull(pointerShape);
                    this.shape = pointerShape;
                    this.newShape = null;
                    this.updateTexture = true;
                    if (this.texWidth < pointerShape.getWidth() || this.texHeight < this.shape.getHeight()) {
                        IntBuffer intBufferAllocate = IntBuffer.allocate(1);
                        int i = this.textureId;
                        if (i != 0) {
                            intBufferAllocate.put(i);
                            intBufferAllocate.position(0);
                            GLES20.glDeleteTextures(1, intBufferAllocate);
                            this.textureId = 0;
                        }
                        GLES20.glGenTextures(1, intBufferAllocate);
                        this.textureId = intBufferAllocate.get(0);
                        this.texWidth = this.shape.getWidth();
                        this.texHeight = this.shape.getHeight();
                        GLES20.glBindTexture(3553, this.textureId);
                        GLES20.glTexParameteri(3553, 10242, 33071);
                        GLES20.glTexParameteri(3553, 10243, 33071);
                        GLES20.glTexParameteri(3553, 10241, 9728);
                        GLES20.glTexParameteri(3553, 10240, 9728);
                        GLES20.glBindTexture(3553, this.textureId);
                        GLES20.glTexImage2D(3553, 0, 6408, this.texWidth, this.texHeight, 0, 6408, 5121, null);
                    }
                }
                if (this.updateTexture) {
                    GLES20.glBindTexture(3553, this.textureId);
                    this.imageData.position(0);
                    GLES20.glTexSubImage2D(3553, 0, 0, 0, this.shape.getWidth(), this.shape.getHeight(), 6408, 5121, this.imageData);
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                GLES20.glClear(16384);
                if (this.x != -32768 && this.shape.getWidth() != 0 && this.shape.getHeight() != 0) {
                    for (int i2 = 0; i2 < 4; i2++) {
                        this.vertData[16] = (this.x - this.shape.getHotSpotX()) + (this.shape.getWidth() * (i2 % 2));
                        this.vertData[17] = (this.y - this.shape.getHotSpotY()) + (this.shape.getHeight() * (i2 / 2));
                        float[] fArr = this.vertData;
                        fArr[18] = 0.0f;
                        fArr[19] = 1.0f;
                        int i3 = i2 * 4;
                        Matrix.multiplyMV(fArr, i3, this.mTransform, 0, this.vertData, 16);
                        this.vertData[i3 + 2] = (this.shape.getWidth() * (i2 % 2)) / this.texWidth;
                        this.vertData[i3 + 3] = (this.shape.getHeight() * (i2 / 2)) / this.texHeight;
                    }
                    FloatBuffer floatBuffer2 = this.vertexBuffer;
                    if (floatBuffer2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("vertexBuffer");
                        floatBuffer2 = null;
                    }
                    floatBuffer2.put(this.vertData, 0, 16);
                    FloatBuffer floatBuffer3 = this.vertexBuffer;
                    if (floatBuffer3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("vertexBuffer");
                        floatBuffer3 = null;
                    }
                    floatBuffer3.position(0);
                    GLES20.glUseProgram(this.program);
                    GLES20.glEnableVertexAttribArray(this.attrVertex);
                    int i4 = this.attrVertex;
                    FloatBuffer floatBuffer4 = this.vertexBuffer;
                    if (floatBuffer4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("vertexBuffer");
                    } else {
                        floatBuffer = floatBuffer4;
                    }
                    GLES20.glVertexAttribPointer(i4, 4, 5126, false, 0, (Buffer) floatBuffer);
                    GLES20.glDrawArrays(5, 0, 4);
                }
                EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
                EGL14.eglSwapInterval(eGLDisplayEglGetCurrentDisplay, 0);
                EGLExt.eglPresentationTimeANDROID(eGLDisplayEglGetCurrentDisplay, EGL14.eglGetCurrentSurface(12377), System.nanoTime());
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (AppException e) {
            this.onError.invoke(e);
        }
    }
}
