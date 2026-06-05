package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ActionPreference extends Preference {
    private ColorStateList textColor;
    private TextView textView;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        setLayoutResource(R.layout.action_preference);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ActionPreference, i, i2);
        try {
            obtainTextColor(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainTextColor(TypedArray typedArray) {
        ColorStateList colorStateList = typedArray.getColorStateList(R.styleable.ActionPreference_android_textColor);
        if (colorStateList == null) {
            colorStateList = ContextCompat.getColorStateList(getContext(), R.color.action_preference_text_color);
        }
        setTextColor(colorStateList);
    }

    private void adaptTextColor() {
        TextView textView = this.textView;
        if (textView != null) {
            textView.setTextColor(this.textColor);
        }
    }

    public ActionPreference(Context context) {
        this(context, null);
    }

    public ActionPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.preferenceStyle);
    }

    public ActionPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
        initialize(attributeSet, i, 0);
    }

    public ActionPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final ColorStateList getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(int i) {
        setTextColor(ColorStateList.valueOf(i));
    }

    public final void setTextColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.textColor = colorStateList;
        adaptTextColor();
    }

    @Override // de.mrapp.android.preference.Preference, androidx.preference.Preference
    public final void performClick() {
        Preference.OnPreferenceClickListener onPreferenceClickListener = getOnPreferenceClickListener();
        if (onPreferenceClickListener != null) {
            onPreferenceClickListener.onPreferenceClick(this);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.findViewById(android.R.id.title);
        this.textView = textView;
        textView.setAllCaps(true);
        adaptTextColor();
    }
}
