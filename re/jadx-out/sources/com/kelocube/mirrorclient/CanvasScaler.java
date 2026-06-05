package com.kelocube.mirrorclient;

import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.view.MotionEvent;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.internal.view.SupportMenu;
import com.kelocube.mirrorclient.Transport;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: CanvasScaler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0003#$%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rH\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006J\u0012\u0010\u001c\u001a\u00020\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/kelocube/mirrorclient/CanvasScaler;", "", "callbacks", "Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;", "(Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V", "area", "Landroid/graphics/Rect;", "handler", "Landroid/os/Handler;", "pointers", "", "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;", "sx", "", "sy", "onData", "", "data", "Lcom/kelocube/mirrorclient/Transport$Data;", "onTouchEvent", "e", "Landroid/view/MotionEvent;", "packCoord", "", "x", "readPoint", "pointer", "resize", "sendState", "cancel", "", "setCrop", "crop", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "unpackCoord", "Callbacks", "Crop", "Pointer", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CanvasScaler {
    private final Rect area;
    private final Callbacks callbacks;
    private final Handler handler;
    private final List<Pointer> pointers;
    private float sx;
    private float sy;

    /* JADX INFO: Access modifiers changed from: private */
    public final short packCoord(float x) {
        return (short) ((-32768) + (x * SupportMenu.USER_MASK));
    }

    private final float unpackCoord(short x) {
        return (x - ShortCompanionObject.MIN_VALUE) / 65535.0f;
    }

    public CanvasScaler(Callbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.callbacks = callbacks;
        this.handler = new Handler();
        this.area = new Rect();
        this.pointers = new ArrayList();
    }

    /* JADX INFO: compiled from: CanvasScaler.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "", "()V", "a", "", "getA", "()F", "setA", "(F)V", "t", "getT", "setT", "x", "getX", "setX", "y", "getY", "setY", "set", "", "crop", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Crop {
        private float a = 1.0f;
        private float t;
        private float x;
        private float y;

        public final float getX() {
            return this.x;
        }

        public final void setX(float f) {
            this.x = f;
        }

        public final float getY() {
            return this.y;
        }

        public final void setY(float f) {
            this.y = f;
        }

        public final float getA() {
            return this.a;
        }

        public final void setA(float f) {
            this.a = f;
        }

        public final float getT() {
            return this.t;
        }

        public final void setT(float f) {
            this.t = f;
        }

        public final void set(Crop crop) {
            Intrinsics.checkNotNullParameter(crop, "crop");
            this.x = crop.x;
            this.y = crop.y;
            this.a = crop.a;
            this.t = crop.t;
        }
    }

    /* JADX INFO: compiled from: CanvasScaler.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0089\u0001\u0012h\u0010\u0002\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e\u0012\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u0003¢\u0006\u0002\u0010\u0012R#\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014Rs\u0010\u0002\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;", "", "onData", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "maxLength", "Lkotlin/Function1;", "Ljava/nio/ByteBuffer;", "to", "", "Lcom/kelocube/mirrorclient/DataCallback;", "callback", "Lcom/kelocube/mirrorclient/OnDataHandler;", "onCropChanged", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "getOnCropChanged", "()Lkotlin/jvm/functions/Function2;", "getOnData", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function2<Crop, Boolean, Unit> onCropChanged;
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onData;

        /* JADX WARN: Multi-variable type inference failed */
        public Callbacks(Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onData, Function2<? super Crop, ? super Boolean, Unit> onCropChanged) {
            Intrinsics.checkNotNullParameter(onData, "onData");
            Intrinsics.checkNotNullParameter(onCropChanged, "onCropChanged");
            this.onData = onData;
            this.onCropChanged = onCropChanged;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnData() {
            return this.onData;
        }

        public final Function2<Crop, Boolean, Unit> getOnCropChanged() {
            return this.onCropChanged;
        }
    }

    public final void resize(Rect area) {
        Intrinsics.checkNotNullParameter(area, "area");
        this.area.set(area);
        this.sx = area.width();
        this.sy = area.height();
    }

    /* JADX INFO: compiled from: CanvasScaler.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;", "", "id", "", "(I)V", "getId", "()I", "point", "Landroid/graphics/PointF;", "getPoint", "()Landroid/graphics/PointF;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    private static final class Pointer {
        private final int id;
        private final PointF point = new PointF();

        public Pointer(int i) {
            this.id = i;
        }

        public final int getId() {
            return this.id;
        }

        public final PointF getPoint() {
            return this.point;
        }
    }

    static /* synthetic */ void sendState$default(CanvasScaler canvasScaler, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        canvasScaler.sendState(z);
    }

    private final void sendState(final boolean cancel) {
        Pointer pointer = (Pointer) CollectionsKt.getOrNull(this.pointers, 0);
        final PointF point = pointer != null ? pointer.getPoint() : null;
        Pointer pointer2 = (Pointer) CollectionsKt.getOrNull(this.pointers, 1);
        final PointF point2 = pointer2 != null ? pointer2.getPoint() : null;
        this.callbacks.getOnData().invoke(9, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.CanvasScaler.sendState.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                invoke2(byteBuffer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ByteBuffer it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.put(cancel ? (byte) -2 : (byte) this.pointers.size());
                CanvasScaler canvasScaler = this;
                PointF pointF = point;
                it.putShort(canvasScaler.packCoord(pointF != null ? pointF.x : 0.0f));
                CanvasScaler canvasScaler2 = this;
                PointF pointF2 = point;
                it.putShort(canvasScaler2.packCoord(pointF2 != null ? pointF2.y : 0.0f));
                CanvasScaler canvasScaler3 = this;
                PointF pointF3 = point2;
                it.putShort(canvasScaler3.packCoord(pointF3 != null ? pointF3.x : 0.0f));
                CanvasScaler canvasScaler4 = this;
                PointF pointF4 = point2;
                it.putShort(canvasScaler4.packCoord(pointF4 != null ? pointF4.y : 0.0f));
            }
        });
    }

    private final void readPoint(MotionEvent e, Pointer pointer) {
        int iFindPointerIndex = e.findPointerIndex(pointer.getId());
        if (iFindPointerIndex != -1) {
            pointer.getPoint().x = RangesKt.coerceIn((e.getX(iFindPointerIndex) - this.area.left) / this.sx, 0.0f, 1.0f);
            pointer.getPoint().y = RangesKt.coerceIn((e.getY(iFindPointerIndex) - this.area.top) / this.sy, 0.0f, 1.0f);
        }
    }

    public final void onTouchEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        int actionMasked = e.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.pointers.clear();
                sendState$default(this, false, 1, null);
                return;
            }
            if (actionMasked == 2) {
                Iterator<T> it = this.pointers.iterator();
                while (it.hasNext()) {
                    readPoint(e, (Pointer) it.next());
                }
                sendState$default(this, false, 1, null);
                return;
            }
            if (actionMasked == 3) {
                this.pointers.clear();
                sendState(true);
                return;
            } else if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return;
                }
                final int pointerId = e.getPointerId(e.getActionIndex());
                CollectionsKt.removeAll((List) this.pointers, (Function1) new Function1<Pointer, Boolean>() { // from class: com.kelocube.mirrorclient.CanvasScaler.onTouchEvent.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(Pointer it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return Boolean.valueOf(it2.getId() == pointerId);
                    }
                });
                sendState$default(this, false, 1, null);
                return;
            }
        }
        int pointerId2 = e.getPointerId(e.getActionIndex());
        List<Pointer> list = this.pointers;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (((Pointer) it2.next()).getId() == pointerId2) {
                    return;
                }
            }
        }
        List<Pointer> list2 = this.pointers;
        Pointer pointer = new Pointer(pointerId2);
        readPoint(e, pointer);
        list2.add(pointer);
        sendState$default(this, false, 1, null);
    }

    public final void setCrop(final Crop crop) {
        Intrinsics.checkNotNullParameter(crop, "crop");
        this.callbacks.getOnData().invoke(9, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.CanvasScaler.setCrop.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                invoke2(byteBuffer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ByteBuffer it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.put((byte) -1);
                it.putShort(CanvasScaler.this.packCoord((crop.getX() / 16.0f) + 0.5f));
                it.putShort(CanvasScaler.this.packCoord((crop.getY() / 16.0f) + 0.5f));
                it.putShort(CanvasScaler.this.packCoord(crop.getA() / 8.0f));
                it.putShort(CanvasScaler.this.packCoord(UtilKt.wrap(crop.getT(), 6.2831855f) / 8.0f));
            }
        });
    }

    public final void onData(Transport.Data data) {
        Intrinsics.checkNotNullParameter(data, "data");
        final Crop crop = new Crop();
        float f = 2;
        crop.setX((unpackCoord(data.getBuffer().getShort()) - 0.5f) * 8.0f * f);
        crop.setY((unpackCoord(data.getBuffer().getShort()) - 0.5f) * 8.0f * f);
        crop.setA(unpackCoord(data.getBuffer().getShort()) * 8.0f);
        crop.setT(unpackCoord(data.getBuffer().getShort()) * 8.0f);
        final boolean z = data.getBuffer().get() != 0;
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.CanvasScaler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CanvasScaler.onData$lambda$4(this.f$0, crop, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onData$lambda$4(CanvasScaler this$0, Crop crop, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(crop, "$crop");
        this$0.callbacks.getOnCropChanged().invoke(crop, Boolean.valueOf(z));
    }
}
