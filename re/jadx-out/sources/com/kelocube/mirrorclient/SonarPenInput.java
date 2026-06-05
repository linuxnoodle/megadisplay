package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.PreferenceManager;
import com.greenbulb.sonarpen.SonarPenCallBack;
import com.greenbulb.sonarpen.SonarPenUtilities;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SonarPenInput.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 /2\u00020\u0001:\u0001/B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010#\u001a\u00020\u0006J\u000e\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020&J\u000e\u0010'\u001a\u00020\t2\u0006\u0010%\u001a\u00020(J\b\u0010)\u001a\u00020\u0006H\u0016J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0010H\u0016J\u0016\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u0013R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u001e\u0010\u001f\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/kelocube/mirrorclient/SonarPenInput;", "Lcom/greenbulb/sonarpen/SonarPenCallBack;", "context", "Landroid/content/Context;", "onConnected", "Lkotlin/Function0;", "", "(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V", "<set-?>", "", "buttonDown", "getButtonDown", "()Z", "connected", "contactDownTimes", "", "", "", "dpi", "", "getDpi", "()F", "handler", "Landroid/os/Handler;", "maxAmp", "minAmp", "penID", "getPenID", "()I", "pressure", "getPressure", "rawPressure", "getRawPressure", "sonarPen", "Lcom/greenbulb/sonarpen/SonarPenUtilities;", "close", "handleEvent", "e", "Landroid/view/MotionEvent;", "handleKeyEvent", "Landroid/view/KeyEvent;", "onSonarPenButtonPressed", "onSonarPenStatusChange", "state", "updateCalibration", "min", "max", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SonarPenInput implements SonarPenCallBack {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean buttonDown;
    private boolean connected;
    private final Map<Integer, Long> contactDownTimes;
    private final Context context;
    private final float dpi;
    private final Handler handler;
    private float maxAmp;
    private float minAmp;
    private final Function0<Unit> onConnected;
    private int penID;
    private float pressure;
    private float rawPressure;
    private final SonarPenUtilities sonarPen;

    public SonarPenInput(Context context, Function0<Unit> onConnected) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onConnected, "onConnected");
        this.context = context;
        this.onConnected = onConnected;
        SonarPenUtilities sonarPenUtilities = new SonarPenUtilities(context);
        this.sonarPen = sonarPenUtilities;
        this.penID = -1;
        this.contactDownTimes = new LinkedHashMap();
        this.handler = new Handler(Looper.getMainLooper());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getRealMetrics(displayMetrics);
        this.dpi = displayMetrics.densityDpi;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.minAmp = defaultSharedPreferences.getFloat(PrefsKt.PREF_SONARPEN_MIN, 40.0f);
        this.maxAmp = defaultSharedPreferences.getFloat(PrefsKt.PREF_SONARPEN_MAX, 4000.0f);
        sonarPenUtilities.addSonarPenCallback(this);
        sonarPenUtilities.start();
    }

    public final float getDpi() {
        return this.dpi;
    }

    public final int getPenID() {
        return this.penID;
    }

    public final float getPressure() {
        return this.pressure;
    }

    public final float getRawPressure() {
        return this.rawPressure;
    }

    public final boolean getButtonDown() {
        return this.buttonDown;
    }

    /* JADX INFO: compiled from: SonarPenInput.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/kelocube/mirrorclient/SonarPenInput$Companion;", "", "()V", "isEnabled", "", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return Intrinsics.areEqual(PreferenceManager.getDefaultSharedPreferences(context).getString(PrefsKt.PREF_STYLUS_TYPE, null), "2");
        }
    }

    public final void close() {
        this.sonarPen.stop();
    }

    public final void updateCalibration(float min, float max) {
        this.minAmp = min;
        this.maxAmp = max;
    }

    public final void handleEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        float currentAmp = this.connected ? this.sonarPen.getCurrentAmp() : 0.0f;
        this.rawPressure = currentAmp;
        float f = this.minAmp;
        this.pressure = (currentAmp - f) / (this.maxAmp - f);
        int actionMasked = e.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.penID = -1;
                return;
            } else if (actionMasked != 5) {
                if (actionMasked != 6) {
                    return;
                }
                if (this.penID == e.getPointerId(e.getActionIndex())) {
                    this.penID = -1;
                    return;
                }
                return;
            }
        }
        if (this.penID == -1) {
            this.penID = e.getPointerId(e.getActionIndex());
        }
    }

    public final boolean handleKeyEvent(KeyEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (!this.sonarPen.isSonicPenButton(e)) {
            return false;
        }
        if (!this.sonarPen.IsButtonUseSoundWaveDetected()) {
            if (e.getAction() == 0 && e.getRepeatCount() == 0) {
                this.buttonDown = true;
            } else if (e.getAction() == 1) {
                this.buttonDown = false;
            }
        }
        return true;
    }

    @Override // com.greenbulb.sonarpen.SonarPenCallBack
    public void onSonarPenButtonPressed() {
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.SonarPenInput$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SonarPenInput.onSonarPenButtonPressed$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSonarPenButtonPressed$lambda$0(SonarPenInput this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.sonarPen.IsButtonUseSoundWaveDetected()) {
            UtilKt.debugToast(this$0.context, "onSonarPenButtonPressed");
        }
    }

    @Override // com.greenbulb.sonarpen.SonarPenCallBack
    public void onSonarPenStatusChange(final int state) {
        this.handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.SonarPenInput$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SonarPenInput.onSonarPenStatusChange$lambda$1(this.f$0, state);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSonarPenStatusChange$lambda$1(SonarPenInput this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Log.i(UtilKt.getTAG(this$0), "state=" + i);
        switch (i) {
            case 0:
            case 1:
            case 4:
            case 8:
                break;
            case 2:
            case 3:
            case 6:
                if (!this$0.connected) {
                    this$0.connected = true;
                    Toast.makeText(this$0.context, R.string.input_sonarpen_connected, 1).show();
                    this$0.onConnected.invoke();
                }
                break;
            case 5:
            case 7:
                if (this$0.connected) {
                    this$0.connected = false;
                    Toast.makeText(this$0.context, R.string.input_sonarpen_disconnected, 1).show();
                }
                break;
            default:
                UtilKt.debugToast(this$0.context, "onSonarPenStatusChange " + i);
                break;
        }
    }
}
