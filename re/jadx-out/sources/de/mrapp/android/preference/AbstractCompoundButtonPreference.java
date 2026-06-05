package de.mrapp.android.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import androidx.preference.PreferenceViewHolder;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractCompoundButtonPreference extends AbstractTwoStatePreference {
    private void adaptCompoundButton(PreferenceViewHolder preferenceViewHolder) {
        View viewFindViewById = preferenceViewHolder.findViewById(R.id.compound_button);
        if (viewFindViewById instanceof CompoundButton) {
            CompoundButton compoundButton = (CompoundButton) viewFindViewById;
            compoundButton.setOnCheckedChangeListener(null);
            compoundButton.setChecked(isChecked());
            compoundButton.setOnCheckedChangeListener(createCheckedChangeListener());
        }
    }

    private CompoundButton.OnCheckedChangeListener createCheckedChangeListener() {
        return new CompoundButton.OnCheckedChangeListener() { // from class: de.mrapp.android.preference.AbstractCompoundButtonPreference.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (AbstractCompoundButtonPreference.this.getOnPreferenceChangeListener() == null || AbstractCompoundButtonPreference.this.getOnPreferenceChangeListener().onPreferenceChange(AbstractCompoundButtonPreference.this, Boolean.valueOf(z))) {
                    AbstractCompoundButtonPreference.this.setChecked(z);
                } else {
                    AbstractCompoundButtonPreference.this.setChecked(!z);
                }
            }
        };
    }

    public AbstractCompoundButtonPreference(Context context) {
        super(context);
    }

    public AbstractCompoundButtonPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AbstractCompoundButtonPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AbstractCompoundButtonPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // de.mrapp.android.preference.AbstractTwoStatePreference, androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        adaptCompoundButton(preferenceViewHolder);
    }

    @Override // de.mrapp.android.preference.AbstractTwoStatePreference
    protected void onCheckedChanged(boolean z) {
        notifyChanged();
    }
}
