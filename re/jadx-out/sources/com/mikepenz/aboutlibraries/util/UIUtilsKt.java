package com.mikepenz.aboutlibraries.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.mikepenz.aboutlibraries.R;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UIUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a$\u0010\u0007\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tH\u0001\u001a\u001a\u0010\n\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a\u001a\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a$\u0010\f\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tH\u0001\u001a\u0018\u0010\r\u001a\u00020\u0005*\u00020\u00032\n\u0010\u000e\u001a\u00020\u000f\"\u00020\tH\u0001\u001a\u0016\u0010\u0010\u001a\u00020\t*\u00020\u00112\b\b\u0001\u0010\u0012\u001a\u00020\tH\u0001\u001a\u0014\u0010\u0013\u001a\u00020\t*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\tH\u0000\u001a \u0010\u0013\u001a\u00020\t*\u00020\u00112\b\b\u0001\u0010\u0014\u001a\u00020\t2\b\b\u0003\u0010\u0015\u001a\u00020\tH\u0007\u001a\f\u0010\u0016\u001a\u00020\u0005*\u00020\u0003H\u0001\u001aX\u0010\u0017\u001a\u0002H\u0018\"\u0004\b\u0000\u0010\u0018*\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u000f2\b\b\u0002\u0010\u001a\u001a\u00020\t2\b\b\u0002\u0010\u001b\u001a\u00020\t2!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u0002H\u00180\u001dH\u0000¢\u0006\u0002\u0010\"¨\u0006#"}, d2 = {"recordInitialPaddingForView", "Lcom/mikepenz/aboutlibraries/util/InitialPadding;", "view", "Landroid/view/View;", "applyDarkEdgeSystemUi", "", "Landroid/app/Activity;", "applyDarkSystemUi", "additionalFlags", "", "applyEdgeSystemUi", "applyLightEdgeSystemUi", "applyLightSystemUi", "doOnApplySystemWindowInsets", "gravities", "", "getSupportColor", "Landroid/content/Context;", "res", "getThemeColor", "attr", "def", "requestApplyInsetsWhenAttached", "resolveStyledValue", "T", "attrs", "defStyleAttr", "defStyleRes", "resolver", "Lkotlin/Function1;", "Landroid/content/res/TypedArray;", "Lkotlin/ParameterName;", "name", "typedArray", "(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "aboutlibraries"}, k = 2, mv = {1, 1, 16})
public final class UIUtilsKt {
    public static final int getThemeColor(Context getThemeColor, int i) {
        Intrinsics.checkParameterIsNotNull(getThemeColor, "$this$getThemeColor");
        TypedValue typedValue = new TypedValue();
        if (!getThemeColor.getTheme().resolveAttribute(i, typedValue, true)) {
            return 0;
        }
        if (typedValue.resourceId != 0) {
            return ContextCompat.getColor(getThemeColor, typedValue.resourceId);
        }
        return typedValue.data;
    }

    public static /* synthetic */ void applyLightSystemUi$default(Activity activity, View view, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            view = null;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        applyLightSystemUi(activity, view, i);
    }

    public static final void applyLightSystemUi(Activity activity, View view, int i) {
        int systemUiVisibility;
        if (activity == null || Build.VERSION.SDK_INT < 23) {
            return;
        }
        if (view != null) {
            systemUiVisibility = view.getSystemUiVisibility();
        } else {
            Window window = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "window");
            View decorView = window.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
            systemUiVisibility = decorView.getSystemUiVisibility();
        }
        int i2 = systemUiVisibility | 8192;
        if (Build.VERSION.SDK_INT >= 26) {
            i2 = systemUiVisibility | 8208;
        }
        int i3 = i | i2;
        if (view != null) {
            view.setSystemUiVisibility(i3);
        }
        if (view == null) {
            Window window2 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window2, "window");
            View decorView2 = window2.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(decorView2, "window.decorView");
            decorView2.setSystemUiVisibility(i3);
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(activity, R.style.Theme_MaterialComponents_Light);
        Window window3 = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window3, "this.window");
        ContextThemeWrapper contextThemeWrapper2 = contextThemeWrapper;
        window3.setStatusBarColor(getThemeColor(contextThemeWrapper2, R.attr.colorSurface));
        Window window4 = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window4, "this.window");
        window4.setNavigationBarColor(getThemeColor(contextThemeWrapper2, android.R.attr.colorBackground));
        if (Build.VERSION.SDK_INT >= 28) {
            Window window5 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window5, "this.window");
            window5.setNavigationBarDividerColor(getThemeColor(contextThemeWrapper2, android.R.attr.colorControlHighlight));
        }
    }

    public static /* synthetic */ void applyDarkSystemUi$default(Activity activity, View view, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            view = null;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        applyDarkSystemUi(activity, view, i);
    }

    public static final void applyDarkSystemUi(Activity activity, View view, int i) {
        int systemUiVisibility;
        if (activity == null || Build.VERSION.SDK_INT < 23) {
            return;
        }
        if (view != null) {
            systemUiVisibility = view.getSystemUiVisibility();
        } else {
            Window window = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "window");
            View decorView = window.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
            systemUiVisibility = decorView.getSystemUiVisibility();
        }
        int i2 = systemUiVisibility & (-8193);
        if (Build.VERSION.SDK_INT >= 26) {
            i2 = systemUiVisibility & (-8209);
        }
        int i3 = i | i2;
        if (view != null) {
            view.setSystemUiVisibility(i3);
        }
        if (view == null) {
            Window window2 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window2, "window");
            View decorView2 = window2.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(decorView2, "window.decorView");
            decorView2.setSystemUiVisibility(i3);
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(activity, R.style.Theme_MaterialComponents);
        Window window3 = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window3, "this.window");
        ContextThemeWrapper contextThemeWrapper2 = contextThemeWrapper;
        window3.setStatusBarColor(getThemeColor(contextThemeWrapper2, R.attr.colorSurface));
        Window window4 = activity.getWindow();
        Intrinsics.checkExpressionValueIsNotNull(window4, "this.window");
        window4.setNavigationBarColor(getThemeColor(contextThemeWrapper2, android.R.attr.colorBackground));
        if (Build.VERSION.SDK_INT >= 28) {
            Window window5 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window5, "this.window");
            window5.setNavigationBarDividerColor(getThemeColor(contextThemeWrapper2, android.R.attr.colorControlHighlight));
        }
    }

    public static /* synthetic */ void applyLightEdgeSystemUi$default(Activity activity, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            view = null;
        }
        applyLightEdgeSystemUi(activity, view);
    }

    public static final void applyLightEdgeSystemUi(Activity activity, View view) {
        if (activity != null) {
            applyLightSystemUi(activity, view, 1792);
            Window window = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "this.window");
            Activity activity2 = activity;
            window.setStatusBarColor(getSupportColor(activity2, R.color.immersive_bars));
            Window window2 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window2, "this.window");
            window2.setNavigationBarColor(getSupportColor(activity2, R.color.nav_bar));
            if (Build.VERSION.SDK_INT >= 28) {
                Window window3 = activity.getWindow();
                Intrinsics.checkExpressionValueIsNotNull(window3, "this.window");
                window3.setNavigationBarDividerColor(getSupportColor(activity2, R.color.nav_bar));
            }
        }
    }

    public static /* synthetic */ void applyDarkEdgeSystemUi$default(Activity activity, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            view = null;
        }
        applyDarkEdgeSystemUi(activity, view);
    }

    public static final void applyDarkEdgeSystemUi(Activity activity, View view) {
        if (activity != null) {
            applyDarkSystemUi(activity, view, 1792);
            Window window = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "this.window");
            Activity activity2 = activity;
            window.setStatusBarColor(getSupportColor(activity2, R.color.dark_immersive_bars));
            Window window2 = activity.getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window2, "this.window");
            window2.setNavigationBarColor(getSupportColor(activity2, R.color.dark_nav_bar));
            if (Build.VERSION.SDK_INT >= 28) {
                Window window3 = activity.getWindow();
                Intrinsics.checkExpressionValueIsNotNull(window3, "this.window");
                window3.setNavigationBarDividerColor(getSupportColor(activity2, R.color.dark_nav_bar));
            }
        }
    }

    public static /* synthetic */ void applyEdgeSystemUi$default(Activity activity, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            view = null;
        }
        applyEdgeSystemUi(activity, view);
    }

    public static final void applyEdgeSystemUi(Activity activity, View view) {
        if (activity != null) {
            Resources resources = activity.getResources();
            Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
            if ((resources.getConfiguration().uiMode & 48) == 32) {
                applyDarkEdgeSystemUi(activity, view);
            } else {
                applyLightEdgeSystemUi(activity, view);
            }
        }
    }

    public static final int getSupportColor(Context getSupportColor, int i) {
        Intrinsics.checkParameterIsNotNull(getSupportColor, "$this$getSupportColor");
        return ContextCompat.getColor(getSupportColor, i);
    }

    private static final InitialPadding recordInitialPaddingForView(View view) {
        return new InitialPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
    }

    public static final void doOnApplySystemWindowInsets(View doOnApplySystemWindowInsets, final int... gravities) {
        Intrinsics.checkParameterIsNotNull(doOnApplySystemWindowInsets, "$this$doOnApplySystemWindowInsets");
        Intrinsics.checkParameterIsNotNull(gravities, "gravities");
        final InitialPadding initialPaddingRecordInitialPaddingForView = recordInitialPaddingForView(doOnApplySystemWindowInsets);
        doOnApplySystemWindowInsets.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.mikepenz.aboutlibraries.util.UIUtilsKt.doOnApplySystemWindowInsets.1
            /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
            @Override // android.view.View.OnApplyWindowInsetsListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final android.view.WindowInsets onApplyWindowInsets(android.view.View r8, android.view.WindowInsets r9) {
                /*
                    r7 = this;
                    int[] r0 = r1
                    int r1 = r0.length
                    r2 = 0
                L4:
                    if (r2 >= r1) goto Lad
                    r3 = r0[r2]
                    r4 = 3
                    java.lang.String r5 = "insets"
                    java.lang.String r6 = "v"
                    if (r3 == r4) goto L89
                    r4 = 5
                    if (r3 == r4) goto L68
                    r4 = 48
                    if (r3 == r4) goto L47
                    r4 = 80
                    if (r3 == r4) goto L26
                    r4 = 8388611(0x800003, float:1.1754948E-38)
                    if (r3 == r4) goto L89
                    r4 = 8388613(0x800005, float:1.175495E-38)
                    if (r3 == r4) goto L68
                    goto La9
                L26:
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r6)
                    com.mikepenz.aboutlibraries.util.InitialPadding r3 = r2
                    int r3 = r3.getBottom()
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r9, r5)
                    int r4 = r9.getSystemWindowInsetBottom()
                    int r3 = r3 + r4
                    int r4 = r8.getPaddingLeft()
                    int r5 = r8.getPaddingTop()
                    int r6 = r8.getPaddingRight()
                    r8.setPadding(r4, r5, r6, r3)
                    goto La9
                L47:
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r6)
                    com.mikepenz.aboutlibraries.util.InitialPadding r3 = r2
                    int r3 = r3.getTop()
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r9, r5)
                    int r4 = r9.getSystemWindowInsetTop()
                    int r3 = r3 + r4
                    int r4 = r8.getPaddingLeft()
                    int r5 = r8.getPaddingRight()
                    int r6 = r8.getPaddingBottom()
                    r8.setPadding(r4, r3, r5, r6)
                    goto La9
                L68:
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r6)
                    com.mikepenz.aboutlibraries.util.InitialPadding r3 = r2
                    int r3 = r3.getRight()
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r9, r5)
                    int r4 = r9.getSystemWindowInsetRight()
                    int r3 = r3 + r4
                    int r4 = r8.getPaddingLeft()
                    int r5 = r8.getPaddingTop()
                    int r6 = r8.getPaddingBottom()
                    r8.setPadding(r4, r5, r3, r6)
                    goto La9
                L89:
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r6)
                    com.mikepenz.aboutlibraries.util.InitialPadding r3 = r2
                    int r3 = r3.getLeft()
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r9, r5)
                    int r4 = r9.getSystemWindowInsetLeft()
                    int r3 = r3 + r4
                    int r4 = r8.getPaddingTop()
                    int r5 = r8.getPaddingRight()
                    int r6 = r8.getPaddingBottom()
                    r8.setPadding(r3, r4, r5, r6)
                La9:
                    int r2 = r2 + 1
                    goto L4
                Lad:
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.aboutlibraries.util.UIUtilsKt.AnonymousClass1.onApplyWindowInsets(android.view.View, android.view.WindowInsets):android.view.WindowInsets");
            }
        });
        requestApplyInsetsWhenAttached(doOnApplySystemWindowInsets);
    }

    public static final void requestApplyInsetsWhenAttached(View requestApplyInsetsWhenAttached) {
        Intrinsics.checkParameterIsNotNull(requestApplyInsetsWhenAttached, "$this$requestApplyInsetsWhenAttached");
        if (requestApplyInsetsWhenAttached.isAttachedToWindow()) {
            requestApplyInsetsWhenAttached.requestApplyInsets();
        } else {
            requestApplyInsetsWhenAttached.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.mikepenz.aboutlibraries.util.UIUtilsKt.requestApplyInsetsWhenAttached.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View v) {
                    Intrinsics.checkParameterIsNotNull(v, "v");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View v) {
                    Intrinsics.checkParameterIsNotNull(v, "v");
                    v.removeOnAttachStateChangeListener(this);
                    v.requestApplyInsets();
                }
            });
        }
    }

    public static /* synthetic */ Object resolveStyledValue$default(Context context, int[] iArr, int i, int i2, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            iArr = R.styleable.AboutLibraries;
            Intrinsics.checkExpressionValueIsNotNull(iArr, "R.styleable.AboutLibraries");
        }
        if ((i3 & 2) != 0) {
            i = R.attr.aboutLibrariesStyle;
        }
        if ((i3 & 4) != 0) {
            i2 = R.style.AboutLibrariesStyle;
        }
        return resolveStyledValue(context, iArr, i, i2, function1);
    }

    public static final <T> T resolveStyledValue(Context resolveStyledValue, int[] attrs, int i, int i2, Function1<? super TypedArray, ? extends T> resolver) {
        Intrinsics.checkParameterIsNotNull(resolveStyledValue, "$this$resolveStyledValue");
        Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        Intrinsics.checkParameterIsNotNull(resolver, "resolver");
        TypedArray a = resolveStyledValue.obtainStyledAttributes(null, attrs, i, i2);
        Intrinsics.checkExpressionValueIsNotNull(a, "a");
        T tInvoke = resolver.invoke(a);
        a.recycle();
        return tInvoke;
    }

    public static /* synthetic */ int getThemeColor$default(Context context, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return getThemeColor(context, i, i2);
    }

    public static final int getThemeColor(Context getThemeColor, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(getThemeColor, "$this$getThemeColor");
        TypedValue typedValue = new TypedValue();
        return getThemeColor.getTheme().resolveAttribute(i, typedValue, true) ? typedValue.resourceId != 0 ? ResourcesCompat.getColor(getThemeColor.getResources(), typedValue.resourceId, getThemeColor.getTheme()) : typedValue.data : i2;
    }
}
