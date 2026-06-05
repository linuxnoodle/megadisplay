package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.preference.PreferenceManager;
import com.google.android.material.slider.RangeSlider;
import com.kelocube.mirrorclient.PrefsKt;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.SonarPenInput;
import com.kelocube.mirrorclient.databinding.ActivityCalibrateBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: CalibrateStylusActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0015H\u0014J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0012\u0010\u001c\u001a\u00020\u00152\b\b\u0002\u0010\u001d\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "binding", "Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;", "isReset", "", "manual", "maxValue", "", "minValue", "prefs", "Landroid/content/SharedPreferences;", "root", "Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;", "sonarPen", "Lcom/kelocube/mirrorclient/SonarPenInput;", "f", "x", "fi", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onTouch", "e", "Landroid/view/MotionEvent;", "valuesUpdated", "updateSlider", "DrawView", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class CalibrateStylusActivity extends AppCompatActivity {
    private ActivityCalibrateBinding binding;
    private boolean isReset;
    private boolean manual;
    private float maxValue;
    private float minValue;
    private SharedPreferences prefs;
    private DrawView root;
    private SonarPenInput sonarPen;

    private final float f(float x) {
        return x;
    }

    private final float fi(float x) {
        return x;
    }

    static /* synthetic */ void valuesUpdated$default(CalibrateStylusActivity calibrateStylusActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        calibrateStylusActivity.valuesUpdated(z);
    }

    private final void valuesUpdated(boolean updateSlider) {
        ActivityCalibrateBinding activityCalibrateBinding = this.binding;
        SonarPenInput sonarPenInput = null;
        if (activityCalibrateBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding = null;
        }
        RangeSlider rangeSlider = activityCalibrateBinding.slider;
        Float[] fArr = new Float[2];
        float f = f(this.minValue);
        ActivityCalibrateBinding activityCalibrateBinding2 = this.binding;
        if (activityCalibrateBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding2 = null;
        }
        float valueFrom = activityCalibrateBinding2.slider.getValueFrom();
        ActivityCalibrateBinding activityCalibrateBinding3 = this.binding;
        if (activityCalibrateBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding3 = null;
        }
        fArr[0] = Float.valueOf(RangesKt.coerceIn(f, valueFrom, activityCalibrateBinding3.slider.getValueTo()));
        float f2 = f(this.maxValue);
        ActivityCalibrateBinding activityCalibrateBinding4 = this.binding;
        if (activityCalibrateBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding4 = null;
        }
        float valueFrom2 = activityCalibrateBinding4.slider.getValueFrom();
        ActivityCalibrateBinding activityCalibrateBinding5 = this.binding;
        if (activityCalibrateBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding5 = null;
        }
        fArr[1] = Float.valueOf(RangesKt.coerceIn(f2, valueFrom2, activityCalibrateBinding5.slider.getValueTo()));
        rangeSlider.setValues(fArr);
        SonarPenInput sonarPenInput2 = this.sonarPen;
        if (sonarPenInput2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sonarPen");
        } else {
            sonarPenInput = sonarPenInput2;
        }
        sonarPenInput.updateCalibration(this.minValue, this.maxValue);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityCalibrateBinding activityCalibrateBindingInflate = ActivityCalibrateBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityCalibrateBindingInflate, "inflate(...)");
        this.binding = activityCalibrateBindingInflate;
        ActivityCalibrateBinding activityCalibrateBinding = null;
        if (activityCalibrateBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBindingInflate = null;
        }
        setContentView(activityCalibrateBindingInflate.getRoot());
        CalibrateStylusActivity calibrateStylusActivity = this;
        this.sonarPen = new SonarPenInput(calibrateStylusActivity, new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity.onCreate.1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        });
        ActivityCalibrateBinding activityCalibrateBinding2 = this.binding;
        if (activityCalibrateBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding2 = null;
        }
        DrawView layoutRoot = activityCalibrateBinding2.layoutRoot;
        Intrinsics.checkNotNullExpressionValue(layoutRoot, "layoutRoot");
        this.root = layoutRoot;
        if (layoutRoot == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
            layoutRoot = null;
        }
        SonarPenInput sonarPenInput = this.sonarPen;
        if (sonarPenInput == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sonarPen");
            sonarPenInput = null;
        }
        layoutRoot.setSonarPen(sonarPenInput);
        DrawView drawView = this.root;
        if (drawView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("root");
            drawView = null;
        }
        drawView.setOnTouch(new AnonymousClass2(this));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(calibrateStylusActivity);
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
        this.prefs = defaultSharedPreferences;
        ActivityCalibrateBinding activityCalibrateBinding3 = this.binding;
        if (activityCalibrateBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding3 = null;
        }
        activityCalibrateBinding3.slider.setValueFrom(f(0.0f));
        ActivityCalibrateBinding activityCalibrateBinding4 = this.binding;
        if (activityCalibrateBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding4 = null;
        }
        activityCalibrateBinding4.slider.setValueTo(f(10000.0f));
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        this.minValue = sharedPreferences.getFloat(PrefsKt.PREF_SONARPEN_MIN, 40.0f);
        SharedPreferences sharedPreferences2 = this.prefs;
        if (sharedPreferences2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences2 = null;
        }
        this.maxValue = sharedPreferences2.getFloat(PrefsKt.PREF_SONARPEN_MAX, 4000.0f);
        valuesUpdated$default(this, false, 1, null);
        SharedPreferences sharedPreferences3 = this.prefs;
        if (sharedPreferences3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences3 = null;
        }
        this.isReset = !sharedPreferences3.contains(PrefsKt.PREF_SONARPEN_MIN);
        ActivityCalibrateBinding activityCalibrateBinding5 = this.binding;
        if (activityCalibrateBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding5 = null;
        }
        activityCalibrateBinding5.slider.addOnSliderTouchListener(new RangeSlider.OnSliderTouchListener() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity.onCreate.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.material.slider.BaseOnSliderTouchListener
            public void onStopTrackingTouch(RangeSlider slider) {
                Intrinsics.checkNotNullParameter(slider, "slider");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.material.slider.BaseOnSliderTouchListener
            public void onStartTrackingTouch(RangeSlider slider) {
                Intrinsics.checkNotNullParameter(slider, "slider");
                CalibrateStylusActivity.this.manual = true;
            }
        });
        ActivityCalibrateBinding activityCalibrateBinding6 = this.binding;
        if (activityCalibrateBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding6 = null;
        }
        activityCalibrateBinding6.slider.addOnChangeListener(new RangeSlider.OnChangeListener() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity$$ExternalSyntheticLambda0
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.material.slider.BaseOnChangeListener
            public final void onValueChange(RangeSlider rangeSlider, float f, boolean z) {
                CalibrateStylusActivity.onCreate$lambda$0(this.f$0, rangeSlider, f, z);
            }
        });
        ActivityCalibrateBinding activityCalibrateBinding7 = this.binding;
        if (activityCalibrateBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding7 = null;
        }
        activityCalibrateBinding7.buttonSave.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibrateStylusActivity.onCreate$lambda$1(this.f$0, view);
            }
        });
        ActivityCalibrateBinding activityCalibrateBinding8 = this.binding;
        if (activityCalibrateBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCalibrateBinding8 = null;
        }
        activityCalibrateBinding8.buttonCancel.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibrateStylusActivity.onCreate$lambda$2(this.f$0, view);
            }
        });
        ActivityCalibrateBinding activityCalibrateBinding9 = this.binding;
        if (activityCalibrateBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCalibrateBinding = activityCalibrateBinding9;
        }
        activityCalibrateBinding.buttonReset.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.CalibrateStylusActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CalibrateStylusActivity.onCreate$lambda$3(this.f$0, view);
            }
        });
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.ui.CalibrateStylusActivity$onCreate$2, reason: invalid class name */
    /* JADX INFO: compiled from: CalibrateStylusActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<MotionEvent, Unit> {
        AnonymousClass2(Object obj) {
            super(1, obj, CalibrateStylusActivity.class, "onTouch", "onTouch(Landroid/view/MotionEvent;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
            invoke2(motionEvent);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(MotionEvent p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            ((CalibrateStylusActivity) this.receiver).onTouch(p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(CalibrateStylusActivity this$0, RangeSlider slider, float f, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(slider, "slider");
        Float f2 = slider.getValues().get(0);
        Intrinsics.checkNotNullExpressionValue(f2, "get(...)");
        this$0.minValue = this$0.fi(f2.floatValue());
        Float f3 = slider.getValues().get(1);
        Intrinsics.checkNotNullExpressionValue(f3, "get(...)");
        this$0.maxValue = this$0.fi(f3.floatValue());
        this$0.valuesUpdated(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(CalibrateStylusActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SharedPreferences sharedPreferences = this$0.prefs;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        sharedPreferences.edit().putFloat(PrefsKt.PREF_SONARPEN_MIN, this$0.minValue).putFloat(PrefsKt.PREF_SONARPEN_MAX, this$0.maxValue).apply();
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(CalibrateStylusActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(CalibrateStylusActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.minValue = 40.0f;
        this$0.maxValue = 4000.0f;
        valuesUpdated$default(this$0, false, 1, null);
        this$0.isReset = true;
        this$0.manual = false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        SonarPenInput sonarPenInput = this.sonarPen;
        if (sonarPenInput == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sonarPen");
            sonarPenInput = null;
        }
        sonarPenInput.close();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTouch(android.view.MotionEvent r7) {
        /*
            r6 = this;
            com.kelocube.mirrorclient.SonarPenInput r0 = r6.sonarPen
            java.lang.String r1 = "sonarPen"
            r2 = 0
            if (r0 != 0) goto Lb
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
            r0 = r2
        Lb:
            r0.handleEvent(r7)
            boolean r7 = r6.manual
            r0 = 0
            if (r7 != 0) goto L67
            boolean r7 = r6.isReset
            r3 = 1
            if (r7 != 0) goto L2d
            com.kelocube.mirrorclient.SonarPenInput r7 = r6.sonarPen
            if (r7 != 0) goto L20
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
            r7 = r2
        L20:
            float r7 = r7.getRawPressure()
            float r4 = r6.minValue
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 >= 0) goto L2b
            goto L2d
        L2b:
            r7 = 0
            goto L3c
        L2d:
            com.kelocube.mirrorclient.SonarPenInput r7 = r6.sonarPen
            if (r7 != 0) goto L35
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
            r7 = r2
        L35:
            float r7 = r7.getRawPressure()
            r6.minValue = r7
            r7 = 1
        L3c:
            boolean r4 = r6.isReset
            if (r4 != 0) goto L56
            com.kelocube.mirrorclient.SonarPenInput r4 = r6.sonarPen
            if (r4 != 0) goto L48
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
            r4 = r2
        L48:
            float r4 = r4.getRawPressure()
            float r5 = r6.maxValue
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L53
            goto L56
        L53:
            if (r7 == 0) goto L67
            goto L64
        L56:
            com.kelocube.mirrorclient.SonarPenInput r7 = r6.sonarPen
            if (r7 != 0) goto L5e
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)
            r7 = r2
        L5e:
            float r7 = r7.getRawPressure()
            r6.maxValue = r7
        L64:
            valuesUpdated$default(r6, r0, r3, r2)
        L67:
            r6.isReset = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kelocube.mirrorclient.ui.CalibrateStylusActivity.onTouch(android.view.MotionEvent):void");
    }

    /* JADX INFO: compiled from: CalibrateStylusActivity.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\b\u0010'\u001a\u00020\u0019H\u0014J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u0011H\u0014J(\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\tH\u0014J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0018H\u0017J\b\u00102\u001a\u00020\u0019H\u0002R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, d2 = {"Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;", "Landroid/widget/LinearLayout;", "p0", "Landroid/content/Context;", "(Landroid/content/Context;)V", "p1", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "p2", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "p3", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "backColor", "bitmap", "Landroid/graphics/Bitmap;", "canvas", "Landroid/graphics/Canvas;", "fill", "Landroid/graphics/Paint;", "hue", "", "onTouch", "Lkotlin/Function1;", "Landroid/view/MotionEvent;", "", "getOnTouch", "()Lkotlin/jvm/functions/Function1;", "setOnTouch", "(Lkotlin/jvm/functions/Function1;)V", "sonarPen", "Lcom/kelocube/mirrorclient/SonarPenInput;", "getSonarPen", "()Lcom/kelocube/mirrorclient/SonarPenInput;", "setSonarPen", "(Lcom/kelocube/mirrorclient/SonarPenInput;)V", "stroke", "x0", "y0", "onDetachedFromWindow", "onDraw", "target", "onSizeChanged", "w", "h", "oldw", "oldh", "onTouchEvent", "", "e", "reset", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class DrawView extends LinearLayout {
        private int backColor;
        private Bitmap bitmap;
        private Canvas canvas;
        private Paint fill;
        private float hue;
        private Function1<? super MotionEvent, Unit> onTouch;
        private SonarPenInput sonarPen;
        private Paint stroke;
        private float x0;
        private float y0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DrawView(Context p0) {
            super(p0);
            Intrinsics.checkNotNullParameter(p0, "p0");
            setWillNotDraw(false);
            this.x0 = -1.0f;
            this.y0 = -1.0f;
            this.backColor = ContextCompat.getColor(getContext(), R.color.colorBackground);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.fill = paint;
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.stroke = paint2;
            this.onTouch = CalibrateStylusActivity$DrawView$onTouch$1.INSTANCE;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DrawView(Context p0, AttributeSet p1) {
            super(p0, p1);
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            setWillNotDraw(false);
            this.x0 = -1.0f;
            this.y0 = -1.0f;
            this.backColor = ContextCompat.getColor(getContext(), R.color.colorBackground);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.fill = paint;
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.stroke = paint2;
            this.onTouch = CalibrateStylusActivity$DrawView$onTouch$1.INSTANCE;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DrawView(Context p0, AttributeSet p1, int i) {
            super(p0, p1, i);
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            setWillNotDraw(false);
            this.x0 = -1.0f;
            this.y0 = -1.0f;
            this.backColor = ContextCompat.getColor(getContext(), R.color.colorBackground);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.fill = paint;
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.stroke = paint2;
            this.onTouch = CalibrateStylusActivity$DrawView$onTouch$1.INSTANCE;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DrawView(Context p0, AttributeSet p1, int i, int i2) {
            super(p0, p1, i, i2);
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            setWillNotDraw(false);
            this.x0 = -1.0f;
            this.y0 = -1.0f;
            this.backColor = ContextCompat.getColor(getContext(), R.color.colorBackground);
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.fill = paint;
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeCap(Paint.Cap.ROUND);
            paint2.setColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
            this.stroke = paint2;
            this.onTouch = CalibrateStylusActivity$DrawView$onTouch$1.INSTANCE;
        }

        public final SonarPenInput getSonarPen() {
            return this.sonarPen;
        }

        public final void setSonarPen(SonarPenInput sonarPenInput) {
            this.sonarPen = sonarPenInput;
        }

        public final Function1<MotionEvent, Unit> getOnTouch() {
            return this.onTouch;
        }

        public final void setOnTouch(Function1<? super MotionEvent, Unit> function1) {
            Intrinsics.checkNotNullParameter(function1, "<set-?>");
            this.onTouch = function1;
        }

        private final void reset() {
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.bitmap = null;
            this.canvas = null;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            reset();
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        protected void onSizeChanged(int w, int h, int oldw, int oldh) {
            reset();
            this.bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            Bitmap bitmap = this.bitmap;
            Intrinsics.checkNotNull(bitmap);
            this.canvas = new Canvas(bitmap);
            this.x0 = -1.0f;
            this.y0 = -1.0f;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent e) {
            Intrinsics.checkNotNullParameter(e, "e");
            this.onTouch.invoke(e);
            SonarPenInput sonarPenInput = this.sonarPen;
            Canvas canvas = this.canvas;
            if (sonarPenInput == null || canvas == null) {
                return true;
            }
            if (sonarPenInput.getPenID() != -1) {
                int iFindPointerIndex = e.findPointerIndex(sonarPenInput.getPenID());
                if (iFindPointerIndex >= 0 && iFindPointerIndex < e.getPointerCount()) {
                    canvas.drawColor((this.backColor & ViewCompat.MEASURED_SIZE_MASK) | 268435456);
                    float fCoerceIn = RangesKt.coerceIn(sonarPenInput.getPressure(), 0.0f, 1.0f) * 200;
                    float x = e.getX(iFindPointerIndex);
                    float y = e.getY(iFindPointerIndex);
                    if (this.x0 < 0.0f) {
                        this.x0 = x;
                        this.y0 = y;
                    }
                    this.stroke.setStrokeWidth(fCoerceIn);
                    canvas.drawLine(this.x0, this.y0, x, y, this.stroke);
                    this.x0 = x;
                    this.y0 = y;
                }
            } else {
                this.x0 = -1.0f;
                this.y0 = -1.0f;
            }
            invalidate();
            return true;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onDraw(Canvas target) {
            Intrinsics.checkNotNullParameter(target, "target");
            Bitmap bitmap = this.bitmap;
            if (bitmap != null) {
                target.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
        }
    }
}
