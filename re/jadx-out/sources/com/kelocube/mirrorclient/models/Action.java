package com.kelocube.mirrorclient.models;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.kelocube.mirrorclient.R;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import kotlin.text.StringsKt;
import org.slf4j.Marker;

/* JADX INFO: compiled from: Action.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/kelocube/mirrorclient/models/Action;", "", "()V", "Companion", "ParseContext", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Action {
    public static final int COMMAND_0 = 230;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int KEY_0 = 0;
    public static final int KEY_MASK = 255;
    public static final int MOD_ALT = 512;
    public static final int MOD_CTRL = 256;
    public static final int MOD_SHIFT = 1024;
    public static final int MOUSE_BUTTON_0 = 200;
    public static final int NONE = 0;
    public static final int RESET_VIEW_0 = 220;
    public static final int SET_VIEW_0 = 210;
    public static final int VIEW_COUNT = 10;

    /* JADX INFO: compiled from: Action.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000e\u0010\tR\u0019\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u0010\u0010\tR\u0019\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u0012\u0010\tR\u0019\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u0014\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/kelocube/mirrorclient/models/Action$ParseContext;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "commands", "", "", "getCommands", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "keys", "getKeys", "mouseButtons", "getMouseButtons", "resetViews", "getResetViews", "setViews", "getSetViews", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class ParseContext {
        private final String[] commands;
        private final Context context;
        private final String[] keys;
        private final String[] mouseButtons;
        private final String[] resetViews;
        private final String[] setViews;

        public ParseContext(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            String[] strArr = new String[10];
            int i = 0;
            while (i < 10) {
                int i2 = i + 1;
                strArr[i] = this.context.getResources().getString(R.string.action_set_view, Integer.valueOf(i2));
                i = i2;
            }
            this.setViews = strArr;
            String[] strArr2 = new String[10];
            int i3 = 0;
            while (i3 < 10) {
                int i4 = i3 + 1;
                strArr2[i3] = this.context.getResources().getString(R.string.action_reset_view, Integer.valueOf(i4));
                i3 = i4;
            }
            this.resetViews = strArr2;
            String[] stringArray = this.context.getResources().getStringArray(R.array.action_commands);
            Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
            this.commands = stringArray;
            String[] stringArray2 = this.context.getResources().getStringArray(R.array.action_keys);
            Intrinsics.checkNotNullExpressionValue(stringArray2, "getStringArray(...)");
            this.keys = stringArray2;
            String[] stringArray3 = this.context.getResources().getStringArray(R.array.action_mouse_buttons);
            Intrinsics.checkNotNullExpressionValue(stringArray3, "getStringArray(...)");
            this.mouseButtons = stringArray3;
        }

        public final Context getContext() {
            return this.context;
        }

        public final String[] getSetViews() {
            return this.setViews;
        }

        public final String[] getResetViews() {
            return this.resetViews;
        }

        public final String[] getCommands() {
            return this.commands;
        }

        public final String[] getKeys() {
            return this.keys;
        }

        public final String[] getMouseButtons() {
            return this.mouseButtons;
        }
    }

    /* JADX INFO: compiled from: Action.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004J\u0083\u0001\u0010\u0012\u001a\u0002H\u0013\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042`\u0010\u0017\u001a\\\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u0002H\u00130\u0018¢\u0006\u0002\u0010\u001fJ\u0019\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190!2\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\"JQ\u0010#\u001a\u0002H\u0013\"\u0004\b\u0000\u0010\u00132\u0006\u0010\u0016\u001a\u00020\u000426\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(%\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u0002H\u00130$¢\u0006\u0002\u0010&J.\u0010'\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u0010J\"\u0010(\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00042\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/kelocube/mirrorclient/models/Action$Companion;", "", "()V", "COMMAND_0", "", "KEY_0", "KEY_MASK", "MOD_ALT", "MOD_CTRL", "MOD_SHIFT", "MOUSE_BUTTON_0", "NONE", "RESET_VIEW_0", "SET_VIEW_0", "VIEW_COUNT", "canModify", "", "key", "decompose", "T", "context", "Lcom/kelocube/mirrorclient/models/Action$ParseContext;", "action", "func", "Lkotlin/Function4;", "", "Lkotlin/ParameterName;", "name", "ctrl", "alt", "shift", "(Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "getActions", "", "(Lcom/kelocube/mirrorclient/models/Action$ParseContext;)[Ljava/lang/String;", "getTypeAndKey", "Lkotlin/Function2;", "type", "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "parse", "toString", "default", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean canModify(int key) {
            return (key & 255) < 210;
        }

        private Companion() {
        }

        public final String[] getActions(ParseContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            SpreadBuilder spreadBuilder = new SpreadBuilder(5);
            spreadBuilder.addSpread(context.getSetViews());
            spreadBuilder.addSpread(context.getResetViews());
            spreadBuilder.addSpread(context.getCommands());
            spreadBuilder.addSpread(context.getMouseButtons());
            String[] keys = context.getKeys();
            ArrayList arrayList = new ArrayList();
            for (String str : keys) {
                if (str.length() > 0) {
                    arrayList.add(str);
                }
            }
            spreadBuilder.addSpread(arrayList.toArray(new String[0]));
            return (String[]) spreadBuilder.toArray(new String[spreadBuilder.size()]);
        }

        public final <T> T getTypeAndKey(int action, Function2<? super Integer, ? super Integer, ? extends T> func) {
            Intrinsics.checkNotNullParameter(func, "func");
            int i = action & 255;
            if (i >= 230) {
                return func.invoke(Integer.valueOf(Action.COMMAND_0), Integer.valueOf(i - Action.COMMAND_0));
            }
            if (i >= 220) {
                return func.invoke(Integer.valueOf(Action.RESET_VIEW_0), Integer.valueOf(i - Action.RESET_VIEW_0));
            }
            if (i >= 210) {
                return func.invoke(Integer.valueOf(Action.SET_VIEW_0), Integer.valueOf(i - Action.SET_VIEW_0));
            }
            if (i >= 200) {
                return func.invoke(200, Integer.valueOf(i - 200));
            }
            if (i >= 0) {
                return func.invoke(0, Integer.valueOf(i));
            }
            return func.invoke(0, 0);
        }

        public final int parse(ParseContext context, String name, boolean ctrl, boolean alt, boolean shift) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            String[] resetViews = context.getResetViews();
            int length = resetViews.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                }
                if (StringsKt.equals(resetViews[i], name, true)) {
                    break;
                }
                i++;
            }
            int i2 = i + Action.RESET_VIEW_0;
            if (i2 == 219) {
                String[] setViews = context.getSetViews();
                int length2 = setViews.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (StringsKt.equals(setViews[i3], name, true)) {
                        break;
                    }
                    i3++;
                }
                i2 = i3 + Action.SET_VIEW_0;
            }
            if (i2 == 209) {
                String[] mouseButtons = context.getMouseButtons();
                int length3 = mouseButtons.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length3) {
                        i4 = -1;
                        break;
                    }
                    if (StringsKt.equals(mouseButtons[i4], name, true)) {
                        break;
                    }
                    i4++;
                }
                i2 = i4 + 200;
            }
            if (i2 == 199) {
                String[] keys = context.getKeys();
                int length4 = keys.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length4) {
                        i2 = -1;
                        break;
                    }
                    if (StringsKt.equals(keys[i5], name, true)) {
                        i2 = i5;
                        break;
                    }
                    i5++;
                }
            }
            int i6 = i2 != -1 ? i2 : 0;
            if (!canModify(i6)) {
                return i6;
            }
            if (ctrl) {
                i6 |= 256;
            }
            if (alt) {
                i6 |= 512;
            }
            return shift ? i6 | 1024 : i6;
        }

        public static /* synthetic */ String toString$default(Companion companion, ParseContext parseContext, int i, String str, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                str = null;
            }
            return companion.toString(parseContext, i, str);
        }

        public final String toString(final ParseContext context, int key, final String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            return (String) decompose(context, key, new Function4<String, Boolean, Boolean, Boolean, String>() { // from class: com.kelocube.mirrorclient.models.Action$Companion$toString$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ String invoke(String str2, Boolean bool, Boolean bool2, Boolean bool3) {
                    return invoke(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                }

                public final String invoke(String name, boolean z, boolean z2, boolean z3) {
                    Intrinsics.checkNotNullParameter(name, "name");
                    ArrayList arrayList = new ArrayList();
                    if (z) {
                        String string = context.getContext().getString(R.string.action_ctrl);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        arrayList.add(string);
                    }
                    if (z2) {
                        String string2 = context.getContext().getString(R.string.action_alt);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        arrayList.add(string2);
                    }
                    if (z3) {
                        String string3 = context.getContext().getString(R.string.action_shift);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        arrayList.add(string3);
                    }
                    if (name.length() > 0) {
                        arrayList.add(name);
                    }
                    if (arrayList.isEmpty()) {
                        String str2 = str;
                        if (str2 != null) {
                            return str2;
                        }
                        String string4 = context.getContext().getString(R.string.action_none);
                        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                        return string4;
                    }
                    return CollectionsKt.joinToString$default(arrayList, Marker.ANY_NON_NULL_MARKER, null, null, 0, null, null, 62, null);
                }
            });
        }

        public final <T> T decompose(final ParseContext context, int action, Function4<? super String, ? super Boolean, ? super Boolean, ? super Boolean, ? extends T> func) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(func, "func");
            return func.invoke((String) getTypeAndKey(action, new Function2<Integer, Integer, String>() { // from class: com.kelocube.mirrorclient.models.Action$Companion$decompose$name$1
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ String invoke(Integer num, Integer num2) {
                    return invoke(num.intValue(), num2.intValue());
                }

                public final String invoke(int i, int i2) {
                    String str = "";
                    if (i == 0) {
                        String[] keys = context.getKeys();
                        return (i2 < 0 || i2 > ArraysKt.getLastIndex(keys)) ? "" : keys[i2];
                    }
                    if (i == 200) {
                        String[] mouseButtons = context.getMouseButtons();
                        return (i2 < 0 || i2 > ArraysKt.getLastIndex(mouseButtons)) ? "" : mouseButtons[i2];
                    }
                    if (i == 210) {
                        String[] setViews = context.getSetViews();
                        if (i2 >= 0 && i2 <= ArraysKt.getLastIndex(setViews)) {
                            str = setViews[i2];
                        }
                        Intrinsics.checkNotNullExpressionValue(str, "elementAtOrElse(...)");
                        return str;
                    }
                    if (i != 220) {
                        if (i != 230) {
                            return "";
                        }
                        String[] commands = context.getCommands();
                        return (i2 < 0 || i2 > ArraysKt.getLastIndex(commands)) ? "" : commands[i2];
                    }
                    String[] resetViews = context.getResetViews();
                    if (i2 >= 0 && i2 <= ArraysKt.getLastIndex(resetViews)) {
                        str = resetViews[i2];
                    }
                    Intrinsics.checkNotNullExpressionValue(str, "elementAtOrElse(...)");
                    return str;
                }
            }), Boolean.valueOf((action & 256) != 0), Boolean.valueOf((action & 512) != 0), Boolean.valueOf((action & 1024) != 0));
        }
    }
}
