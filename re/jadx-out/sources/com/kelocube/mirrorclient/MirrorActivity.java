package com.kelocube.mirrorclient;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsetsController;
import androidx.activity.EdgeToEdge;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Observer;
import androidx.preference.PreferenceManager;
import com.kelocube.mirrorclient.MirrorActivity;
import com.kelocube.mirrorclient.MirrorClient;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MirrorActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\b\u0010\u001d\u001a\u00020\u0016H\u0014J\b\u0010\u001e\u001a\u00020\u0016H\u0014J\b\u0010\u001f\u001a\u00020\u0016H\u0014J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0012H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "client", "Lcom/kelocube/mirrorclient/MirrorClient;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "layout", "Landroid/view/ViewGroup;", "nsStartTime", "", "onBackPressedCallback", "Landroidx/activity/OnBackPressedCallback;", "prefs", "Landroid/content/SharedPreferences;", "dispatchKeyEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "finishWithResult", "", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onStart", "onStop", "onWindowFocusChanged", "hasFocus", "showOnboarding", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MirrorActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String RESULT_EXTRA_ACTIVE_TIME = "active_time";
    public static final String RESULT_EXTRA_ERROR = "error";
    private static int running;
    private MirrorClient client;
    private final Handler handler = new Handler();
    private ViewGroup layout;
    private long nsStartTime;
    private OnBackPressedCallback onBackPressedCallback;
    private SharedPreferences prefs;

    /* JADX INFO: compiled from: MirrorActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MirrorClient.State.values().length];
            try {
                iArr[MirrorClient.State.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MirrorClient.State.Ready.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MirrorClient.State.Closed.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final Handler getHandler() {
        return this.handler;
    }

    /* JADX INFO: compiled from: MirrorActivity.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/kelocube/mirrorclient/MirrorActivity$Companion;", "", "()V", "RESULT_EXTRA_ACTIVE_TIME", "", "RESULT_EXTRA_ERROR", "running", "", "getRunning", "()I", "setRunning", "(I)V", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getRunning() {
            return MirrorActivity.running;
        }

        public final void setRunning(int i) {
            MirrorActivity.running = i;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        ViewGroup anonymousClass2;
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "onCreate begin");
        ViewGroup viewGroup = null;
        if (Build.VERSION.SDK_INT >= 34) {
            EdgeToEdge.enable$default(this, null, null, 3, null);
        }
        super.onCreate(savedInstanceState);
        setResult(-1);
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: com.kelocube.mirrorclient.MirrorActivity.onCreate.1
            {
                super(true);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                MirrorClient mirrorClient = MirrorActivity.this.client;
                if (mirrorClient != null) {
                    mirrorClient.stopSession();
                }
                MirrorActivity.this.finish();
            }
        };
        OnBackPressedDispatcher onBackPressedDispatcher = getOnBackPressedDispatcher();
        MirrorActivity mirrorActivity = this;
        OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
        if (onBackPressedCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException("onBackPressedCallback");
            onBackPressedCallback = null;
        }
        onBackPressedDispatcher.addCallback(mirrorActivity, onBackPressedCallback);
        MirrorActivity mirrorActivity2 = this;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(mirrorActivity2);
        Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(...)");
        this.prefs = defaultSharedPreferences;
        if (Build.VERSION.SDK_INT >= 34) {
            anonymousClass2 = new AnonymousClass2();
        } else {
            anonymousClass2 = new ViewGroup() { // from class: com.kelocube.mirrorclient.MirrorActivity.onCreate.3
                {
                    super(MirrorActivity.this);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean changed, int l, int t, int r, int b) {
                    for (View view : ViewGroupKt.getChildren(this)) {
                        if (view.getVisibility() != 8) {
                            view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY));
                            view.layout(l, t, r, b);
                        }
                    }
                    MirrorClient mirrorClient = MirrorActivity.this.client;
                    if (mirrorClient != null) {
                        mirrorClient.layout();
                    }
                }
            };
        }
        this.layout = anonymousClass2;
        MirrorClient client = App.INSTANCE.getInstance().getListener().getClient();
        this.client = client;
        if (client == null) {
            setResult(0, new Intent().putExtra(RESULT_EXTRA_ERROR, 1));
            finish();
            return;
        }
        Intrinsics.checkNotNull(client);
        client.getState().observe(mirrorActivity, new Observer() { // from class: com.kelocube.mirrorclient.MirrorActivity$$ExternalSyntheticLambda4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MirrorActivity.onCreate$lambda$0(this.f$0, (MirrorClient.State) obj);
            }
        });
        getWindow().addFlags(1024);
        getWindow().addFlags(128);
        if (Build.VERSION.SDK_INT >= 24) {
            getWindow().setSustainedPerformanceMode(true);
        }
        setRequestedOrientation(Prefs.INSTANCE.getOrientation(mirrorActivity2));
        ViewGroup viewGroup2 = this.layout;
        if (viewGroup2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layout");
        } else {
            viewGroup = viewGroup2;
        }
        setContentView(viewGroup);
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "onCreate end");
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.MirrorActivity$onCreate$2, reason: invalid class name */
    /* JADX INFO: compiled from: MirrorActivity.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"com/kelocube/mirrorclient/MirrorActivity$onCreate$2", "Landroid/view/ViewGroup;", "lastInsets", "Landroidx/core/view/WindowInsetsCompat;", "onLayout", "", "changed", "", "l", "", "t", "r", "b", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class AnonymousClass2 extends ViewGroup {
        private WindowInsetsCompat lastInsets;

        AnonymousClass2() {
            super(MirrorActivity.this);
            WindowInsetsCompat CONSUMED = WindowInsetsCompat.CONSUMED;
            Intrinsics.checkNotNullExpressionValue(CONSUMED, "CONSUMED");
            this.lastInsets = CONSUMED;
            ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: com.kelocube.mirrorclient.MirrorActivity$onCreate$2$$ExternalSyntheticLambda0
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return MirrorActivity.AnonymousClass2._init_$lambda$0(this.f$0, view, windowInsetsCompat);
                }
            });
            setFocusableInTouchMode(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WindowInsetsCompat _init_$lambda$0(AnonymousClass2 this$0, View view, WindowInsetsCompat insets) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(insets, "insets");
            this$0.lastInsets = insets;
            this$0.requestLayout();
            return WindowInsetsCompat.CONSUMED;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            Insets insets;
            Insets insets2 = this.lastInsets.getInsets(WindowInsetsCompat.Type.systemBars());
            Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
            if (Build.VERSION.SDK_INT >= 28) {
                insets = this.lastInsets.getInsets(WindowInsetsCompat.Type.displayCutout());
            } else {
                insets = Insets.NONE;
            }
            Intrinsics.checkNotNull(insets);
            int iMax = l + Math.max(insets2.left, insets.left);
            int iMax2 = t + Math.max(insets2.top, insets.top);
            int iMax3 = r - Math.max(insets2.right, insets.right);
            int iMax4 = b - Math.max(insets2.bottom, insets.bottom);
            int i = iMax3 - iMax;
            int i2 = iMax4 - iMax2;
            for (View view : ViewGroupKt.getChildren(this)) {
                if (view.getVisibility() != 8) {
                    view.measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i2, BasicMeasure.EXACTLY));
                    view.layout(iMax, iMax2, iMax3, iMax4);
                }
            }
            MirrorClient mirrorClient = MirrorActivity.this.client;
            if (mirrorClient != null) {
                mirrorClient.layout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(MirrorActivity this$0, MirrorClient.State state) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
        if (i == 1) {
            this$0.nsStartTime = System.nanoTime();
            this$0.showOnboarding();
        } else if (i != 2) {
            if (i != 3) {
                return;
            }
            this$0.finishWithResult();
        } else if (this$0.nsStartTime != 0) {
            this$0.finishWithResult();
        }
    }

    private final void showOnboarding() {
        MirrorClient mirrorClient = this.client;
        if (mirrorClient != null) {
            mirrorClient.showOnboarding();
        }
    }

    private final void finishWithResult() {
        AppException error;
        MirrorClient mirrorClient = this.client;
        int type = (mirrorClient == null || (error = mirrorClient.getError()) == null) ? 1 : error.getType();
        setResult(type == 1 ? -1 : 0, new Intent().putExtra(RESULT_EXTRA_ERROR, type).putExtra(RESULT_EXTRA_ACTIVE_TIME, this.nsStartTime != 0 ? System.nanoTime() - this.nsStartTime : 0L));
        finish();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            if (Build.VERSION.SDK_INT >= 34) {
                WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
                WindowInsetsController insetsController = getWindow().getInsetsController();
                if (insetsController != null) {
                    insetsController.hide(WindowInsetsCompat.Type.systemBars());
                    insetsController.setSystemBarsBehavior(2);
                    return;
                }
                return;
            }
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() == 4) {
            return super.dispatchKeyEvent(event);
        }
        MirrorClient mirrorClient = this.client;
        if (mirrorClient == null) {
            return true;
        }
        mirrorClient.handleKeyEvent(event);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        MirrorClient mirrorClient = this.client;
        if (mirrorClient != null) {
            mirrorClient.configChanged(newConfig);
        }
        MirrorClient mirrorClient2 = this.client;
        if (mirrorClient2 != null) {
            mirrorClient2.layout();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "onDestroy");
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() throws IOException {
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "onStart");
        MirrorActivity mirrorActivity = this;
        UtilKt.enableSamsungCrap(mirrorActivity, false);
        App.INSTANCE.getInstance().getListener().setEnabled(false);
        ViewGroup viewGroup = this.layout;
        ViewGroup viewGroup2 = null;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("layout");
            viewGroup = null;
        }
        viewGroup.removeAllViews();
        MirrorClient mirrorClient = this.client;
        if (mirrorClient != null) {
            ViewGroup viewGroup3 = this.layout;
            if (viewGroup3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("layout");
            } else {
                viewGroup2 = viewGroup3;
            }
            mirrorClient.startSession(mirrorActivity, viewGroup2);
        }
        super.onStart();
        running++;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        DiagnosticsKt.traceMessage(UtilKt.getTAG(this), "onStop");
        UtilKt.enableSamsungCrap(this, true);
        MirrorClient mirrorClient = this.client;
        if (mirrorClient != null) {
            mirrorClient.stopSession();
        }
        finish();
        super.onStop();
        running--;
    }
}
