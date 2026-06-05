package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.kelocube.mirrorclient.databinding.ViewActionButtonBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ActionButtonView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0017\u0018\u0000 82\u00020\u0001:\u00018B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\u0010\u00100\u001a\u00020\u00132\u0006\u00101\u001a\u00020&H\u0002J\u0018\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u00020%2\u0006\u00101\u001a\u00020&H\u0016J\u0010\u00104\u001a\u00020\u00132\u0006\u00101\u001a\u00020&H\u0016J\u0010\u00105\u001a\u00020\u00132\u0006\u00101\u001a\u00020&H\u0016J\u0010\u00106\u001a\u00020\u00132\u0006\u00101\u001a\u00020&H\u0016J\u0010\u00107\u001a\u00020\u00132\u0006\u00101\u001a\u00020&H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@DX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010 \u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR,\u0010#\u001a\u0014\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00130$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010+\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001d\"\u0004\b-\u0010\u001fR\u0016\u0010.\u001a\n /*\u0004\u0018\u00010%0%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/kelocube/mirrorclient/ui/ActionButtonView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "layout", "", "icon", "Landroid/graphics/drawable/Drawable;", "touchFilter", "(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V", "animScale", "Landroidx/dynamicanimation/animation/SpringAnimation;", "binding", "Lcom/kelocube/mirrorclient/databinding/ViewActionButtonBinding;", "button", "Landroid/widget/ImageButton;", "getButton", "()Landroid/widget/ImageButton;", "value", "", "buttonDown", "getButtonDown", "()Z", "setButtonDown", "(Z)V", "onClick", "Lkotlin/Function0;", "", "getOnClick", "()Lkotlin/jvm/functions/Function0;", "setOnClick", "(Lkotlin/jvm/functions/Function0;)V", "onDown", "getOnDown", "setOnDown", "onTouch", "Lkotlin/Function2;", "Landroid/view/View;", "Landroid/view/MotionEvent;", "getOnTouch", "()Lkotlin/jvm/functions/Function2;", "setOnTouch", "(Lkotlin/jvm/functions/Function2;)V", "onUp", "getOnUp", "setOnUp", "scaleView", "kotlin.jvm.PlatformType", "filterMotionEvent", "e", "onButtonTouch", "view", "onHoverEvent", "onInterceptHoverEvent", "onInterceptTouchEvent", "onTouchEvent", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public class ActionButtonView extends FrameLayout {
    private final SpringAnimation animScale;
    private final ViewActionButtonBinding binding;
    private final ImageButton button;
    private boolean buttonDown;
    private Function0<Unit> onClick;
    private Function0<Unit> onDown;
    private Function2<? super View, ? super MotionEvent, Boolean> onTouch;
    private Function0<Unit> onUp;
    private final View scaleView;
    private final int touchFilter;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int TOUCH_FILTER_TOUCH = 1;
    private static final int TOUCH_FILTER_PEN = 2;

    /* JADX INFO: compiled from: ActionButtonView.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/kelocube/mirrorclient/ui/ActionButtonView$Companion;", "", "()V", "TOUCH_FILTER_PEN", "", "getTOUCH_FILTER_PEN", "()I", "TOUCH_FILTER_TOUCH", "getTOUCH_FILTER_TOUCH", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getTOUCH_FILTER_TOUCH() {
            return ActionButtonView.TOUCH_FILTER_TOUCH;
        }

        public final int getTOUCH_FILTER_PEN() {
            return ActionButtonView.TOUCH_FILTER_PEN;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButtonView(Context context, int i, Drawable drawable, int i2) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.touchFilter = i2;
        this.onTouch = new Function2<View, MotionEvent, Boolean>() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$onTouch$1
            @Override // kotlin.jvm.functions.Function2
            public final Boolean invoke(View view, MotionEvent motionEvent) {
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(motionEvent, "<anonymous parameter 1>");
                return false;
            }
        };
        this.onClick = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$onClick$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.onDown = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$onDown$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.onUp = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$onUp$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ViewActionButtonBinding viewActionButtonBindingInflate = ViewActionButtonBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(viewActionButtonBindingInflate, "inflate(...)");
        this.binding = viewActionButtonBindingInflate;
        ImageButton buttonMain = viewActionButtonBindingInflate.buttonMain;
        Intrinsics.checkNotNullExpressionValue(buttonMain, "buttonMain");
        this.button = buttonMain;
        buttonMain.setImageDrawable(drawable);
        buttonMain.setOnTouchListener(new View.OnTouchListener() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ActionButtonView._init_$lambda$0(this.f$0, view, motionEvent);
            }
        });
        View childAt = getChildAt(0);
        this.scaleView = childAt;
        SpringAnimation springAnimation = new SpringAnimation(childAt, DynamicAnimation.SCALE_X);
        SpringForce springForce = new SpringForce();
        springForce.setStiffness(10000.0f);
        springForce.setDampingRatio(1.0f);
        springAnimation.setSpring(springForce);
        springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.kelocube.mirrorclient.ui.ActionButtonView$$ExternalSyntheticLambda1
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                ActionButtonView.animScale$lambda$3$lambda$2(this.f$0, dynamicAnimation, f, f2);
            }
        });
        this.animScale = springAnimation;
    }

    public final ImageButton getButton() {
        return this.button;
    }

    public final Function2<View, MotionEvent, Boolean> getOnTouch() {
        return this.onTouch;
    }

    public final void setOnTouch(Function2<? super View, ? super MotionEvent, Boolean> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onTouch = function2;
    }

    public final Function0<Unit> getOnClick() {
        return this.onClick;
    }

    public final void setOnClick(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onClick = function0;
    }

    public final Function0<Unit> getOnDown() {
        return this.onDown;
    }

    public final void setOnDown(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onDown = function0;
    }

    public final Function0<Unit> getOnUp() {
        return this.onUp;
    }

    public final void setOnUp(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onUp = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(ActionButtonView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.onButtonTouch(view, motionEvent);
    }

    public boolean onButtonTouch(View view, MotionEvent e) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(e, "e");
        if (this.onTouch.invoke(view, e).booleanValue() && this.buttonDown) {
            setButtonDown(false);
        }
        int action = e.getAction();
        if (action == 0) {
            setButtonDown(true);
            this.onDown.invoke();
        } else if (action == 1 && this.buttonDown) {
            setButtonDown(false);
            this.onClick.invoke();
            this.onUp.invoke();
        }
        return true;
    }

    private final boolean filterMotionEvent(MotionEvent e) {
        if (e.getToolType(e.getActionIndex()) == 2) {
            if ((this.touchFilter & TOUCH_FILTER_PEN) != 0) {
                return true;
            }
        } else if ((this.touchFilter & TOUCH_FILTER_TOUCH) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (filterMotionEvent(e)) {
            return super.onTouchEvent(e);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (filterMotionEvent(e)) {
            return super.onInterceptTouchEvent(e);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (filterMotionEvent(e)) {
            return super.onHoverEvent(e);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (filterMotionEvent(e)) {
            return super.onInterceptHoverEvent(e);
        }
        return true;
    }

    protected final boolean getButtonDown() {
        return this.buttonDown;
    }

    protected final void setButtonDown(boolean z) {
        this.buttonDown = z;
        this.animScale.animateToFinalPosition(z ? 0.9f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void animScale$lambda$3$lambda$2(ActionButtonView this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.scaleView.setScaleY(f);
    }
}
