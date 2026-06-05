package com.kelocube.mirrorclient;

import android.graphics.Rect;
import android.util.Log;
import android.view.Surface;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Marker;

/* JADX INFO: compiled from: Decoder.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020\u0018H$J\u001e\u0010-\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0018J\b\u0010.\u001a\u00020\u000bH&J \u0010/\u001a\u00020\u000b2\u0006\u00100\u001a\u0002012\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\b\u00102\u001a\u00020\u000bH&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R5\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R_\u0010\u0016\u001aG\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u000b0\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u00063"}, d2 = {"Lcom/kelocube/mirrorclient/Decoder;", "", "()V", "configured", "", "onError", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/AppException;", "Lkotlin/ParameterName;", "name", "e", "", "getOnError", "()Lkotlin/jvm/functions/Function1;", "setOnError", "(Lkotlin/jvm/functions/Function1;)V", "onFrame", "Lkotlin/Function0;", "getOnFrame", "()Lkotlin/jvm/functions/Function0;", "setOnFrame", "(Lkotlin/jvm/functions/Function0;)V", "onNewFormat", "Lkotlin/Function3;", "", "width", "height", "Landroid/graphics/Rect;", "crop", "getOnNewFormat", "()Lkotlin/jvm/functions/Function3;", "setOnNewFormat", "(Lkotlin/jvm/functions/Function3;)V", "<set-?>", "unsupportedResolution", "getUnsupportedResolution", "()Z", "setUnsupportedResolution", "(Z)V", "doProcessInput", "data", "", "offset", "length", "flags", "processInput", "release", "start", "surface", "Landroid/view/Surface;", "stop", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class Decoder {
    private boolean configured;
    private Function1<? super AppException, Unit> onError = new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.Decoder$onError$1
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
    private Function0<Unit> onFrame = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.Decoder$onFrame$1
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };
    private Function3<? super Integer, ? super Integer, ? super Rect, Unit> onNewFormat = new Function3<Integer, Integer, Rect, Unit>() { // from class: com.kelocube.mirrorclient.Decoder$onNewFormat$1
        public final void invoke(int i, int i2, Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "<anonymous parameter 2>");
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2, Rect rect) {
            invoke(num.intValue(), num2.intValue(), rect);
            return Unit.INSTANCE;
        }
    };
    private boolean unsupportedResolution;

    protected abstract void doProcessInput(byte[] data, int offset, int length, int flags);

    public abstract void release();

    public abstract void stop();

    public final boolean getUnsupportedResolution() {
        return this.unsupportedResolution;
    }

    protected final void setUnsupportedResolution(boolean z) {
        this.unsupportedResolution = z;
    }

    public void start(Surface surface, int width, int height) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        Log.i(UtilKt.getTAG(this), "Starting decoding " + width + Marker.ANY_MARKER + height);
        this.configured = false;
    }

    public final void processInput(byte[] data, int offset, int length) {
        int i;
        Intrinsics.checkNotNullParameter(data, "data");
        if (!this.configured) {
            int i2 = offset + length;
            int i3 = offset;
            int i4 = 0;
            int i5 = 0;
            int i6 = -1;
            int i7 = -1;
            while (true) {
                if ((i4 != 0 && i5 != 0) || (i = i3 + 4) >= i2) {
                    break;
                }
                try {
                    if (data[i3] == 0 && data[i3 + 1] == 0 && data[i3 + 2] == 0 && data[i3 + 3] == 1) {
                        if (i6 == -1) {
                            if (data[i] == 103) {
                                i6 = i3;
                            }
                        } else if (i4 == 0) {
                            i4 = i3 - i6;
                        }
                        if (i7 == -1) {
                            if (data[i] == 104) {
                                i7 = i3;
                            }
                        } else if (i5 == 0) {
                            i5 = i3 - i7;
                        }
                    }
                    i3++;
                } catch (Exception e) {
                    DiagnosticsKt.traceMessage(UtilKt.getTAG(this), e.toString());
                }
            }
            if (i6 == -1 || i7 == -1) {
                DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "No SPS/PPS found in stream");
            } else {
                if (i4 == 0) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (i5 == 0) {
                    i5 = i2 - i7;
                }
                int i8 = i4 + i5;
                byte[] bArr = new byte[i8];
                ArraysKt.copyInto(data, bArr, 0, i6, i6 + i4);
                ArraysKt.copyInto(data, bArr, i4, i7, i5 + i7);
                doProcessInput(bArr, 0, i8, 2);
            }
            this.configured = true;
        }
        doProcessInput(data, offset, length, 0);
    }

    public final Function1<AppException, Unit> getOnError() {
        return this.onError;
    }

    public final void setOnError(Function1<? super AppException, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onError = function1;
    }

    public final Function0<Unit> getOnFrame() {
        return this.onFrame;
    }

    public final void setOnFrame(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onFrame = function0;
    }

    public final Function3<Integer, Integer, Rect, Unit> getOnNewFormat() {
        return this.onNewFormat;
    }

    public final void setOnNewFormat(Function3<? super Integer, ? super Integer, ? super Rect, Unit> function3) {
        Intrinsics.checkNotNullParameter(function3, "<set-?>");
        this.onNewFormat = function3;
    }
}
