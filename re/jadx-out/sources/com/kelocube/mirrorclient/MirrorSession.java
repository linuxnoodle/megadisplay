package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.preference.PreferenceManager;
import com.afollestad.materialdialogs.MaterialDialog;
import com.kelocube.mirrorclient.ActionMenu;
import com.kelocube.mirrorclient.CanvasScaler;
import com.kelocube.mirrorclient.Input;
import com.kelocube.mirrorclient.MirrorClient;
import com.kelocube.mirrorclient.Transport;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MirrorSession.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002:;B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010 \u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0006\u0010\"\u001a\u00020\u000fJ\u000e\u0010#\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020$J\u000e\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020'J\u0006\u0010(\u001a\u00020\u000fJ\u0018\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\nH\u0002J\u0016\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J\b\u00102\u001a\u00020\u000fH\u0002J\b\u00103\u001a\u00020\u000fH\u0002J\b\u00104\u001a\u00020\u000fH\u0002J\u0006\u00105\u001a\u00020\u000fJ\u000e\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\b\u00109\u001a\u00020\u000fH\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorSession;", "", "context", "Landroid/content/Context;", "parentView", "Landroid/view/ViewGroup;", "callbacks", "Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;", "(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;)V", "alive", "", "config", "Lcom/kelocube/mirrorclient/MirrorSession$Config;", "configCallback", "Lkotlin/Function0;", "", "handler", "Landroid/os/Handler;", "haveFirstFrame", "input", "Lcom/kelocube/mirrorclient/Input;", "menu", "Lcom/kelocube/mirrorclient/ActionMenu;", "newConfig", "noVideoHint", "Lcom/kelocube/mirrorclient/NoVideoHint;", "pointer", "Lcom/kelocube/mirrorclient/Pointer;", "startRequested", "video", "Lcom/kelocube/mirrorclient/VideoStream;", "videoConfigured", "beginConfigure", "callback", "close", "configChanged", "Landroid/content/res/Configuration;", "handleKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "layout", "onCropChanged", "crop", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "target", "onData", "type", "", "data", "Lcom/kelocube/mirrorclient/Transport$Data;", "onFrameDone", "sendStart", "sendStop", "showOnboarding", "showWarning", "e", "Lcom/kelocube/mirrorclient/AppException;", "tryEndConfigure", "Callbacks", "Config", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MirrorSession {
    private boolean alive;
    private final Callbacks callbacks;
    private Config config;
    private Function0<Unit> configCallback;
    private final Context context;
    private final Handler handler;
    private boolean haveFirstFrame;
    private final Input input;
    private ActionMenu menu;
    private Config newConfig;
    private final NoVideoHint noVideoHint;
    private final ViewGroup parentView;
    private final Pointer pointer;
    private boolean startRequested;
    private VideoStream video;
    private boolean videoConfigured;

    /* JADX INFO: compiled from: MirrorSession.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0097\u0001\u0012[\u0010\u0002\u001aW\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u00122\u00120\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\tj\u0002`\r¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\f0\u0003\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010\u0012%\u0010\u0011\u001a!\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\f0\tj\u0002`\u0014¢\u0006\u0002\u0010\u0015Rf\u0010\u0002\u001aW\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u00122\u00120\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\tj\u0002`\r¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\f0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R0\u0010\u0011\u001a!\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\f0\tj\u0002`\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;", "", "onData", "Lkotlin/Function3;", "Lcom/kelocube/mirrorclient/MirrorClient$DataType;", "", "Lkotlin/ParameterName;", "name", "maxLength", "Lkotlin/Function1;", "Ljava/nio/ByteBuffer;", "to", "", "Lcom/kelocube/mirrorclient/DataCallback;", "callback", "onStart", "Lkotlin/Function0;", "onError", "Lcom/kelocube/mirrorclient/AppException;", "e", "Lcom/kelocube/mirrorclient/ErrorHandler;", "(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "getOnData", "()Lkotlin/jvm/functions/Function3;", "getOnError", "()Lkotlin/jvm/functions/Function1;", "getOnStart", "()Lkotlin/jvm/functions/Function0;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function3<MirrorClient.DataType, Integer, Function1<? super ByteBuffer, Unit>, Unit> onData;
        private final Function1<AppException, Unit> onError;
        private final Function0<Unit> onStart;

        /* JADX WARN: Multi-variable type inference failed */
        public Callbacks(Function3<? super MirrorClient.DataType, ? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onData, Function0<Unit> onStart, Function1<? super AppException, Unit> onError) {
            Intrinsics.checkNotNullParameter(onData, "onData");
            Intrinsics.checkNotNullParameter(onStart, "onStart");
            Intrinsics.checkNotNullParameter(onError, "onError");
            this.onData = onData;
            this.onStart = onStart;
            this.onError = onError;
        }

        public final Function3<MirrorClient.DataType, Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnData() {
            return this.onData;
        }

        public final Function0<Unit> getOnStart() {
            return this.onStart;
        }

        public final Function1<AppException, Unit> getOnError() {
            return this.onError;
        }
    }

    public MirrorSession(Context context, ViewGroup parentView, Callbacks callbacks) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parentView, "parentView");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.context = context;
        this.parentView = parentView;
        this.callbacks = callbacks;
        this.handler = new Handler(Looper.getMainLooper());
        this.alive = true;
        Pointer pointer = new Pointer(context);
        this.pointer = pointer;
        this.noVideoHint = new NoVideoHint(parentView);
        CanvasScaler.Callbacks callbacks2 = new CanvasScaler.Callbacks(new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                Intrinsics.checkNotNullParameter(c, "c");
                MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Scale, Integer.valueOf(i), c);
            }
        }, new AnonymousClass2(this));
        Input input = new Input(context, new Input.Callbacks(new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.3
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                Intrinsics.checkNotNullParameter(c, "c");
                MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Touch, Integer.valueOf(i), c);
            }
        }, new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.4
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                Intrinsics.checkNotNullParameter(c, "c");
                MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Pen, Integer.valueOf(i), c);
            }
        }, new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.5
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                Intrinsics.checkNotNullParameter(c, "c");
                MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Keyboard, Integer.valueOf(i), c);
            }
        }, new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.6
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                Intrinsics.checkNotNullParameter(c, "c");
                MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.InputConfig, Integer.valueOf(i), c);
            }
        }, callbacks.getOnError(), new Function0<Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.7
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
                ActionMenu actionMenu = MirrorSession.this.menu;
                if (actionMenu != null) {
                    ActionMenu.setMode$default(actionMenu, -1, false, 2, null);
                }
            }
        }, callbacks2));
        this.input = input;
        if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("session_menu_show", true)) {
            ActionMenu actionMenu = new ActionMenu(context, new ActionMenu.Callbacks(new Function1<CanvasScaler.Crop, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.8
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(CanvasScaler.Crop c) {
                    Intrinsics.checkNotNullParameter(c, "c");
                    MirrorSession.this.input.getScaler().setCrop(c);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CanvasScaler.Crop crop) {
                    invoke2(crop);
                    return Unit.INSTANCE;
                }
            }, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.9
                {
                    super(1);
                }

                public final void invoke(int i) {
                    MirrorSession.this.input.setMode(i);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }
            }, new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.10
                {
                    super(2);
                }

                public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                    Intrinsics.checkNotNullParameter(c, "c");
                    MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.InputKey, Integer.valueOf(i), c);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                    invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                    return Unit.INSTANCE;
                }
            }, new Function2<Integer, Function1<? super ByteBuffer, ? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.11
                {
                    super(2);
                }

                public final void invoke(int i, Function1<? super ByteBuffer, Unit> c) {
                    Intrinsics.checkNotNullParameter(c, "c");
                    MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Command, Integer.valueOf(i), c);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Function1<? super ByteBuffer, ? extends Unit> function1) {
                    invoke(num.intValue(), (Function1<? super ByteBuffer, Unit>) function1);
                    return Unit.INSTANCE;
                }
            }));
            actionMenu.inflate(parentView);
            this.menu = actionMenu;
        }
        pointer.setOnError(callbacks.getOnError());
        pointer.inflate(parentView);
        input.inflate(parentView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: MirrorSession.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorSession$Config;", "", "width", "", "height", "hWidth", "hHeight", "encoderId", "(IIIII)V", "getEncoderId", "()I", "getHHeight", "getHWidth", "getHeight", "getWidth", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    static final class Config {
        private final int encoderId;
        private final int hHeight;
        private final int hWidth;
        private final int height;
        private final int width;

        public Config(int i, int i2, int i3, int i4, int i5) {
            this.width = i;
            this.height = i2;
            this.hWidth = i3;
            this.hHeight = i4;
            this.encoderId = i5;
        }

        public final int getWidth() {
            return this.width;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getHWidth() {
            return this.hWidth;
        }

        public final int getHHeight() {
            return this.hHeight;
        }

        public final int getEncoderId() {
            return this.encoderId;
        }
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorSession$2, reason: invalid class name */
    /* JADX INFO: compiled from: MirrorSession.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<CanvasScaler.Crop, Boolean, Unit> {
        AnonymousClass2(Object obj) {
            super(2, obj, MirrorSession.class, "onCropChanged", "onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(CanvasScaler.Crop crop, Boolean bool) {
            invoke(crop, bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(CanvasScaler.Crop p0, boolean z) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((MirrorSession) this.receiver).onCropChanged(p0, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCropChanged(CanvasScaler.Crop crop, boolean target) {
        if (target) {
            ActionMenu actionMenu = this.menu;
            if (actionMenu != null) {
                actionMenu.saveCrop(crop);
                return;
            }
            return;
        }
        this.pointer.onCropChanged(crop);
    }

    public final void close() {
        try {
            sendStop();
            this.alive = false;
            this.input.close();
            VideoStream videoStream = this.video;
            if (videoStream != null) {
                this.video = null;
                videoStream.stop();
                videoStream.release();
            }
        } catch (AppException e) {
            this.callbacks.getOnError().invoke(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void beginConfigure(Config config, Function0<Unit> callback) {
        Log.i(UtilKt.getTAG(this), "Begin configuration");
        this.newConfig = config;
        this.videoConfigured = false;
        this.configCallback = callback;
        tryEndConfigure();
    }

    private final void tryEndConfigure() {
        Config config = this.newConfig;
        if (config != null) {
            if (this.videoConfigured) {
                if (this.haveFirstFrame) {
                    Log.i(UtilKt.getTAG(this), "End configuration");
                    this.config = config;
                    this.newConfig = null;
                    layout();
                    this.callbacks.getOnStart().invoke();
                    return;
                }
                return;
            }
            Log.i(UtilKt.getTAG(this), "Configure video");
            ViewGroup viewGroup = this.parentView;
            YUVVideoStream yUVVideoStream = this.video;
            if (yUVVideoStream == null && config.getWidth() != 0) {
                yUVVideoStream = new YUVVideoStream(viewGroup);
                YUVVideoStream yUVVideoStream2 = yUVVideoStream;
                yUVVideoStream2.setOnError(this.callbacks.getOnError());
                yUVVideoStream2.setOnFrameDone(new C00561(this));
            } else if (yUVVideoStream != null && config.getWidth() == 0) {
                yUVVideoStream.release();
                yUVVideoStream = null;
            }
            this.video = yUVVideoStream;
            if (yUVVideoStream != null) {
                yUVVideoStream.configure(config.getWidth(), config.getHeight(), true);
                this.pointer.configure(config.getWidth(), config.getHeight(), config.getHWidth(), config.getHHeight());
                this.input.configure();
                ActionMenu actionMenu = this.menu;
                if (actionMenu != null) {
                    actionMenu.onConnected();
                }
            }
            this.videoConfigured = true;
            this.haveFirstFrame = false;
            Function0<Unit> function0 = this.configCallback;
            if (function0 != null) {
                function0.invoke();
            }
            this.configCallback = null;
            this.noVideoHint.setHaveVideo(yUVVideoStream != null);
            layout();
        }
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorSession$tryEndConfigure$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MirrorSession.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class C00561 extends FunctionReferenceImpl implements Function0<Unit> {
        C00561(Object obj) {
            super(0, obj, MirrorSession.class, "onFrameDone", "onFrameDone()V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((MirrorSession) this.receiver).onFrameDone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onFrameDone() {
        this.haveFirstFrame = true;
        tryEndConfigure();
        final Config config = this.config;
        if (config != null) {
            this.callbacks.getOnData().invoke(MirrorClient.DataType.FrameDone, 4, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession$onFrameDone$1$1
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
                    it.putInt(config.getEncoderId());
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v27, types: [T, android.graphics.Point] */
    /* JADX WARN: Type inference failed for: r3v31, types: [T, android.graphics.Point] */
    /* JADX WARN: Type inference failed for: r3v9, types: [T, android.graphics.Point] */
    private final void sendStart() {
        T point;
        Integer intOrNull;
        Integer intOrNull2;
        if (this.startRequested) {
            Log.w(UtilKt.getTAG(this), "Session already requested");
            return;
        }
        this.startRequested = true;
        Log.i(UtilKt.getTAG(this), "Requesting session");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        final String str = Build.MODEL;
        final int i = (int) defaultSharedPreferences.getFloat(PrefsKt.PREF_QUALITY, 80.0f);
        String string = defaultSharedPreferences.getString(PrefsKt.PREF_SAMPLING, null);
        final int iIntValue = (string == null || (intOrNull2 = StringsKt.toIntOrNull(string)) == null) ? 0 : intOrNull2.intValue();
        String string2 = defaultSharedPreferences.getString(PrefsKt.PREF_FRAMERATE, null);
        final int iIntValue2 = (string2 == null || (intOrNull = StringsKt.toIntOrNull(string2)) == null) ? 60 : intOrNull.intValue();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = UtilKt.getLandscapeResolution(this.context);
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        try {
            String string3 = defaultSharedPreferences.getString(PrefsKt.PREF_RESOLUTION, null);
            Intrinsics.checkNotNull(string3);
            List listSplit$default = StringsKt.split$default((CharSequence) string3, new String[]{","}, false, 0, 6, (Object) null);
            point = new Point(Integer.parseInt((String) listSplit$default.get(0)), Integer.parseInt((String) listSplit$default.get(1)));
        } catch (Throwable unused) {
            point = new Point(MirrorSessionKt.OUT_RES_SCALE_TO_SOURCE, 0);
        }
        objectRef2.element = point;
        if (Prefs.INSTANCE.isOrientationPortrait(this.context)) {
            objectRef.element = new Point(((Point) objectRef.element).y, ((Point) objectRef.element).x);
            if (((Point) objectRef2.element).y > 0) {
                objectRef2.element = new Point(((Point) objectRef2.element).y, ((Point) objectRef2.element).x);
            }
        }
        final Ref.IntRef intRef = new Ref.IntRef();
        if (defaultSharedPreferences.getBoolean(PrefsKt.PREF_FORCE_SOFTWARE_ENCODER, false)) {
            intRef.element |= MirrorSessionKt.FLAG_SOFTWARE_ENCODING;
        }
        final String userId = App.INSTANCE.getInstance().getUserId();
        final String receipt$default = Billing.getReceipt$default(App.INSTANCE.getInstance().getBilling(), false, 1, null);
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "Starting session");
        this.callbacks.getOnData().invoke(MirrorClient.DataType.Configure, Integer.valueOf(str.length() + 8 + userId.length() + 25 + receipt$default.length() + 8), new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.sendStart.1
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
                String name = str;
                Intrinsics.checkNotNullExpressionValue(name, "$name");
                byte[] bytes = name.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                it.putInt(bytes.length);
                it.put(bytes);
                byte[] bytes2 = userId.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
                it.putInt(bytes2.length);
                it.put(bytes2);
                it.putInt(objectRef.element.x);
                it.putInt(objectRef.element.y);
                it.putInt(objectRef2.element.x);
                it.putInt(objectRef2.element.y);
                it.put((byte) iIntValue);
                it.putInt(i);
                byte[] bytes3 = receipt$default.getBytes(Charsets.US_ASCII);
                Intrinsics.checkNotNullExpressionValue(bytes3, "this as java.lang.String).getBytes(charset)");
                it.putInt(bytes3.length);
                it.put(bytes3);
                it.putInt(intRef.element);
                it.putInt(iIntValue2);
            }
        });
    }

    private final void sendStop() {
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "Stopping session");
        this.callbacks.getOnData().invoke(MirrorClient.DataType.Stop, 0, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.sendStop.1
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

    public final void onData(byte type, Transport.Data data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (type == MirrorClient.DataType.Configure.getId()) {
            final Config config = new Config(data.getBuffer().getInt(), data.getBuffer().getInt(), data.getBuffer().getInt(), data.getBuffer().getInt(), data.getBuffer().getInt());
            if (!TaskKt.runTask(this.handler, 1000L, new Function1<Function0<? extends Unit>, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.onData.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function0) {
                    invoke2((Function0<Unit>) function0);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Function0<Unit> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    MirrorSession.this.beginConfigure(config, it);
                }
            })) {
                throw new AppException("Failed to configure session", null, 0, 6, null);
            }
            return;
        }
        if (type == MirrorClient.DataType.Frame.getId()) {
            data.getBuffer().get();
            int iArrayOffset = data.getBuffer().arrayOffset() + 2;
            int length = data.getLength() - 2;
            VideoStream videoStream = this.video;
            if (videoStream != null) {
                byte[] bArrArray = data.getBuffer().array();
                Intrinsics.checkNotNullExpressionValue(bArrArray, "array(...)");
                videoStream.processInput(bArrArray, iArrayOffset, length);
                return;
            }
            return;
        }
        if (type == MirrorClient.DataType.PointerMove.getId()) {
            this.pointer.onMoveData(data);
            return;
        }
        if (type == MirrorClient.DataType.PointerShape.getId()) {
            this.pointer.onShapeData(data);
            return;
        }
        if (type != MirrorClient.DataType.TakeScreenshot.getId()) {
            if (type == MirrorClient.DataType.Scale.getId()) {
                this.input.getScaler().onData(data);
                return;
            }
            if (type == MirrorClient.DataType.Unlock.getId()) {
                byte[] bArr = new byte[data.getBuffer().getInt()];
                data.getBuffer().get(bArr);
                App.INSTANCE.getInstance().getBilling().makeLicenseRequest(new String(bArr, Charsets.US_ASCII), new Function1<String, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.onData.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(String str) {
                        invoke2(str);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(final String response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (MirrorSession.this.alive) {
                            MirrorSession.this.callbacks.getOnData().invoke(MirrorClient.DataType.Unlock, Integer.valueOf(response.length() + 4), new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.MirrorSession.onData.2.1
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
                                    byte[] bytes = response.getBytes(Charsets.US_ASCII);
                                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                                    it.putInt(bytes.length);
                                    it.put(bytes);
                                }
                            });
                        }
                    }
                });
                return;
            }
            Log.w(UtilKt.getTAG(this), "Unknown packet type: " + ((int) type));
        }
    }

    public final void layout() {
        int iRoundToInt;
        if (this.config != null) {
            int width = this.parentView.getWidth();
            int height = this.parentView.getHeight();
            float f = width;
            float f2 = height;
            float f3 = f / f2;
            float width2 = r0.getWidth() / r0.getHeight();
            int iRoundToInt2 = 0;
            if (width2 > f3) {
                height = MathKt.roundToInt(f / width2);
                iRoundToInt = MathKt.roundToInt((this.parentView.getHeight() - height) / 2.0f);
            } else {
                if (width2 < f3) {
                    width = MathKt.roundToInt(f2 * width2);
                    iRoundToInt2 = MathKt.roundToInt((this.parentView.getWidth() - width) / 2.0f);
                }
                iRoundToInt = 0;
            }
            Rect rect = new Rect(iRoundToInt2, iRoundToInt, width + iRoundToInt2, height + iRoundToInt);
            Log.i(UtilKt.getTAG(this), "Resizing view to " + rect.toShortString());
            VideoStream videoStream = this.video;
            if (videoStream != null) {
                videoStream.layout(rect);
            }
            this.pointer.layout(rect);
            this.input.layout(rect);
            ActionMenu actionMenu = this.menu;
            if (actionMenu != null) {
                actionMenu.layout();
            }
            this.noVideoHint.layout();
            return;
        }
        sendStart();
    }

    public final void showOnboarding() {
        ActionMenu actionMenu = this.menu;
        if (actionMenu != null) {
            actionMenu.showOnboardingIfNecessary();
        }
    }

    public final void configChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        ActionMenu actionMenu = this.menu;
        if (actionMenu != null) {
            actionMenu.configChanged(newConfig);
        }
    }

    public final void showWarning(final AppException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.MirrorSession$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MirrorSession.showWarning$lambda$4(e, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showWarning$lambda$4(AppException e, MirrorSession this$0) {
        Intrinsics.checkNotNullParameter(e, "$e");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int type = e.getType();
        if (type == 9) {
            Toast.makeText(this$0.context, R.string.error_warn_bad_resolution_warn, 1).show();
            return;
        }
        if (type != 14) {
            return;
        }
        MaterialDialog materialDialog = new MaterialDialog(this$0.context, null, 2, null);
        MaterialDialog.title$default(materialDialog, Integer.valueOf(R.string.error_warn_software_encoder_title), null, 2, null);
        MaterialDialog.message$default(materialDialog, Integer.valueOf(R.string.error_warn_software_encoder_body), null, null, 6, null);
        MaterialDialog.positiveButton$default(materialDialog, Integer.valueOf(R.string.word_ok), null, null, 6, null);
        materialDialog.show();
    }

    public final void handleKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.input.handleKeyEvent(event);
    }
}
