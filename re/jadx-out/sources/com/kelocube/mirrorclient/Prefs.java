package com.kelocube.mirrorclient;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.PreferenceManager;
import com.kelocube.mirrorclient.models.Action;
import com.kelocube.mirrorclient.models.ActionMenuButton;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Prefs.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/kelocube/mirrorclient/Prefs;", "", "()V", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Prefs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: Prefs.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0007J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010¨\u0006\u0011"}, d2 = {"Lcom/kelocube/mirrorclient/Prefs$Companion;", "", "()V", "getActionMenu", "", "Lcom/kelocube/mirrorclient/models/ActionMenuButton;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)[Lcom/kelocube/mirrorclient/models/ActionMenuButton;", "getOrientation", "", "isOrientationPortrait", "", "setActionMenu", "", "data", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final int getOrientation(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("orientation", "");
            if (string == null) {
                return 6;
            }
            switch (string.hashCode()) {
                case -675508834:
                    if (!string.equals("reverse_landscape")) {
                    }
                    break;
                case -31410088:
                    if (!string.equals("reverse_portrait")) {
                    }
                    break;
                case 729267099:
                    if (!string.equals("portrait")) {
                    }
                    break;
                case 1389405648:
                    if (!string.equals("portrait_fixed")) {
                    }
                    break;
                case 1430647483:
                    string.equals("landscape");
                    break;
                case 2107704560:
                    if (!string.equals("landscape_fixed")) {
                    }
                    break;
            }
            return 6;
        }

        public final boolean isOrientationPortrait(Context context) {
            String str;
            Intrinsics.checkNotNullParameter(context, "context");
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("orientation", "");
            if (string == null) {
                return false;
            }
            switch (string.hashCode()) {
                case -675508834:
                    str = "reverse_landscape";
                    string.equals(str);
                    break;
                case -31410088:
                    if (!string.equals("reverse_portrait")) {
                    }
                    break;
                case 729267099:
                    if (!string.equals("portrait")) {
                    }
                    break;
                case 1389405648:
                    if (!string.equals("portrait_fixed")) {
                    }
                    break;
                case 1430647483:
                    str = "landscape";
                    string.equals(str);
                    break;
                case 2107704560:
                    str = "landscape_fixed";
                    string.equals(str);
                    break;
            }
            return false;
        }

        public final ActionMenuButton[] getActionMenu(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString(PrefsKt.PREF_ACTION_MENU_DATA, null);
            if (string == null) {
                ActionMenuButton actionMenuButton = new ActionMenuButton();
                actionMenuButton.setTapAction(Action.SET_VIEW_0);
                actionMenuButton.setHoldAction(Action.RESET_VIEW_0);
                actionMenuButton.setIcon(909);
                Unit unit = Unit.INSTANCE;
                ActionMenuButton actionMenuButton2 = new ActionMenuButton();
                actionMenuButton2.setTapAction(211);
                actionMenuButton2.setHoldAction(221);
                actionMenuButton2.setIcon(910);
                Unit unit2 = Unit.INSTANCE;
                ActionMenuButton actionMenuButton3 = new ActionMenuButton();
                actionMenuButton3.setTapAction(212);
                actionMenuButton3.setHoldAction(222);
                actionMenuButton3.setIcon(912);
                Unit unit3 = Unit.INSTANCE;
                ActionMenuButton actionMenuButton4 = new ActionMenuButton();
                actionMenuButton4.setTapAction(231);
                actionMenuButton4.setHoldAction(0);
                actionMenuButton4.setIcon(172);
                Unit unit4 = Unit.INSTANCE;
                ActionMenuButton actionMenuButton5 = new ActionMenuButton();
                actionMenuButton5.setTapAction(285);
                actionMenuButton5.setHoldAction(1309);
                actionMenuButton5.setIcon(971);
                Unit unit5 = Unit.INSTANCE;
                return new ActionMenuButton[]{actionMenuButton, actionMenuButton2, actionMenuButton3, actionMenuButton4, actionMenuButton5};
            }
            try {
                JSONArray jSONArray = new JSONArray(string);
                int length = jSONArray.length();
                ActionMenuButton[] actionMenuButtonArr = new ActionMenuButton[length];
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    ActionMenuButton actionMenuButton6 = new ActionMenuButton();
                    actionMenuButton6.setTapAction(jSONObject.getInt("tap"));
                    actionMenuButton6.setHoldAction(jSONObject.getInt("hold"));
                    actionMenuButton6.setIcon(jSONObject.getInt("icon"));
                    Unit unit6 = Unit.INSTANCE;
                    actionMenuButtonArr[i] = actionMenuButton6;
                }
                return actionMenuButtonArr;
            } catch (Throwable th) {
                Log.w(UtilKt.getTAG(this), th);
                return new ActionMenuButton[0];
            }
        }

        public final void setActionMenu(Context context, Collection<ActionMenuButton> data) throws JSONException {
            String string;
            Intrinsics.checkNotNullParameter(context, "context");
            if (data == null) {
                string = null;
            } else {
                Collection<ActionMenuButton> collection = data;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
                for (ActionMenuButton actionMenuButton : collection) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("tap", actionMenuButton.getTapAction());
                    jSONObject.put("hold", actionMenuButton.getHoldAction());
                    jSONObject.put("icon", actionMenuButton.getIcon());
                    arrayList.add(jSONObject);
                }
                string = new JSONArray((Collection) arrayList).toString();
            }
            PreferenceManager.getDefaultSharedPreferences(context).edit().putString(PrefsKt.PREF_ACTION_MENU_DATA, string).apply();
        }
    }
}
