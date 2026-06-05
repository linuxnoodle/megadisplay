package com.kelocube.mirrorclient.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceManager;
import com.kelocube.mirrorclient.PrefsKt;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.UtilKt;
import com.kelocube.mirrorclient.models.Action;
import de.mrapp.android.preference.ActionPreference;
import de.mrapp.android.preference.ListPreference;
import de.mrapp.android.preference.SeekBarPreference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: SettingsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017J\b\u0010\u001f\u001a\u00020\u0019H\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0016J-\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00102\u000e\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001e0&2\u0006\u0010'\u001a\u00020(H\u0016¢\u0006\u0002\u0010)J\u001a\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u00102\b\u0010,\u001a\u0004\u0018\u00010\u001eH\u0016J\u0014\u0010-\u001a\u00020\u00192\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u001eH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014¨\u0006/"}, d2 = {"Lcom/kelocube/mirrorclient/ui/SettingsFragment;", "Landroidx/preference/PreferenceFragmentCompat;", "()V", "actionParseContext", "Lcom/kelocube/mirrorclient/models/Action$ParseContext;", "getActionParseContext", "()Lcom/kelocube/mirrorclient/models/Action$ParseContext;", "setActionParseContext", "(Lcom/kelocube/mirrorclient/models/Action$ParseContext;)V", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "getDialogOwner", "()Lcom/kelocube/mirrorclient/ui/DialogOwner;", "setDialogOwner", "(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V", "nextRequestCode", "", "getNextRequestCode", "()I", "setNextRequestCode", "(I)V", "requestMicrophoneCode", "getRequestMicrophoneCode", "setRequestMicrophoneCode", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreatePreferences", "rootKey", "", "onDestroy", "onDisplayPreferenceDialog", "preference", "Landroidx/preference/Preference;", "onRequestPermissionsResult", "requestCode", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "setPreferencesFromResource", "preferencesResId", "key", "updateCalibrateVisible", "value_", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SettingsFragment extends PreferenceFragmentCompat {
    public Action.ParseContext actionParseContext;
    public DialogOwner dialogOwner;
    private int nextRequestCode = 1;
    private int requestMicrophoneCode;

    public final DialogOwner getDialogOwner() {
        DialogOwner dialogOwner = this.dialogOwner;
        if (dialogOwner != null) {
            return dialogOwner;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogOwner");
        return null;
    }

    public final void setDialogOwner(DialogOwner dialogOwner) {
        Intrinsics.checkNotNullParameter(dialogOwner, "<set-?>");
        this.dialogOwner = dialogOwner;
    }

    public final Action.ParseContext getActionParseContext() {
        Action.ParseContext parseContext = this.actionParseContext;
        if (parseContext != null) {
            return parseContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("actionParseContext");
        return null;
    }

    public final void setActionParseContext(Action.ParseContext parseContext) {
        Intrinsics.checkNotNullParameter(parseContext, "<set-?>");
        this.actionParseContext = parseContext;
    }

    public final int getNextRequestCode() {
        return this.nextRequestCode;
    }

    public final void setNextRequestCode(int i) {
        this.nextRequestCode = i;
    }

    public final int getRequestMicrophoneCode() {
        return this.requestMicrophoneCode;
    }

    public final void setRequestMicrophoneCode(int i) {
        this.requestMicrophoneCode = i;
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        int[] iArr;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        setActionParseContext(new Action.ParseContext(contextRequireContext));
        try {
            setPreferencesFromResource(R.xml.root_preferences, rootKey);
        } catch (Throwable unused) {
            PreferenceManager.getDefaultSharedPreferences(getContext()).edit().clear().commit();
            setPreferencesFromResource(R.xml.root_preferences, rootKey);
        }
        final Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        int[] iArr2 = {1, 1, 7, 8, 5, 6, 3, 4, 2, 3, 5, 8, 1, 2, 3, 8, 1, 3, 1, 4};
        Point landscapeResolution = UtilKt.getLandscapeResolution(contextRequireContext2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("", contextRequireContext2.getString(R.string.pref_resolution_auto)));
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, 19, 2);
        if (progressionLastElement >= 0) {
            int i = 0;
            while (true) {
                float f = iArr2[i];
                float f2 = iArr2[i + 1];
                int iRoundToInt = MathKt.roundToInt(((landscapeResolution.x * f) / f2) / 2.0f) * 2;
                int iRoundToInt2 = MathKt.roundToInt(((landscapeResolution.y * f) / f2) / 2.0f) * 2;
                if (iRoundToInt2 >= 480) {
                    iArr = iArr2;
                    arrayList.add(new Pair(iRoundToInt + "," + iRoundToInt2, contextRequireContext2.getString(i == 0 ? R.string.pref_resolution_format_native : R.string.pref_resolution_format, Integer.valueOf(iRoundToInt), Integer.valueOf(iRoundToInt2))));
                } else {
                    iArr = iArr2;
                }
                if (i == progressionLastElement) {
                    break;
                }
                i += 2;
                iArr2 = iArr;
            }
        }
        Preference preferenceFindPreference = findPreference(PrefsKt.PREF_RESOLUTION);
        Intrinsics.checkNotNull(preferenceFindPreference);
        ListPreference listPreference = (ListPreference) preferenceFindPreference;
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add((String) ((Pair) it.next()).getFirst());
        }
        listPreference.setEntryValues((CharSequence[]) arrayList3.toArray(new String[0]));
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList4.add((String) ((Pair) it2.next()).getSecond());
        }
        listPreference.setEntries((CharSequence[]) arrayList4.toArray(new String[0]));
        listPreference.setDefaultValue("");
        String value = listPreference.getValue();
        listPreference.setValue(value != null ? value : "");
        Preference preferenceFindPreference2 = findPreference(PrefsKt.PREF_QUALITY);
        Intrinsics.checkNotNull(preferenceFindPreference2);
        ((SeekBarPreference) preferenceFindPreference2).setDialogButtonTextColor(ColorStateList.valueOf(ContextCompat.getColor(contextRequireContext2, R.color.colorOnPrimary)));
        Preference preferenceFindPreference3 = findPreference("session_menu_customize");
        Intrinsics.checkNotNull(preferenceFindPreference3);
        ((ActionPreference) preferenceFindPreference3).setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment$$ExternalSyntheticLambda0
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference) {
                return SettingsFragment.onCreatePreferences$lambda$2(this.f$0, contextRequireContext2, preference);
            }
        });
        Preference preferenceFindPreference4 = findPreference("ip_address");
        Intrinsics.checkNotNull(preferenceFindPreference4);
        final de.mrapp.android.preference.Preference preference = (de.mrapp.android.preference.Preference) preferenceFindPreference4;
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment$onCreatePreferences$updateIp$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                de.mrapp.android.preference.Preference preference2 = preference;
                String wifiIP = UtilKt.getWifiIP(contextRequireContext2);
                if (wifiIP == null) {
                    wifiIP = contextRequireContext2.getString(R.string.pref_ip_address_no_wifi);
                }
                preference2.setSummary(wifiIP);
            }
        };
        preference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment$$ExternalSyntheticLambda1
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference2) {
                return SettingsFragment.onCreatePreferences$lambda$3(function0, preference2);
            }
        });
        function0.invoke();
        ListPreference listPreference2 = (ListPreference) findPreference(PrefsKt.PREF_STYLUS_TYPE);
        if (listPreference2 != null) {
            listPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment$$ExternalSyntheticLambda2
                @Override // androidx.preference.Preference.OnPreferenceChangeListener
                public final boolean onPreferenceChange(Preference preference2, Object obj) {
                    return SettingsFragment.onCreatePreferences$lambda$4(contextRequireContext2, this, preference2, obj);
                }
            });
        }
        Preference preferenceFindPreference5 = findPreference("stylus_calibrate");
        Intrinsics.checkNotNull(preferenceFindPreference5);
        ((ActionPreference) preferenceFindPreference5).setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment$$ExternalSyntheticLambda3
            @Override // androidx.preference.Preference.OnPreferenceClickListener
            public final boolean onPreferenceClick(Preference preference2) {
                return SettingsFragment.onCreatePreferences$lambda$5(this.f$0, contextRequireContext2, preference2);
            }
        });
        updateCalibrateVisible$default(this, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$2(SettingsFragment this$0, Context context, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        this$0.startActivity(new Intent(context, (Class<?>) EditActionMenuActivity.class));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$3(Function0 updateIp, Preference preference) {
        Intrinsics.checkNotNullParameter(updateIp, "$updateIp");
        updateIp.invoke();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$4(Context context, SettingsFragment this$0, Preference preference, Object obj) {
        boolean z;
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!Intrinsics.areEqual(obj, "2") || ActivityCompat.checkSelfPermission(context, "android.permission.RECORD_AUDIO") == 0) {
            z = true;
        } else {
            int i = this$0.nextRequestCode;
            this$0.nextRequestCode = i + 1;
            this$0.requestMicrophoneCode = i;
            this$0.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, i);
            z = false;
        }
        if (z) {
            this$0.updateCalibrateVisible(obj instanceof String ? (String) obj : null);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreatePreferences$lambda$5(SettingsFragment this$0, Context context, Preference preference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        this$0.startActivity(new Intent(context, (Class<?>) CalibrateStylusActivity.class));
        return true;
    }

    static /* synthetic */ void updateCalibrateVisible$default(SettingsFragment settingsFragment, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        settingsFragment.updateCalibrateVisible(str);
    }

    private final void updateCalibrateVisible(String value_) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getContext());
        if (value_ == null) {
            value_ = defaultSharedPreferences.getString(PrefsKt.PREF_STYLUS_TYPE, null);
        }
        boolean zAreEqual = Intrinsics.areEqual(value_, "2");
        Preference preferenceFindPreference = findPreference("stylus_calibrate");
        Intrinsics.checkNotNull(preferenceFindPreference);
        ((ActionPreference) preferenceFindPreference).setVisible(zAreEqual);
        if (!zAreEqual || defaultSharedPreferences.contains(PrefsKt.PREF_SONARPEN_MIN)) {
            return;
        }
        startActivity(new Intent(getContext(), (Class<?>) CalibrateStylusActivity.class));
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Integer numFirstOrNull;
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if (requestCode == this.requestMicrophoneCode && (numFirstOrNull = ArraysKt.firstOrNull(grantResults)) != null && numFirstOrNull.intValue() == 0) {
            ListPreference listPreference = (ListPreference) findPreference(PrefsKt.PREF_STYLUS_TYPE);
            if (listPreference != null) {
                listPreference.setValue("2");
            }
            updateCalibrateVisible$default(this, null, 1, null);
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void setPreferencesFromResource(int preferencesResId, String key) {
        super.setPreferencesFromResource(preferencesResId, key);
        Preference preferenceFindPreference = findPreference(PrefsKt.PREF_BUTTON_FUNC);
        Intrinsics.checkNotNull(preferenceFindPreference);
        MyDialogPreference myDialogPreference = (MyDialogPreference) preferenceFindPreference;
        myDialogPreference.setSummary(Action.INSTANCE.toString(getActionParseContext(), myDialogPreference.getSharedPreferences().getInt(PrefsKt.PREF_BUTTON_FUNC, PrefsKt.PREF_BUTTON_FUNC_DEFAULT), requireContext().getString(R.string.pref_button_func_none)));
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.kelocube.mirrorclient.ui.SettingsActivity");
        setDialogOwner(new DialogOwner((SettingsActivity) activity));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getDialogOwner().close();
        super.onDestroy();
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    public void onDisplayPreferenceDialog(final Preference preference) {
        Intrinsics.checkNotNullParameter(preference, "preference");
        if (Intrinsics.areEqual(preference.getKey(), PrefsKt.PREF_BUTTON_FUNC)) {
            DialogOwner.showDialog$default(getDialogOwner(), null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment.onDisplayPreferenceDialog.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Dialog invoke(final Context context) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    String string = preference.getTitle().toString();
                    int i = preference.getSharedPreferences().getInt(PrefsKt.PREF_BUTTON_FUNC, PrefsKt.PREF_BUTTON_FUNC_DEFAULT);
                    final Preference preference2 = preference;
                    final SettingsFragment settingsFragment = this;
                    return EditActionDialogKt.editActionDialog(context, string, i, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.SettingsFragment.onDisplayPreferenceDialog.1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i2) {
                            preference2.getSharedPreferences().edit().putInt(PrefsKt.PREF_BUTTON_FUNC, i2).apply();
                            preference2.setSummary(Action.INSTANCE.toString(settingsFragment.getActionParseContext(), i2, context.getString(R.string.pref_button_func_none)));
                        }
                    });
                }
            }, 1, null);
        } else {
            super.onDisplayPreferenceDialog(preference);
        }
    }
}
