package com.kelocube.mirrorclient;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.text.HtmlCompat;
import androidx.core.view.ViewCompat;
import androidx.preference.PreferenceManager;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.kelocube.mirrorclient.CanvasScaler;
import com.kelocube.mirrorclient.databinding.LayoutOnboardingBubbleBinding;
import com.kelocube.mirrorclient.models.Action;
import com.kelocube.mirrorclient.models.ActionMenuButton;
import com.kelocube.mirrorclient.ui.ActionButtonView;
import com.kelocube.mirrorclient.ui.ActionMenuView;
import com.kelocube.mirrorclient.ui.HoldableActionButtonView;
import com.maltaisn.icondialog.pack.IconPack;
import com.maltaisn.icondialog.pack.IconPackLoader;
import com.maltaisn.iconpack.defaultpack.IconPackDefault;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ActionMenu.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u000278B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\b\u0010'\u001a\u00020$H\u0002J\u000e\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020*J\u0006\u0010)\u001a\u00020$J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\bH\u0002J\u0006\u0010.\u001a\u00020$J\u000e\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020,J\u0018\u0010/\u001a\u00020$2\u0006\u0010-\u001a\u00020\b2\u0006\u00100\u001a\u00020,H\u0002J\u0018\u00101\u001a\u00020$2\u0006\u00102\u001a\u00020\b2\b\b\u0002\u00103\u001a\u000204J\u0006\u00105\u001a\u00020$J\b\u00106\u001a\u00020$H\u0002R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\f\u0012\b\u0012\u00060\u000eR\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n \u001d*\u0004\u0018\u00010\u001c0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Lcom/kelocube/mirrorclient/ActionMenu;", "", "context", "Landroid/content/Context;", "callbacks", "Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;", "(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V", "value", "", "activeCrop", "setActiveCrop", "(I)V", "buttons", "", "Lcom/kelocube/mirrorclient/ActionMenu$Button;", "loader", "Lcom/maltaisn/icondialog/pack/IconPackLoader;", "getLoader", "()Lcom/maltaisn/icondialog/pack/IconPackLoader;", "modeIndex", "modes", "", "[Ljava/lang/Integer;", "pack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "rootButton", "Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;", "touchFilter", "view", "Lcom/kelocube/mirrorclient/ui/ActionMenuView;", "configChanged", "", "newConfig", "Landroid/content/res/Configuration;", "cycleTouchMode", "inflate", "layout", "Landroid/view/ViewGroup;", "loadCrop", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "i", "onConnected", "saveCrop", "crop", "setMode", "mode", "setDefault", "", "showOnboardingIfNecessary", "updateTouchMode", "Button", "Callbacks", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActionMenu {
    private int activeCrop;
    private final List<Button> buttons;
    private final Callbacks callbacks;
    private final Context context;
    private final IconPackLoader loader;
    private int modeIndex;
    private final Integer[] modes;
    private final IconPack pack;
    private final SharedPreferences prefs;
    private final HoldableActionButtonView rootButton;
    private final int touchFilter;
    private final ActionMenuView view;

    /* JADX INFO: compiled from: ActionMenu.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u009f\u0002\u0012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\b0\u0003\u0012h\u0010\f\u001ad\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012A\u0012?\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b0\u0003j\u0011`\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\b0\rj\u0002`\u0013\u0012h\u0010\u0014\u001ad\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012A\u0012?\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b0\u0003j\u0011`\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\b0\rj\u0002`\u0013¢\u0006\u0002\u0010\u0015Rs\u0010\u0014\u001ad\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012A\u0012?\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b0\u0003j\u0011`\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\b0\rj\u0002`\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017Rs\u0010\f\u001ad\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012A\u0012?\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b0\u0003j\u0011`\u0011¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\b0\rj\u0002`\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R,\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR,\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;", "", "onSetCrop", "Lkotlin/Function1;", "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;", "Lkotlin/ParameterName;", "name", "crop", "", "onSetTouchMode", "", "mode", "onKeyData", "Lkotlin/Function2;", "maxLength", "Ljava/nio/ByteBuffer;", "to", "Lcom/kelocube/mirrorclient/DataCallback;", "callback", "Lcom/kelocube/mirrorclient/OnDataHandler;", "onCommandData", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V", "getOnCommandData", "()Lkotlin/jvm/functions/Function2;", "getOnKeyData", "getOnSetCrop", "()Lkotlin/jvm/functions/Function1;", "getOnSetTouchMode", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Callbacks {
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onCommandData;
        private final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> onKeyData;
        private final Function1<CanvasScaler.Crop, Unit> onSetCrop;
        private final Function1<Integer, Unit> onSetTouchMode;

        /* JADX WARN: Multi-variable type inference failed */
        public Callbacks(Function1<? super CanvasScaler.Crop, Unit> onSetCrop, Function1<? super Integer, Unit> onSetTouchMode, Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onKeyData, Function2<? super Integer, ? super Function1<? super ByteBuffer, Unit>, Unit> onCommandData) {
            Intrinsics.checkNotNullParameter(onSetCrop, "onSetCrop");
            Intrinsics.checkNotNullParameter(onSetTouchMode, "onSetTouchMode");
            Intrinsics.checkNotNullParameter(onKeyData, "onKeyData");
            Intrinsics.checkNotNullParameter(onCommandData, "onCommandData");
            this.onSetCrop = onSetCrop;
            this.onSetTouchMode = onSetTouchMode;
            this.onKeyData = onKeyData;
            this.onCommandData = onCommandData;
        }

        public final Function1<CanvasScaler.Crop, Unit> getOnSetCrop() {
            return this.onSetCrop;
        }

        public final Function1<Integer, Unit> getOnSetTouchMode() {
            return this.onSetTouchMode;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnKeyData() {
            return this.onKeyData;
        }

        public final Function2<Integer, Function1<? super ByteBuffer, Unit>, Unit> getOnCommandData() {
            return this.onCommandData;
        }
    }

    public ActionMenu(Context context, Callbacks callbacks) {
        Integer[] numArr;
        List mutableList;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        this.context = context;
        this.callbacks = callbacks;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.prefs = defaultSharedPreferences;
        this.activeCrop = defaultSharedPreferences.getInt("session_menu_active_crop", 0);
        int touch_filter_touch = ActionButtonView.INSTANCE.getTOUCH_FILTER_TOUCH() | ActionButtonView.INSTANCE.getTOUCH_FILTER_PEN();
        this.touchFilter = touch_filter_touch;
        IconPackLoader iconPackLoader = new IconPackLoader(context);
        this.loader = iconPackLoader;
        IconPack iconPackCreateDefaultIconPack = IconPackDefault.createDefaultIconPack(iconPackLoader);
        this.pack = iconPackCreateDefaultIconPack;
        iconPackCreateDefaultIconPack.loadDrawables(iconPackLoader.getDrawableLoader());
        HoldableActionButtonView holdableActionButtonView = new HoldableActionButtonView(context, R.layout.view_action_button_menu, null, touch_filter_touch);
        this.rootButton = holdableActionButtonView;
        ActionMenuView actionMenuView = new ActionMenuView(context, holdableActionButtonView);
        this.view = actionMenuView;
        holdableActionButtonView.setOnTouch(new AnonymousClass1(actionMenuView));
        holdableActionButtonView.setOnClick(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.2
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
                ActionMenu.this.cycleTouchMode();
            }
        });
        holdableActionButtonView.setOnHeld(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.3
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
                ActionMenu.this.view.setOpen(!ActionMenu.this.view.getOpen());
            }
        });
        actionMenuView.setStateChanged(new Function1<ActionMenuView.State, Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ActionMenuView.State state) {
                invoke2(state);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ActionMenuView.State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                SharedPreferences.Editor editorEdit = ActionMenu.this.prefs.edit();
                if (state.getX() != 0.0f && state.getY() != 0.0f) {
                    editorEdit.putBoolean("session_menu_open", state.getOpen());
                    editorEdit.putFloat("session_menu_x", state.getX());
                    editorEdit.putFloat("session_menu_y", state.getY());
                    editorEdit.apply();
                }
                ActionMenu.this.rootButton.getButton().setAlpha(state.getOpen() ? 1.0f : 0.5f);
            }
        });
        ActionMenuButton[] actionMenu = Prefs.INSTANCE.getActionMenu(context);
        ArrayList arrayList = new ArrayList(actionMenu.length);
        int length = actionMenu.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            arrayList.add(new Button(this, actionMenu[i], i2));
            i++;
            i2++;
        }
        ArrayList<Button> arrayList2 = arrayList;
        this.buttons = arrayList2;
        for (Button button : arrayList2) {
            ActionMenuView actionMenuView2 = this.view;
            actionMenuView2.addItem(actionMenuView2.getItemCount(), button.getView());
        }
        this.view.setState(new ActionMenuView.State(this.prefs.getBoolean("session_menu_open", false), this.prefs.getFloat("session_menu_x", this.view.getMinEdgeOffset()), this.prefs.getFloat("session_menu_y", this.view.getMinEdgeOffset()), this.context.getResources().getConfiguration().orientation == 1));
        try {
            Set<String> stringSet = this.prefs.getStringSet("session_menu_modes", ArraysKt.toSet(MDUtil.INSTANCE.getStringArray(this.context, Integer.valueOf(R.array.pref_session_menu_modes_default))));
            if (stringSet != null) {
                Set<String> set = stringSet;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
                for (String str : set) {
                    Intrinsics.checkNotNull(str);
                    arrayList3.add(Integer.valueOf(Integer.parseInt(str)));
                }
                mutableList = CollectionsKt.toMutableList((Collection) arrayList3);
            } else {
                mutableList = null;
            }
            Intrinsics.checkNotNull(mutableList);
            String string = this.prefs.getString(PrefsKt.PREF_STYLUS_TYPE, null);
            int iIntValue = (string == null || (intOrNull = StringsKt.toIntOrNull(string)) == null) ? 0 : intOrNull.intValue();
            if (iIntValue == 1 || iIntValue == 2) {
                mutableList.add(-1);
            }
            CollectionsKt.sort(mutableList);
            if (mutableList.isEmpty()) {
                mutableList.add(1);
            }
            numArr = (Integer[]) mutableList.toArray(new Integer[0]);
        } catch (Throwable th) {
            th.printStackTrace();
            DiagnosticsKt.traceMessage(UtilKt.getTAG(this), th.toString());
            numArr = new Integer[]{0, 1, -1};
        }
        this.modes = numArr;
        setMode(this.prefs.getInt("session_menu_current_mode", -999), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setActiveCrop(int i) {
        this.activeCrop = i;
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putInt("session_menu_active_crop", this.activeCrop);
        editorEdit.apply();
        Iterator<T> it = this.buttons.iterator();
        while (it.hasNext()) {
            ((Button) it.next()).onActiveCropChanged(i);
        }
        this.callbacks.getOnSetCrop().invoke(loadCrop(i));
    }

    /* JADX INFO: compiled from: ActionMenu.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/kelocube/mirrorclient/ActionMenu$Button;", "", "model", "Lcom/kelocube/mirrorclient/models/ActionMenuButton;", "index", "", "(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/models/ActionMenuButton;I)V", "view", "Lcom/kelocube/mirrorclient/ui/ActionButtonView;", "getView", "()Lcom/kelocube/mirrorclient/ui/ActionButtonView;", "doAction", "", "action", "onActiveCropChanged", "activeCrop", "sendKey", "down", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public final class Button {
        private final int index;
        private final ActionMenuButton model;
        final /* synthetic */ ActionMenu this$0;
        private final ActionButtonView view;

        public Button(ActionMenu actionMenu, ActionMenuButton model, int i) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.this$0 = actionMenu;
            this.model = model;
            this.index = i;
            boolean z = model.getHoldAction() == 0;
            boolean zBooleanValue = ((Boolean) Action.INSTANCE.getTypeAndKey(model.getTapAction(), new Function2<Integer, Integer, Boolean>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$tapIsKey$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Boolean invoke(Integer num, Integer num2) {
                    return invoke(num.intValue(), num2.intValue());
                }

                public final Boolean invoke(int i2, int i3) {
                    return Boolean.valueOf(i2 == 0 || i2 == 200);
                }
            })).booleanValue();
            if (z) {
                ActionButtonView actionButtonView = new ActionButtonView(actionMenu.context, R.layout.view_action_button, actionMenu.getPack().getIconDrawable(model.getIcon(), actionMenu.getLoader().getDrawableLoader()), actionMenu.touchFilter);
                this.view = actionButtonView;
                if (zBooleanValue) {
                    actionButtonView.setOnDown(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.Button.1
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
                            Button button = Button.this;
                            button.sendKey(button.model.getTapAction(), true);
                        }
                    });
                    actionButtonView.setOnUp(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.Button.2
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
                            Button button = Button.this;
                            button.sendKey(button.model.getTapAction(), false);
                        }
                    });
                    return;
                } else {
                    actionButtonView.setOnClick(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.Button.3
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
                            Button button = Button.this;
                            button.doAction(button.model.getTapAction());
                        }
                    });
                    return;
                }
            }
            HoldableActionButtonView holdableActionButtonView = new HoldableActionButtonView(actionMenu.context, R.layout.view_action_button, actionMenu.getPack().getIconDrawable(model.getIcon(), actionMenu.getLoader().getDrawableLoader()), actionMenu.touchFilter);
            this.view = holdableActionButtonView;
            holdableActionButtonView.setOnClick(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.Button.4
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
                    Button button = Button.this;
                    button.doAction(button.model.getTapAction());
                }
            });
            holdableActionButtonView.setOnHeld(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu.Button.5
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
                    Button button = Button.this;
                    button.doAction(button.model.getHoldAction());
                }
            });
        }

        public final ActionButtonView getView() {
            return this.view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void sendKey(final int action, final boolean down) {
            this.this$0.callbacks.getOnKeyData().invoke(6, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$sendKey$1
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
                    it.put(down ? (byte) 1 : (byte) 0);
                    it.put((byte) this.index);
                    it.putInt(action);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void doAction(final int action) {
            Action.Companion companion = Action.INSTANCE;
            final ActionMenu actionMenu = this.this$0;
            companion.getTypeAndKey(action, new Function2<Integer, Integer, Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$doAction$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Integer num2) {
                    invoke(num.intValue(), num2.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, final int i2) {
                    if (i == 0 || i == 200) {
                        this.sendKey(action, true);
                        this.sendKey(action, false);
                    } else {
                        if (i == 210) {
                            actionMenu.setActiveCrop(i2);
                            return;
                        }
                        if (i == 220) {
                            actionMenu.setActiveCrop(i2);
                            actionMenu.callbacks.getOnSetCrop().invoke(new CanvasScaler.Crop());
                        } else {
                            if (i != 230) {
                                return;
                            }
                            actionMenu.callbacks.getOnCommandData().invoke(4, new Function1<ByteBuffer, Unit>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$doAction$1.1
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
                                    it.putInt(i2);
                                }
                            });
                        }
                    }
                }
            });
        }

        public final void onActiveCropChanged(final int activeCrop) {
            this.view.getButton().setImageTintList(ColorStateList.valueOf(ContextCompat.getColor(this.this$0.context, ((Boolean) Action.INSTANCE.getTypeAndKey(this.model.getTapAction(), new Function2<Integer, Integer, Boolean>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$onActiveCropChanged$active$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public final Boolean invoke(int i, int i2) {
                    return Boolean.valueOf(i == 210 && i2 == activeCrop);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Boolean invoke(Integer num, Integer num2) {
                    return invoke(num.intValue(), num2.intValue());
                }
            })).booleanValue() || ((Boolean) Action.INSTANCE.getTypeAndKey(this.model.getHoldAction(), new Function2<Integer, Integer, Boolean>() { // from class: com.kelocube.mirrorclient.ActionMenu$Button$onActiveCropChanged$active$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                public final Boolean invoke(int i, int i2) {
                    return Boolean.valueOf(i == 210 && i2 == activeCrop);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Boolean invoke(Integer num, Integer num2) {
                    return invoke(num.intValue(), num2.intValue());
                }
            })).booleanValue() ? R.color.colorAccent : R.color.colorOnPrimary)));
        }
    }

    public final IconPack getPack() {
        return this.pack;
    }

    public final IconPackLoader getLoader() {
        return this.loader;
    }

    /* JADX INFO: renamed from: com.kelocube.mirrorclient.ActionMenu$1, reason: invalid class name */
    /* JADX INFO: compiled from: ActionMenu.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function2<View, MotionEvent, Boolean> {
        AnonymousClass1(Object obj) {
            super(2, obj, ActionMenuView.class, "onRootTouch", "onRootTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Boolean invoke(View p0, MotionEvent p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return Boolean.valueOf(((ActionMenuView) this.receiver).onRootTouch(p0, p1));
        }
    }

    public final void inflate(ViewGroup layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.view.inflate(layout);
    }

    public final void onConnected() {
        setActiveCrop(this.activeCrop);
    }

    public final void configChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.view.setVertical(newConfig.orientation == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cycleTouchMode() {
        this.modeIndex = (this.modeIndex + 1) % this.modes.length;
        this.prefs.edit().putInt("session_menu_current_mode", this.modes[this.modeIndex].intValue()).apply();
        updateTouchMode();
    }

    public static /* synthetic */ void setMode$default(ActionMenu actionMenu, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        actionMenu.setMode(i, z);
    }

    public final void setMode(int mode, boolean setDefault) {
        int iIndexOf = ArraysKt.indexOf(this.modes, Integer.valueOf(mode));
        if (iIndexOf == -1 && setDefault) {
            iIndexOf = 0;
        }
        if (iIndexOf != -1) {
            this.modeIndex = iIndexOf;
            updateTouchMode();
        }
    }

    private final void updateTouchMode() {
        Integer num = this.modes[this.modeIndex];
        int iIntValue = num.intValue();
        this.callbacks.getOnSetTouchMode().invoke(num);
        this.rootButton.getButton().setImageDrawable(this.pack.getIconDrawable(iIntValue != -1 ? iIntValue != 0 ? iIntValue != 1 ? iIntValue != 2 ? ActionMenuButton.DEFAULT_ICON : 886 : 111 : 24 : 504, this.loader.getDrawableLoader()));
    }

    private final CanvasScaler.Crop loadCrop(int i) {
        CanvasScaler.Crop crop = new CanvasScaler.Crop();
        crop.setX(this.prefs.getFloat("session_menu_crop_x_" + i, 0.0f));
        crop.setY(this.prefs.getFloat("session_menu_crop_y_" + i, 0.0f));
        crop.setA(this.prefs.getFloat("session_menu_crop_scale_" + i, 1.0f));
        crop.setT(this.prefs.getFloat("session_menu_crop_theta_" + i, 0.0f));
        return crop;
    }

    private final void saveCrop(int i, CanvasScaler.Crop crop) {
        SharedPreferences.Editor editorEdit = this.prefs.edit();
        editorEdit.putFloat("session_menu_crop_x_" + i, crop.getX());
        editorEdit.putFloat("session_menu_crop_y_" + i, crop.getY());
        editorEdit.putFloat("session_menu_crop_scale_" + i, crop.getA());
        editorEdit.putFloat("session_menu_crop_theta_" + i, crop.getT());
        editorEdit.apply();
    }

    public final void saveCrop(CanvasScaler.Crop crop) {
        Intrinsics.checkNotNullParameter(crop, "crop");
        saveCrop(this.activeCrop, crop);
    }

    public final void showOnboardingIfNecessary() {
        if (this.prefs.getBoolean("session_menu_onboarded", false)) {
            return;
        }
        this.view.setState(new ActionMenuView.State(false, this.view.getMinEdgeOffset(), this.view.getMinEdgeOffset(), this.view.getVertical()));
        final LayoutOnboardingBubbleBinding layoutOnboardingBubbleBindingInflate = LayoutOnboardingBubbleBinding.inflate(LayoutInflater.from(this.context), this.view, false);
        Intrinsics.checkNotNullExpressionValue(layoutOnboardingBubbleBindingInflate, "inflate(...)");
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.0f, 1, 0.0f);
        scaleAnimation.setDuration(1000L);
        scaleAnimation.setInterpolator(new EaseOutElasticInterpolator());
        layoutOnboardingBubbleBindingInflate.textBody.setText(HtmlCompat.fromHtml(this.context.getString(R.string.onboarding_action_menu_body, Integer.valueOf(ContextCompat.getColor(this.context, R.color.colorAccent) & ViewCompat.MEASURED_SIZE_MASK)), 63));
        layoutOnboardingBubbleBindingInflate.buttonOk.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ActionMenu$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActionMenu.showOnboardingIfNecessary$lambda$9(this.f$0, layoutOnboardingBubbleBindingInflate, view);
            }
        });
        FrameLayout root = layoutOnboardingBubbleBindingInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.kelocube.mirrorclient.ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                view.removeOnLayoutChangeListener(this);
                RectF rectF = new RectF();
                this.this$0.view.getRootBounds(rectF);
                layoutOnboardingBubbleBindingInflate.getRoot().setLeft((int) this.this$0.view.getMinEdgeOffset());
                layoutOnboardingBubbleBindingInflate.getRoot().setTop((int) (this.this$0.view.getMinEdgeOffset() + (rectF.height() / 2.0f)));
                layoutOnboardingBubbleBindingInflate.getRoot().setRight(layoutOnboardingBubbleBindingInflate.getRoot().getLeft() + layoutOnboardingBubbleBindingInflate.getRoot().getMeasuredWidth());
                layoutOnboardingBubbleBindingInflate.getRoot().setBottom(layoutOnboardingBubbleBindingInflate.getRoot().getTop() + layoutOnboardingBubbleBindingInflate.getRoot().getMeasuredHeight());
            }
        });
        this.view.addView(layoutOnboardingBubbleBindingInflate.getRoot());
        layoutOnboardingBubbleBindingInflate.getRoot().startAnimation(scaleAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showOnboardingIfNecessary$lambda$9(final ActionMenu this$0, LayoutOnboardingBubbleBinding binding, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        SharedPreferences.Editor editorEdit = this$0.prefs.edit();
        editorEdit.putBoolean("session_menu_onboarded", true);
        editorEdit.apply();
        final FrameLayout root = binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.0f, 1, 0.0f);
        scaleAnimation.setDuration(300L);
        scaleAnimation.setInterpolator(new EaseInBackInterpolator());
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.kelocube.mirrorclient.ActionMenu$showOnboardingIfNecessary$1$2$1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                this.this$0.view.removeView(root);
            }
        });
        binding.getRoot().startAnimation(scaleAnimation);
    }

    public final void layout() {
        this.view.bringToFront();
    }
}
