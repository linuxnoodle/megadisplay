package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.PreferenceManager;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.kelocube.mirrorclient.CanvasScaler;
import java.nio.ByteBuffer;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u0002CDB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u000e\u00100\u001a\u00020.2\u0006\u00101\u001a\u000202J\u001a\u00103\u001a\u00020.2\u0006\u00104\u001a\u00020\u000f2\b\b\u0002\u00105\u001a\u00020\u000bH\u0002J\u001a\u00106\u001a\u00020.2\u0006\u00104\u001a\u00020\u000f2\b\b\u0002\u00107\u001a\u00020\u000bH\u0002J\u000e\u00108\u001a\u00020.2\u0006\u0010+\u001a\u00020,J\u000e\u00109\u001a\u00020.2\u0006\u0010:\u001a\u00020\tJ\u001a\u0010;\u001a\u00020\u000b2\b\u0010<\u001a\u0004\u0018\u00010,2\u0006\u00104\u001a\u00020\u000fH\u0016J\u001a\u0010=\u001a\u00020\u000b2\b\u0010<\u001a\u0004\u0018\u00010,2\u0006\u00104\u001a\u00020\u000fH\u0017J \u0010>\u001a\u00020.2\u0006\u0010?\u001a\u00020@2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u0018H\u0002J\b\u0010B\u001a\u00020.H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020\"¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010'\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082.¢\u0006\u0002\n\u0000¨\u0006E"}, d2 = {"Lcom/kelocube/mirrorclient/Input;", "Landroid/view/View$OnTouchListener;", "Landroid/view/View$OnHoverListener;", "context", "Landroid/content/Context;", "callbacks", "Lcom/kelocube/mirrorclient/Input$Callbacks;", "(Landroid/content/Context;Lcom/kelocube/mirrorclient/Input$Callbacks;)V", "area", "Landroid/graphics/Rect;", "buttonDown", "", "handler", "Landroid/os/Handler;", "lastTouchMove", "Landroid/view/MotionEvent;", "lastTouchMoveTime", "", "marked", "getMarked", "()Z", "setMarked", "(Z)V", "mode", "", "getMode", "()I", "setMode", "(I)V", "penContact", "penEmulator", "Lcom/kelocube/mirrorclient/PenEmulator;", "penHover", "scaler", "Lcom/kelocube/mirrorclient/CanvasScaler;", "getScaler", "()Lcom/kelocube/mirrorclient/CanvasScaler;", "sonarPen", "Lcom/kelocube/mirrorclient/SonarPenInput;", "stylusType", "getStylusType", "timer", "Ljava/util/Timer;", "view", "Landroid/view/View;", "close", "", "configure", "handleKeyEvent", "keyEvent", "Landroid/view/KeyEvent;", "handlePenEvent", "e", "reorder", "handleTouchEvent", "save", "inflate", "layout", "activeArea", "onHover", "p0", "onTouch", "serializeTouchEvent", "to", "Ljava/nio/ByteBuffer;", "i", "tick", "Callbacks", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Input implements View.OnTouchListener, View.OnHoverListener {
    public static final int STYLUS_EMULATE = 1;
    public static final int STYLUS_NATIVE = 0;
    public static final int STYLUS_SONARPEN = 2;
    public static final int TOUCH_EMULATE = -1;
    public static final int TOUCH_FORWARD = 0;
    public static final int TOUCH_NONE = 1;
    public static final int TOUCH_SCALE = 2;
    private Rect area;
    private boolean buttonDown;
    private final Callbacks callbacks;
    private final Context context;
    private final Handler handler;
    private MotionEvent lastTouchMove;
    private long lastTouchMoveTime;
    private boolean marked;
    private int mode;
    private boolean penContact;
    private final PenEmulator penEmulator;
    private boolean penHover;
    private final CanvasScaler scaler;
    private final SonarPenInput sonarPen;
    private final int stylusType;
    private final Timer timer;
    private View view;

    public Input(Context context, Callbacks callbacks) {
        String[] strArr;
        String[] strArr2;
        String str;
        Integer intOrNull;
        Integer intOrNull2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.context = context;
        this.callbacks = callbacks;
        this.penEmulator = new PenEmulator();
        this.scaler = new CanvasScaler(callbacks.getScaler());
        Timer timer = new Timer();
        this.timer = timer;
        this.handler = new Handler(Looper.getMainLooper());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString(PrefsKt.PREF_STYLUS_TYPE, null);
        int iIntValue = 0;
        int iIntValue2 = (string == null || (intOrNull2 = StringsKt.toIntOrNull(string)) == null) ? 0 : intOrNull2.intValue();
        this.stylusType = iIntValue2;
        if (iIntValue2 == 1 || iIntValue2 == 2) {
            iIntValue = -1;
        } else {
            Set<String> stringSet = defaultSharedPreferences.getStringSet("session_menu_modes", ArraysKt.toSet(MDUtil.INSTANCE.getStringArray(context, Integer.valueOf(R.array.pref_session_menu_modes_default))));
            if (stringSet != null && (strArr = (String[]) stringSet.toArray(new String[0])) != null && (strArr2 = (String[]) ArraysKt.sortedArray(strArr)) != null && (str = (String) ArraysKt.firstOrNull(strArr2)) != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
                iIntValue = intOrNull.intValue();
            }
        }
        this.mode = iIntValue;
        this.sonarPen = iIntValue2 == 2 ? new SonarPenInput(context, callbacks.getOnSonarPenConnected()) : null;
        timer.scheduleAtFixedRate(new TimerTask() { // from class: com.kelocube.mirrorclient.Input.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Input.this.tick();
            }
        }, 50L, 50L);
    }

    /* JADX INFO: compiled from: Input.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001Bê\u0003\u0012h\u0010\u0002\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e\u0012h\u0010\u000f\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e\u0012h\u0010\u0010\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e\u0012h\u0010\u0011\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e\u0012%\u0010\u0012\u001a!\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u000b0\bj\u0002`\u0015\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001aRs\u0010\u0011\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR0\u0010\u0012\u001a!\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u000b0\bj\u0002`\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eRs\u0010\u0010\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001cRs\u0010\u000f\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001cR\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0017¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"Rs\u0010\u0002\u001ad\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012A\u0012?\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\bj\u0011`\f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000b0\u0003j\u0002`\u000e¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001cR\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/kelocube/mirrorclient/Input$Callbacks;", "", "onTouchData", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "maxLength", "Lkotlin/Function1;", "Ljava/nio/ByteBuffer;", "to", "", "Lcom/kelocube/mirrorclient/DataCallback;", "callback", "Lcom/kelocube/mirrorclient/OnDataHandler;", "onPenData", "onKeyboardData", "onConfigData", "onError", "Lcom/kelocube/mirrorclient/AppException;", "e", "Lcom/kelocube/mirrorclient/ErrorHandler;", "onSonarPenConnected", "Lkotlin/Function0;", "scaler", "Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;)V", "getOnConfigData", "()Lkotlin/jvm/functions/Function2;", "getOnError", "()Lkotlin/jvm/functions/Function1;", "getOnKeyboardData", "getOnPenData", "getOnSonarPenConnected", "()Lkotlin/jvm/functions/Function0;", "getOnTouchData", "getScaler", "()Lcom/kelocube/mirrorclient/CanvasScaler$Callbacks;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onConfigData;
        private final Function1<AppException, Unit> onError;
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onKeyboardData;
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onPenData;
        private final Function0<Unit> onSonarPenConnected;
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onTouchData;
        private final CanvasScaler.Callbacks scaler;

        /* JADX WARN: Multi-variable type inference failed */
        public Callbacks(Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onTouchData, Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onPenData, Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onKeyboardData, Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onConfigData, Function1<? super AppException, Unit> onError, Function0<Unit> onSonarPenConnected, CanvasScaler.Callbacks scaler) {
            Intrinsics.checkNotNullParameter(onTouchData, "onTouchData");
            Intrinsics.checkNotNullParameter(onPenData, "onPenData");
            Intrinsics.checkNotNullParameter(onKeyboardData, "onKeyboardData");
            Intrinsics.checkNotNullParameter(onConfigData, "onConfigData");
            Intrinsics.checkNotNullParameter(onError, "onError");
            Intrinsics.checkNotNullParameter(onSonarPenConnected, "onSonarPenConnected");
            Intrinsics.checkNotNullParameter(scaler, "scaler");
            this.onTouchData = onTouchData;
            this.onPenData = onPenData;
            this.onKeyboardData = onKeyboardData;
            this.onConfigData = onConfigData;
            this.onError = onError;
            this.onSonarPenConnected = onSonarPenConnected;
            this.scaler = scaler;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnTouchData() {
            return this.onTouchData;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnPenData() {
            return this.onPenData;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnKeyboardData() {
            return this.onKeyboardData;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnConfigData() {
            return this.onConfigData;
        }

        public final Function1<AppException, Unit> getOnError() {
            return this.onError;
        }

        public final Function0<Unit> getOnSonarPenConnected() {
            return this.onSonarPenConnected;
        }

        public final CanvasScaler.Callbacks getScaler() {
            return this.scaler;
        }
    }

    public final int getMode() {
        return this.mode;
    }

    public final void setMode(int i) {
        this.mode = i;
    }

    public final int getStylusType() {
        return this.stylusType;
    }

    public final CanvasScaler getScaler() {
        return this.scaler;
    }

    public final void close() {
        SonarPenInput sonarPenInput = this.sonarPen;
        if (sonarPenInput != null) {
            sonarPenInput.close();
        }
        this.timer.cancel();
        MotionEvent motionEvent = this.lastTouchMove;
        if (motionEvent != null) {
            motionEvent.recycle();
        }
        this.lastTouchMove = null;
    }

    public final void inflate(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
    }

    public final void layout(Rect activeArea) {
        Intrinsics.checkNotNullParameter(activeArea, "activeArea");
        this.area = activeArea;
        this.scaler.resize(activeArea);
        View view = this.view;
        View view2 = null;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("view");
            view = null;
        }
        view.setOnTouchListener(this);
        View view3 = this.view;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("view");
        } else {
            view2 = view3;
        }
        view2.setOnHoverListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void serializeTouchEvent(ByteBuffer to, MotionEvent e, int i) {
        byte pointerId = (byte) e.getPointerId(i);
        byte b = 1;
        if (e.getActionMasked() == 1 || (e.getActionMasked() == 6 && i == e.getActionIndex())) {
            b = 0;
        }
        float x = e.getX(i);
        Rect rect = this.area;
        Rect rect2 = null;
        if (rect == null) {
            Intrinsics.throwUninitializedPropertyAccessException("area");
            rect = null;
        }
        float f = x - rect.left;
        Rect rect3 = this.area;
        if (rect3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("area");
            rect3 = null;
        }
        float fWidth = f / rect3.width();
        float y = e.getY(i);
        Rect rect4 = this.area;
        if (rect4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("area");
            rect4 = null;
        }
        float f2 = y - rect4.top;
        Rect rect5 = this.area;
        if (rect5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("area");
        } else {
            rect2 = rect5;
        }
        float fHeight = f2 / rect2.height();
        float f3 = 32767;
        to.put(pointerId);
        to.put(b);
        to.putShort((short) (UtilKt.saturate(fWidth) * f3));
        to.putShort((short) (UtilKt.saturate(fHeight) * f3));
        to.putShort((short) (UtilKt.saturate(e.getSize()) * f3));
    }

    static /* synthetic */ void handleTouchEvent$default(Input input, MotionEvent motionEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        input.handleTouchEvent(motionEvent, z);
    }

    private final void handleTouchEvent(final MotionEvent e, boolean save) {
        int actionMasked = e.getActionMasked();
        if (actionMasked == 0 || actionMasked == 1) {
            this.callbacks.getOnTouchData().invoke(9, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Input.handleTouchEvent.1
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
                public final void invoke2(ByteBuffer to) {
                    Intrinsics.checkNotNullParameter(to, "to");
                    to.put((byte) 1);
                    Input input = Input.this;
                    MotionEvent motionEvent = e;
                    input.serializeTouchEvent(to, motionEvent, motionEvent.getActionIndex());
                }
            });
        } else if (actionMasked == 2 || actionMasked == 5 || actionMasked == 6) {
            final int pointerCount = e.getPointerCount();
            this.callbacks.getOnTouchData().invoke(Integer.valueOf((pointerCount * 8) + 1), new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Input.handleTouchEvent.2
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
                public final void invoke2(ByteBuffer to) {
                    Intrinsics.checkNotNullParameter(to, "to");
                    to.put((byte) pointerCount);
                    for (int i = 0; i < pointerCount; i++) {
                        this.serializeTouchEvent(to, e, i);
                    }
                }
            });
        }
        if (save) {
            MotionEvent motionEvent = this.lastTouchMove;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
            this.lastTouchMove = null;
            if (e.getActionMasked() != 1) {
                this.lastTouchMove = MotionEvent.obtainNoHistory(e);
                this.lastTouchMoveTime = System.nanoTime();
            }
        }
    }

    static /* synthetic */ void handlePenEvent$default(Input input, MotionEvent motionEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        input.handlePenEvent(motionEvent, z);
    }

    private final void handlePenEvent(final MotionEvent e, boolean reorder) {
        int iTranslateSamsungAction = InputKt.translateSamsungAction(e.getActionMasked());
        final Ref.IntRef intRef = new Ref.IntRef();
        SonarPenInput sonarPenInput = this.sonarPen;
        if (sonarPenInput != null) {
            sonarPenInput.handleEvent(e);
            if (this.sonarPen.getPenID() != -1) {
                intRef.element = e.findPointerIndex(this.sonarPen.getPenID());
            }
            if (intRef.element == -1) {
                intRef.element = 0;
            }
        } else {
            if (reorder && iTranslateSamsungAction == 10) {
                this.handler.postDelayed(new Runnable() { // from class: com.kelocube.mirrorclient.Input$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Input.handlePenEvent$lambda$0(this.f$0, e);
                    }
                }, 100L);
                return;
            }
            if (iTranslateSamsungAction == 0) {
                this.penContact = true;
                if (this.mode == -1) {
                    this.penEmulator.beginTouch();
                }
            } else if (iTranslateSamsungAction == 1) {
                this.penContact = false;
            } else if (iTranslateSamsungAction == 9) {
                this.penHover = true;
            } else if (iTranslateSamsungAction == 10) {
                this.penHover = false;
            }
            this.buttonDown = e.getButtonState() != 0;
            intRef.element = e.getActionIndex();
        }
        this.callbacks.getOnPenData().invoke(11, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Input.handlePenEvent.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                invoke2(byteBuffer);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v20 */
            /* JADX WARN: Type inference failed for: r4v33 */
            /* JADX WARN: Type inference failed for: r4v34 */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ByteBuffer to) {
                short sSaturate;
                short s;
                short s2;
                Intrinsics.checkNotNullParameter(to, "to");
                float x = e.getX(intRef.element);
                Rect rect = this.area;
                Rect rect2 = null;
                if (rect == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("area");
                    rect = null;
                }
                float f = x - rect.left;
                Rect rect3 = this.area;
                if (rect3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("area");
                    rect3 = null;
                }
                float fWidth = f / rect3.width();
                float y = e.getY(intRef.element);
                Rect rect4 = this.area;
                if (rect4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("area");
                    rect4 = null;
                }
                float f2 = y - rect4.top;
                Rect rect5 = this.area;
                if (rect5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("area");
                } else {
                    rect2 = rect5;
                }
                float fHeight = f2 / rect2.height();
                float f3 = 32767;
                short sSaturate2 = (short) (UtilKt.saturate(fWidth) * f3);
                short sSaturate3 = (short) (UtilKt.saturate(fHeight) * f3);
                if (this.getMode() == -1) {
                    s2 = 0;
                    if (this.sonarPen != null) {
                        sSaturate = (short) (UtilKt.saturate(this.sonarPen.getPressure()) * f3);
                        Input input = this;
                        input.buttonDown = input.sonarPen.getButtonDown();
                        Input input2 = this;
                        input2.penContact = input2.sonarPen.getPenID() != -1;
                    } else {
                        sSaturate = (short) (UtilKt.saturate(this.penEmulator.getPressure(e.getSize())) * f3);
                    }
                    s = 0;
                } else {
                    float axisValue = e.getAxisValue(8);
                    float axisValue2 = e.getAxisValue(25);
                    short sSaturate4 = (short) (UtilKt.saturate((axisValue / 6.2831855f) + 0.5f) * f3);
                    short sSaturate5 = (short) (UtilKt.saturate(axisValue2 / 1.5707964f) * f3);
                    sSaturate = (short) (UtilKt.saturate(e.getPressure()) * f3);
                    s = sSaturate5;
                    s2 = sSaturate4;
                }
                boolean z = this.penContact;
                ?? r4 = z;
                if (this.penHover) {
                    r4 = (z ? 1 : 0) | 2;
                }
                int i = r4;
                if (this.buttonDown) {
                    i = (r4 == true ? 1 : 0) | 4;
                }
                to.put((byte) i);
                to.putShort(sSaturate2);
                to.putShort(sSaturate3);
                to.putShort(sSaturate);
                to.putShort(s2);
                to.putShort(s);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handlePenEvent$lambda$0(Input this$0, MotionEvent e) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e, "$e");
        this$0.handlePenEvent(e, false);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View p0, MotionEvent e) {
        int i;
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            if (e.getToolType(e.getActionIndex()) == 2 || (i = this.mode) == -1) {
                handlePenEvent$default(this, e, false, 2, null);
            } else if (i == 0) {
                handleTouchEvent$default(this, e, false, 2, null);
            } else if (i == 2) {
                this.scaler.onTouchEvent(e);
            }
            return true;
        } catch (AppException e2) {
            this.callbacks.getOnError().invoke(e2);
            return true;
        }
    }

    public final boolean getMarked() {
        return this.marked;
    }

    public final void setMarked(boolean z) {
        this.marked = z;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View p0, MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        try {
            if (e.getToolType(e.getActionIndex()) != 2) {
                return true;
            }
            handlePenEvent$default(this, e, false, 2, null);
            return true;
        } catch (AppException e2) {
            this.callbacks.getOnError().invoke(e2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tick() {
        MotionEvent motionEvent = this.lastTouchMove;
        if (motionEvent == null || System.nanoTime() <= this.lastTouchMoveTime + 50000000) {
            return;
        }
        handleTouchEvent(motionEvent, false);
    }

    public final void configure() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        final int i = PrefsKt.PREF_BUTTON_FUNC_DEFAULT;
        try {
            i = defaultSharedPreferences.getInt(PrefsKt.PREF_BUTTON_FUNC, PrefsKt.PREF_BUTTON_FUNC_DEFAULT);
        } catch (Throwable unused) {
            defaultSharedPreferences.edit().remove(PrefsKt.PREF_BUTTON_FUNC).apply();
        }
        this.callbacks.getOnConfigData().invoke(4, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Input.configure.1
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
                it.putInt(i);
            }
        });
    }

    public final void handleKeyEvent(KeyEvent keyEvent) {
        final int iIndexOf;
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        SonarPenInput sonarPenInput = this.sonarPen;
        if ((sonarPenInput == null || !sonarPenInput.handleKeyEvent(keyEvent)) && (iIndexOf = ArraysKt.indexOf(KeyCodesKt.getKEY_CODES(), Integer.valueOf(keyEvent.getKeyCode()))) > 0 && keyEvent.getRepeatCount() == 0) {
            if (keyEvent.getAction() == 0 || keyEvent.getAction() == 1) {
                final boolean z = keyEvent.getAction() == 0;
                this.callbacks.getOnKeyboardData().invoke(5, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.Input.handleKeyEvent.1
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
                        it.put(z ? (byte) 1 : (byte) 0);
                        it.putInt(iIndexOf);
                    }
                });
            }
        }
    }
}
