package com.kelocube.mirrorclient;

import android.graphics.Rect;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoStream.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J\b\u0010\"\u001a\u00020\tH&J\b\u0010#\u001a\u00020\tH&R5\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006$"}, d2 = {"Lcom/kelocube/mirrorclient/VideoStream;", "", "()V", "onError", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/AppException;", "Lkotlin/ParameterName;", "name", "e", "", "getOnError", "()Lkotlin/jvm/functions/Function1;", "setOnError", "(Lkotlin/jvm/functions/Function1;)V", "onFrameDone", "Lkotlin/Function0;", "getOnFrameDone", "()Lkotlin/jvm/functions/Function0;", "setOnFrameDone", "(Lkotlin/jvm/functions/Function0;)V", "configure", "width", "", "height", "lowLatency", "", "layout", "activeArea", "Landroid/graphics/Rect;", "processInput", "data", "", "offset", "length", "release", "stop", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class VideoStream {
    private Function1<? super AppException, Unit> onError = new Function1<AppException, Unit>() { // from class: com.kelocube.mirrorclient.VideoStream$onError$1
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
    private Function0<Unit> onFrameDone = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.VideoStream$onFrameDone$1
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };

    public abstract void configure(int width, int height, boolean lowLatency);

    public abstract void layout(Rect activeArea);

    public abstract void processInput(byte[] data, int offset, int length);

    public abstract void release();

    public abstract void stop();

    public final Function1<AppException, Unit> getOnError() {
        return this.onError;
    }

    public final void setOnError(Function1<? super AppException, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onError = function1;
    }

    public final Function0<Unit> getOnFrameDone() {
        return this.onFrameDone;
    }

    public final void setOnFrameDone(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onFrameDone = function0;
    }
}
