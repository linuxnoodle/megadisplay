package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.kelocube.mirrorclient.ui.ActionMenuView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ActionMenuView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001:\u0002>?B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0005J\b\u0010+\u001a\u00020\u001eH\u0002J\u000e\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u000201J\u0012\u00102\u001a\u0004\u0018\u00010\u000f2\u0006\u0010)\u001a\u00020\nH\u0002J\u0016\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u000206J\u000e\u00107\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\nJ\u0018\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u0011H\u0002J\u000e\u0010;\u001a\u00020\u001e2\u0006\u0010<\u001a\u00020\u001dJ\b\u0010=\u001a\u00020\u001eH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R$\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R$\u0010#\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\u000e\u0010&\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lcom/kelocube/mirrorclient/ui/ActionMenuView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "rootView", "Landroid/view/View;", "(Landroid/content/Context;Landroid/view/View;)V", "dragging", "", "itemCount", "", "getItemCount", "()I", "items", "", "Lcom/kelocube/mirrorclient/ui/ActionMenuView$Item;", "minEdgeOffset", "", "getMinEdgeOffset", "()F", "value", "open", "getOpen", "()Z", "setOpen", "(Z)V", "rootItem", "stateChanged", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;", "", "getStateChanged", "()Lkotlin/jvm/functions/Function1;", "setStateChanged", "(Lkotlin/jvm/functions/Function1;)V", "vertical", "getVertical", "setVertical", "x0", "y0", "addItem", "i", "view", "fireStateChanged", "getRootBounds", "bounds", "Landroid/graphics/RectF;", "inflate", "layout", "Landroid/view/ViewGroup;", "itemAt", "onRootTouch", "p0", "e", "Landroid/view/MotionEvent;", "removeItem", "setPos", "x", "y", "setState", "state", "updateDirection", "Item", "State", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActionMenuView extends FrameLayout {
    private boolean dragging;
    private final List<Item> items;
    private final float minEdgeOffset;
    private boolean open;
    private final Item rootItem;
    private Function1<? super State, Unit> stateChanged;
    private boolean vertical;
    private float x0;
    private float y0;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: ActionMenuView.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.J\u0018\u0010/\u001a\u00020,2\u0006\u0010&\u001a\u00020%2\b\b\u0002\u00100\u001a\u00020\u001eJ\u0018\u00101\u001a\u00020,2\u0006\u0010)\u001a\u00020%2\b\b\u0002\u00100\u001a\u00020\u001eJ\b\u00102\u001a\u00020,H\u0002J\b\u00103\u001a\u00020,H\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0011\u0010\u000b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R(\u0010\u0017\u001a\u0004\u0018\u00010\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0000@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\u001e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001e\u0010&\u001a\u00020%2\u0006\u0010$\u001a\u00020%@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001e\u0010)\u001a\u00020%2\u0006\u0010$\u001a\u00020%@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b*\u0010(¨\u00064"}, d2 = {"Lcom/kelocube/mirrorclient/ui/ActionMenuView$Item;", "", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "animAlpha", "Landroidx/dynamicanimation/animation/SpringAnimation;", "getAnimAlpha", "()Landroidx/dynamicanimation/animation/SpringAnimation;", "animX", "getAnimX", "animY", "getAnimY", "value", "", "dx", "getDx", "()I", "setDx", "(I)V", "dy", "getDy", "setDy", "nextItem", "getNextItem", "()Lcom/kelocube/mirrorclient/ui/ActionMenuView$Item;", "setNextItem", "(Lcom/kelocube/mirrorclient/ui/ActionMenuView$Item;)V", "getView", "()Landroid/view/View;", "", "visible", "getVisible", "()Z", "setVisible", "(Z)V", "<set-?>", "", "x", "getX", "()F", "y", "getY", "getBounds", "", "bounds", "Landroid/graphics/RectF;", "setX", "anim", "setY", "updateNextX", "updateNextY", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    static final class Item {
        private final SpringAnimation animAlpha;
        private final SpringAnimation animX;
        private final SpringAnimation animY;
        private int dx;
        private int dy;
        private Item nextItem;
        private final View view;
        private boolean visible;
        private float x;
        private float y;

        public Item(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.view = view;
            SpringAnimation springAnimation = new SpringAnimation(view, DynamicAnimation.TRANSLATION_X);
            SpringForce springForce = new SpringForce();
            springForce.setStiffness(1500.0f);
            springForce.setDampingRatio(0.5f);
            springAnimation.setSpring(springForce);
            springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.kelocube.mirrorclient.ui.ActionMenuView$Item$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    ActionMenuView.Item.animX$lambda$4$lambda$3(this.f$0, dynamicAnimation, f, f2);
                }
            });
            this.animX = springAnimation;
            SpringAnimation springAnimation2 = new SpringAnimation(view, DynamicAnimation.TRANSLATION_Y);
            SpringForce springForce2 = new SpringForce();
            springForce2.setStiffness(1500.0f);
            springForce2.setDampingRatio(0.5f);
            springAnimation2.setSpring(springForce2);
            springAnimation2.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.kelocube.mirrorclient.ui.ActionMenuView$Item$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    ActionMenuView.Item.animY$lambda$7$lambda$6(this.f$0, dynamicAnimation, f, f2);
                }
            });
            this.animY = springAnimation2;
            this.visible = true;
            SpringAnimation springAnimation3 = new SpringAnimation(view, DynamicAnimation.ALPHA);
            SpringForce springForce3 = new SpringForce();
            springForce3.setDampingRatio(1.0f);
            springAnimation3.setSpring(springForce3);
            springAnimation3.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: com.kelocube.mirrorclient.ui.ActionMenuView$Item$$ExternalSyntheticLambda2
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                    ActionMenuView.Item.animAlpha$lambda$10$lambda$9(this.f$0, dynamicAnimation, f, f2);
                }
            });
            this.animAlpha = springAnimation3;
        }

        public final View getView() {
            return this.view;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public static /* synthetic */ void setX$default(Item item, float f, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            item.setX(f, z);
        }

        public final void setX(float x, boolean anim) {
            this.x = x;
            this.animX.animateToFinalPosition(x - (this.view.getMeasuredWidth() / 2.0f));
            if (anim) {
                return;
            }
            this.animX.skipToEnd();
        }

        public static /* synthetic */ void setY$default(Item item, float f, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            item.setY(f, z);
        }

        public final void setY(float y, boolean anim) {
            this.y = y;
            this.animY.animateToFinalPosition(y - (this.view.getMeasuredHeight() / 2.0f));
            if (anim) {
                return;
            }
            this.animY.skipToEnd();
        }

        public final int getDx() {
            return this.dx;
        }

        public final void setDx(int i) {
            this.dx = i;
            Item item = this.nextItem;
            if (item != null) {
                item.setDx(i);
            }
            updateNextX();
        }

        public final int getDy() {
            return this.dy;
        }

        public final void setDy(int i) {
            this.dy = i;
            Item item = this.nextItem;
            if (item != null) {
                item.setDy(i);
            }
            updateNextY();
        }

        public final Item getNextItem() {
            return this.nextItem;
        }

        public final void setNextItem(Item item) {
            this.nextItem = item;
            setDx(this.dx);
            setDy(this.dy);
        }

        private final void updateNextX() {
            Item item = this.nextItem;
            if (item != null) {
                setX$default(item, this.view.getTranslationX() + (this.view.getMeasuredWidth() / 2.0f) + (((this.view.getMeasuredWidth() + item.view.getMeasuredWidth()) / 2.0f) * this.dx), false, 2, null);
            }
        }

        private final void updateNextY() {
            Item item = this.nextItem;
            if (item != null) {
                setY$default(item, this.view.getTranslationY() + (this.view.getMeasuredHeight() / 2.0f) + (((this.view.getMeasuredHeight() + item.view.getMeasuredHeight()) / 2.0f) * this.dy), false, 2, null);
            }
        }

        public final void getBounds(RectF bounds) {
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            float f = this.x;
            bounds.set(f, this.y, this.view.getMeasuredWidth() + f, this.y + this.view.getMeasuredHeight());
        }

        public final SpringAnimation getAnimX() {
            return this.animX;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void animX$lambda$4$lambda$3(Item this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.updateNextX();
        }

        public final SpringAnimation getAnimY() {
            return this.animY;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void animY$lambda$7$lambda$6(Item this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.updateNextY();
        }

        public final boolean getVisible() {
            return this.visible;
        }

        public final void setVisible(boolean z) {
            this.visible = z;
            this.animAlpha.animateToFinalPosition(z ? 1.0f : 0.0f);
        }

        public final SpringAnimation getAnimAlpha() {
            return this.animAlpha;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void animAlpha$lambda$10$lambda$9(Item this$0, DynamicAnimation dynamicAnimation, float f, float f2) {
            SpringAnimation springAnimation;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Item item = this$0.nextItem;
            if (item == null || (springAnimation = item.animAlpha) == null) {
                return;
            }
            springAnimation.animateToFinalPosition(f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionMenuView(Context context, View rootView) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        this.minEdgeOffset = TypedValue.applyDimension(1, 50.0f, getResources().getDisplayMetrics());
        this.stateChanged = new Function1<State, Unit>() { // from class: com.kelocube.mirrorclient.ui.ActionMenuView$stateChanged$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ActionMenuView.State it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ActionMenuView.State state) {
                invoke2(state);
                return Unit.INSTANCE;
            }
        };
        this.items = new ArrayList();
        setZ(20.0f);
        setBackgroundColor(0);
        Item item = new Item(rootView);
        this.rootItem = item;
        item.getView().setZ(20.0f);
        addView(item.getView());
    }

    public final float getMinEdgeOffset() {
        return this.minEdgeOffset;
    }

    /* JADX INFO: compiled from: ActionMenuView.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;", "", "open", "", "x", "", "y", "vertical", "(ZFFZ)V", "getOpen", "()Z", "getVertical", "getX", "()F", "getY", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class State {
        private final boolean open;
        private final boolean vertical;
        private final float x;
        private final float y;

        public State(boolean z, float f, float f2, boolean z2) {
            this.open = z;
            this.x = f;
            this.y = f2;
            this.vertical = z2;
        }

        public final boolean getOpen() {
            return this.open;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public final boolean getVertical() {
            return this.vertical;
        }
    }

    public final Function1<State, Unit> getStateChanged() {
        return this.stateChanged;
    }

    public final void setStateChanged(Function1<? super State, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.stateChanged = function1;
    }

    public final boolean getOpen() {
        return this.open;
    }

    public final void setOpen(boolean z) {
        this.open = z;
        fireStateChanged();
        updateDirection();
    }

    public final boolean getVertical() {
        return this.vertical;
    }

    public final void setVertical(boolean z) {
        this.vertical = z;
        fireStateChanged();
        updateDirection();
    }

    public final int getItemCount() {
        return this.items.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onRootTouch(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            java.lang.String r0 = "p0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r4 = "e"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
            int r4 = r5.getAction()
            r0 = 0
            if (r4 == 0) goto L6e
            r1 = 1
            if (r4 == r1) goto L68
            r2 = 2
            if (r4 == r2) goto L1b
            r5 = 3
            if (r4 == r5) goto L68
            goto L7c
        L1b:
            boolean r4 = r3.dragging
            if (r4 != 0) goto L52
            float r4 = r5.getRawX()
            float r0 = r3.x0
            float r4 = r4 - r0
            float r0 = r5.getRawY()
            float r2 = r3.y0
            float r0 = r0 - r2
            float r4 = r4 * r4
            float r0 = r0 * r0
            float r4 = r4 + r0
            float r0 = com.kelocube.mirrorclient.ui.ActionMenuViewKt.getDRAG_THRESHOLD_SQUARED()
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 < 0) goto L52
            com.kelocube.mirrorclient.ui.ActionMenuView$Item r4 = r3.rootItem
            float r4 = r4.getX()
            float r0 = r3.x0
            float r4 = r4 - r0
            r3.x0 = r4
            com.kelocube.mirrorclient.ui.ActionMenuView$Item r4 = r3.rootItem
            float r4 = r4.getY()
            float r0 = r3.y0
            float r4 = r4 - r0
            r3.y0 = r4
            r3.dragging = r1
        L52:
            boolean r4 = r3.dragging
            if (r4 == 0) goto L7c
            float r4 = r3.x0
            float r0 = r5.getRawX()
            float r4 = r4 + r0
            float r0 = r3.y0
            float r5 = r5.getRawY()
            float r0 = r0 + r5
            r3.setPos(r4, r0)
            goto L7c
        L68:
            r3.dragging = r0
            r3.fireStateChanged()
            goto L7c
        L6e:
            float r4 = r5.getRawX()
            r3.x0 = r4
            float r4 = r5.getRawY()
            r3.y0 = r4
            r3.dragging = r0
        L7c:
            boolean r4 = r3.dragging
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kelocube.mirrorclient.ui.ActionMenuView.onRootTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setPos(float x, float y) {
        Item.setX$default(this.rootItem, MathUtils.clamp(x, this.minEdgeOffset, getMeasuredWidth() - this.minEdgeOffset), false, 2, null);
        Item.setY$default(this.rootItem, MathUtils.clamp(y, this.minEdgeOffset, getMeasuredHeight() - this.minEdgeOffset), false, 2, null);
        updateDirection();
        fireStateChanged();
    }

    public final void getRootBounds(RectF bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        this.rootItem.getBounds(bounds);
    }

    private final void fireStateChanged() {
        this.stateChanged.invoke(new State(this.open, this.rootItem.getX(), this.rootItem.getY(), this.vertical));
    }

    public final void setState(final State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        setOpen(state.getOpen());
        setVertical(state.getVertical());
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.kelocube.mirrorclient.ui.ActionMenuView$setState$$inlined$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                view.removeOnLayoutChangeListener(this);
                this.this$0.setPos(state.getX(), state.getY());
            }
        });
        requestLayout();
    }

    public final void inflate(ViewGroup layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        layout.addView(this);
    }

    private final void updateDirection() {
        int i = -1;
        int i2 = (!this.open || this.vertical) ? 0 : this.rootItem.getX() < ((float) getMeasuredWidth()) / 2.0f ? 1 : -1;
        if (!this.open || !this.vertical) {
            i = 0;
        } else if (this.rootItem.getY() < getMeasuredHeight() / 2.0f) {
            i = 1;
        }
        if (this.rootItem.getDx() != i2) {
            this.rootItem.setDx(i2);
        }
        if (this.rootItem.getDy() != i) {
            this.rootItem.setDy(i);
        }
        if (!(!this.items.isEmpty()) || ((Item) CollectionsKt.first((List) this.items)).getVisible() == this.open) {
            return;
        }
        ((Item) CollectionsKt.first((List) this.items)).setVisible(this.open);
    }

    private final Item itemAt(int i) {
        if (i == -1) {
            return this.rootItem;
        }
        return (Item) CollectionsKt.getOrNull(this.items, i);
    }

    public final void addItem(int i, View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (i < 0 || i > this.items.size()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        List<Item> list = this.items;
        Item item = new Item(view);
        item.setDx(this.rootItem.getDx());
        item.setDy(this.rootItem.getDy());
        item.setVisible(false);
        Item itemItemAt = itemAt(i - 1);
        if (itemItemAt != null) {
            itemItemAt.setNextItem(item);
        }
        item.setNextItem(itemAt(i));
        Unit unit = Unit.INSTANCE;
        list.add(i, item);
        addView(view, Math.max(0, getChildCount() - 1));
    }

    public final void removeItem(int i) {
        if (i < 0 || i >= this.items.size()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        Item itemItemAt = itemAt(i - 1);
        if (itemItemAt != null) {
            itemItemAt.setNextItem(itemAt(i + 1));
        }
        removeView(this.items.remove(i).getView());
    }
}
