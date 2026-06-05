package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ActionButtonView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;", "Lcom/kelocube/mirrorclient/ui/ActionButtonView;", "context", "Landroid/content/Context;", "layout", "", "icon", "Landroid/graphics/drawable/Drawable;", "touchFilter", "(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V", "onHeld", "Lkotlin/Function0;", "", "getOnHeld", "()Lkotlin/jvm/functions/Function0;", "setOnHeld", "(Lkotlin/jvm/functions/Function0;)V", "releaseHold", "Ljava/lang/Runnable;", "onButtonTouch", "", "view", "Landroid/view/View;", "e", "Landroid/view/MotionEvent;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class HoldableActionButtonView extends ActionButtonView {
    private Function0<Unit> onHeld;
    private Runnable releaseHold;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HoldableActionButtonView(Context context, int i, Drawable drawable, int i2) {
        super(context, i, drawable, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        this.onHeld = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.HoldableActionButtonView$onHeld$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.releaseHold = new Runnable() { // from class: com.kelocube.mirrorclient.ui.HoldableActionButtonView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HoldableActionButtonView.releaseHold$lambda$0(this.f$0);
            }
        };
    }

    public final Function0<Unit> getOnHeld() {
        return this.onHeld;
    }

    public final void setOnHeld(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onHeld = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseHold$lambda$0(HoldableActionButtonView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setButtonDown(false);
        this$0.onHeld.invoke();
    }

    @Override // com.kelocube.mirrorclient.ui.ActionButtonView
    public boolean onButtonTouch(View view, MotionEvent e) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(e, "e");
        if (getOnTouch().invoke(view, e).booleanValue() && getButtonDown()) {
            getHandler().removeCallbacks(this.releaseHold);
            setButtonDown(false);
        }
        int action = e.getAction();
        if (action == 0) {
            getHandler().removeCallbacks(this.releaseHold);
            getHandler().postDelayed(this.releaseHold, ViewConfiguration.getLongPressTimeout());
            setButtonDown(true);
        } else if (action == 1) {
            getHandler().removeCallbacks(this.releaseHold);
            if (getButtonDown()) {
                setButtonDown(false);
                getOnClick().invoke();
            }
        }
        return true;
    }
}
