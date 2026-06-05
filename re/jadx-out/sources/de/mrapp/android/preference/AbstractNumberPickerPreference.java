package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import de.mrapp.android.util.view.AbstractSavedState;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractNumberPickerPreference extends DialogPreference {
    private int number;
    private CharSequence unit;
    private boolean useInputMethod;
    private boolean wrapSelectorWheel;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.AbstractNumberPickerPreference.SavedState.1
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
        public int number;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.number = parcel.readInt();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.number);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        setPositiveButtonText(android.R.string.ok);
        setNegativeButtonText(android.R.string.cancel);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractNumberPickerPreference, i, i2);
        TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractUnitPreference, i, i2);
        try {
            obtainUseInputMethod(typedArrayObtainStyledAttributes);
            obtainWrapSelectorWheel(typedArrayObtainStyledAttributes);
            obtainUnit(typedArrayObtainStyledAttributes2);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainUseInputMethod(TypedArray typedArray) {
        useInputMethod(typedArray.getBoolean(R.styleable.AbstractNumberPickerPreference_useInputMethod, getContext().getResources().getBoolean(R.bool.number_picker_preference_default_use_input_method)));
    }

    private void obtainWrapSelectorWheel(TypedArray typedArray) {
        wrapSelectorWheel(typedArray.getBoolean(R.styleable.AbstractNumberPickerPreference_wrapSelectorWheel, getContext().getResources().getBoolean(R.bool.number_picker_preference_default_wrap_selector_wheel)));
    }

    private void obtainUnit(TypedArray typedArray) {
        setUnit(typedArray.getText(R.styleable.AbstractUnitPreference_unit));
    }

    public AbstractNumberPickerPreference(Context context) {
        this(context, null);
    }

    public AbstractNumberPickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractNumberPickerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public AbstractNumberPickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final int getNumber() {
        return this.number;
    }

    public void setNumber(int i) {
        if (this.number != i) {
            this.number = i;
            persistInt(i);
            notifyChanged();
        }
    }

    public final boolean isInputMethodUsed() {
        return this.useInputMethod;
    }

    public void useInputMethod(boolean z) {
        this.useInputMethod = z;
    }

    public final boolean isSelectorWheelWrapped() {
        return this.wrapSelectorWheel;
    }

    public void wrapSelectorWheel(boolean z) {
        this.wrapSelectorWheel = z;
    }

    public final CharSequence getUnit() {
        return this.unit;
    }

    public final void setUnit(CharSequence charSequence) {
        this.unit = charSequence;
    }

    public final void setUnit(int i) {
        setUnit(getContext().getText(i));
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        String str;
        if (isValueShownAsSummary()) {
            if (TextUtils.isEmpty(getUnit())) {
                str = "";
            } else {
                str = MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ((Object) getUnit());
            }
            return Integer.toString(getNumber()) + str;
        }
        return super.getSummary();
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected final boolean needInputMethod() {
        return isInputMethodUsed();
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setNumber(obj == null ? getPersistedInt(getNumber()) : ((Integer) obj).intValue());
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.number = getNumber();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setNumber(savedState.number);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
