package de.mrapp.android.preference.view;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import de.mrapp.android.preference.R;
import de.mrapp.android.util.ThemeUtil;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class NumberPicker extends android.widget.NumberPicker {
    private static final String TAG = "de.mrapp.android.preference.view.NumberPicker";
    private int seekBarColor;

    private void applyTheme() {
        setDividerColor(ThemeUtil.getColor(getContext(), R.attr.colorAccent));
    }

    public NumberPicker(Context context) {
        super(context);
        applyTheme();
    }

    public NumberPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        applyTheme();
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        applyTheme();
    }

    public NumberPicker(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        applyTheme();
    }

    public final int getDividerColor() {
        return this.seekBarColor;
    }

    public final void setDividerColor(int i) {
        this.seekBarColor = i;
        try {
            Field declaredField = getClass().getSuperclass().getDeclaredField("mSelectionDivider");
            declaredField.setAccessible(true);
            declaredField.set(this, new ColorDrawable(i));
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException e) {
            Log.w(TAG, "Failed to set divider color", e);
        }
    }
}
