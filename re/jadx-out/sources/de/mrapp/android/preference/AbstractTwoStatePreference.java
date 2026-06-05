package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.Checkable;
import androidx.preference.PreferenceViewHolder;
import de.mrapp.android.util.view.AbstractSavedState;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractTwoStatePreference extends Preference implements Checkable {
    private boolean checked;
    private boolean disableDependentsState;
    private CharSequence summaryOff;
    private CharSequence summaryOn;

    protected void onCheckedChanged(boolean z) {
    }

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.AbstractTwoStatePreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public boolean checked;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.checked = parcel.readInt() > 1;
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractTwoStatePreference, i, i2);
        try {
            obtainSummaryOn(typedArrayObtainStyledAttributes);
            obtainSummaryOff(typedArrayObtainStyledAttributes);
            obtainDisableDependantsState(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainSummaryOn(TypedArray typedArray) {
        setSummaryOn(typedArray.getText(R.styleable.AbstractTwoStatePreference_android_summaryOn));
    }

    private void obtainSummaryOff(TypedArray typedArray) {
        setSummaryOff(typedArray.getText(R.styleable.AbstractTwoStatePreference_android_summaryOff));
    }

    private void obtainDisableDependantsState(TypedArray typedArray) {
        setDisableDependentsState(typedArray.getBoolean(R.styleable.AbstractTwoStatePreference_android_disableDependentsState, getContext().getResources().getBoolean(R.bool.two_state_preference_default_disable_dependents_state)));
    }

    public AbstractTwoStatePreference(Context context) {
        this(context, null);
    }

    public AbstractTwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractTwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        obtainStyledAttributes(attributeSet, i, 0);
    }

    public AbstractTwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        obtainStyledAttributes(attributeSet, i, i2);
    }

    public final CharSequence getSummaryOn() {
        return this.summaryOn;
    }

    public final void setSummaryOn(CharSequence charSequence) {
        this.summaryOn = charSequence;
        notifyChanged();
    }

    public final void setSummaryOn(int i) {
        setSummaryOn(getContext().getText(i));
    }

    public final CharSequence getSummaryOff() {
        return this.summaryOff;
    }

    public final void setSummaryOff(int i) {
        setSummaryOff(getContext().getText(i));
        notifyChanged();
    }

    public final void setSummaryOff(CharSequence charSequence) {
        this.summaryOff = charSequence;
    }

    public final boolean getDisableDependentsState() {
        return this.disableDependentsState;
    }

    public final void setDisableDependentsState(boolean z) {
        this.disableDependentsState = z;
        notifyChanged();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        boolean zShouldDisableDependents = shouldDisableDependents();
        if (this.checked != z) {
            this.checked = z;
            persistBoolean(z);
            boolean zShouldDisableDependents2 = shouldDisableDependents();
            if (zShouldDisableDependents2 != zShouldDisableDependents) {
                notifyDependencyChange(zShouldDisableDependents2);
            }
            notifyChanged();
            onCheckedChanged(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // de.mrapp.android.preference.Preference, androidx.preference.Preference
    public final void performClick() {
        onClick();
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return getDisableDependentsState() ? isChecked() : !isChecked() || super.shouldDisableDependents();
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isChecked() && !TextUtils.isEmpty(getSummaryOn())) {
            return getSummaryOn();
        }
        if (!isChecked() && !TextUtils.isEmpty(getSummaryOff())) {
            return getSummaryOff();
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setChecked(obj == null ? getPersistedBoolean(isChecked()) : ((Boolean) obj).booleanValue());
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        super.onClick();
        boolean z = !isChecked();
        if (callChangeListener(Boolean.valueOf(z))) {
            setChecked(z);
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        preferenceViewHolder.itemView.setSelected(isChecked());
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.checked = isChecked();
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setChecked(savedState.checked);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
