package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.PreferenceViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class SwitchPreference extends AbstractCompoundButtonPreference {
    private CharSequence switchTextOff;
    private CharSequence switchTextOn;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        setWidgetLayoutResource(R.layout.switch_widget);
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SwitchWidgetPreference, i, i2);
        try {
            obtainSwitchTextOn(typedArrayObtainStyledAttributes);
            obtainSwitchTextOff(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainSwitchTextOn(TypedArray typedArray) {
        setSwitchTextOn(typedArray.getText(R.styleable.SwitchWidgetPreference_android_switchTextOn));
    }

    private void obtainSwitchTextOff(TypedArray typedArray) {
        setSwitchTextOff(typedArray.getText(R.styleable.SwitchWidgetPreference_android_switchTextOff));
    }

    private void adaptSwitch(PreferenceViewHolder preferenceViewHolder) {
        View viewFindViewById = preferenceViewHolder.findViewById(R.id.compound_button);
        if (viewFindViewById instanceof SwitchCompat) {
            SwitchCompat switchCompat = (SwitchCompat) viewFindViewById;
            switchCompat.setTextOn(getSwitchTextOn());
            switchCompat.setTextOff(getSwitchTextOff());
            switchCompat.setShowText((TextUtils.isEmpty(getSwitchTextOn()) && TextUtils.isEmpty(getSwitchTextOff())) ? false : true);
        }
    }

    private CompoundButton.OnCheckedChangeListener createCheckedChangeListener() {
        return new CompoundButton.OnCheckedChangeListener() { // from class: de.mrapp.android.preference.SwitchPreference.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (SwitchPreference.this.getOnPreferenceChangeListener() == null || SwitchPreference.this.getOnPreferenceChangeListener().onPreferenceChange(SwitchPreference.this, Boolean.valueOf(z))) {
                    SwitchPreference.this.setChecked(z);
                } else {
                    SwitchPreference.this.setChecked(!z);
                }
            }
        };
    }

    public SwitchPreference(Context context) {
        this(context, null);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.preferenceStyle);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final CharSequence getSwitchTextOn() {
        return this.switchTextOn;
    }

    public final void setSwitchTextOn(CharSequence charSequence) {
        this.switchTextOn = charSequence;
        notifyChanged();
    }

    public final void setSwitchTextOn(int i) {
        setSwitchTextOn(getContext().getString(i));
    }

    public final CharSequence getSwitchTextOff() {
        return this.switchTextOff;
    }

    public final void setSwitchTextOff(CharSequence charSequence) {
        this.switchTextOff = charSequence;
        notifyChanged();
    }

    public final void setSwitchTextOff(int i) {
        setSwitchTextOff(getContext().getString(i));
    }

    @Override // de.mrapp.android.preference.AbstractCompoundButtonPreference, de.mrapp.android.preference.AbstractTwoStatePreference, androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        adaptSwitch(preferenceViewHolder);
    }
}
