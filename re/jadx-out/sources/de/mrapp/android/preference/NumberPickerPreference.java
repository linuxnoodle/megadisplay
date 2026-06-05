package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.TextView;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.preference.view.NumberPicker;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class NumberPickerPreference extends AbstractNumberPickerPreference {
    private int currentIndex;
    private int maxNumber;
    private int minNumber;
    private NumberPicker numberPicker;
    private int stepSize;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.NumberPickerPreference.SavedState.1
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
        public int currentNumber;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.currentNumber = parcel.readInt();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentNumber);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractNumericPreference, i, i2);
        try {
            obtainMaxNumber(typedArrayObtainStyledAttributes);
            obtainMinNumber(typedArrayObtainStyledAttributes);
            obtainStepSize(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainMaxNumber(TypedArray typedArray) {
        setMaxNumber(typedArray.getInteger(R.styleable.AbstractNumericPreference_android_max, getContext().getResources().getInteger(R.integer.number_picker_preference_default_max_number)));
    }

    private void obtainMinNumber(TypedArray typedArray) {
        setMinNumber(typedArray.getInteger(R.styleable.AbstractNumericPreference_min, getContext().getResources().getInteger(R.integer.number_picker_preference_default_min_number)));
    }

    private void obtainStepSize(TypedArray typedArray) {
        setStepSize(typedArray.getInteger(R.styleable.AbstractNumericPreference_stepSize, getContext().getResources().getInteger(R.integer.number_picker_preference_default_step_size)));
    }

    private int adaptToStepSize(int i) {
        if (getStepSize() <= 0) {
            return i;
        }
        int minNumber = i - getMinNumber();
        int stepSize = minNumber % getStepSize();
        if (stepSize > getStepSize() / 2.0f) {
            minNumber += getStepSize();
        }
        return Math.min((minNumber - stepSize) + getMinNumber(), getMaxNumber());
    }

    private String[] createDisplayedValues() {
        int iCeil = ((int) Math.ceil(((double) getRange()) / ((double) getStepSize()))) + 1;
        String[] strArr = new String[iCeil];
        int minNumber = getMinNumber();
        for (int i = 0; i < iCeil; i++) {
            strArr[i] = String.valueOf(minNumber);
            minNumber = Math.min(minNumber + getStepSize(), getMaxNumber());
        }
        return strArr;
    }

    private NumberPicker.OnValueChangeListener createNumberPickerListener() {
        return new NumberPicker.OnValueChangeListener() { // from class: de.mrapp.android.preference.NumberPickerPreference.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(android.widget.NumberPicker numberPicker, int i, int i2) {
                numberPicker.setValue(i2);
                NumberPickerPreference numberPickerPreference = NumberPickerPreference.this;
                numberPickerPreference.currentIndex = numberPickerPreference.getMinNumber() + (i2 * NumberPickerPreference.this.getStepSize());
            }
        };
    }

    protected final int getCurrentIndex() {
        return this.currentIndex;
    }

    public NumberPickerPreference(Context context) {
        this(context, null);
    }

    public NumberPickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public NumberPickerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public NumberPickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final int getMinNumber() {
        return this.minNumber;
    }

    public final void setMinNumber(int i) {
        Condition.INSTANCE.ensureSmaller(i, getMaxNumber(), "The minimum number must be less than the maximum number");
        this.minNumber = i;
        setNumber(Math.max(getNumber(), i));
    }

    public final int getMaxNumber() {
        return this.maxNumber;
    }

    public final void setMaxNumber(int i) {
        Condition.INSTANCE.ensureGreater(i, getMinNumber(), "The maximum number must be greater than the minimum number");
        this.maxNumber = i;
        setNumber(Math.min(getNumber(), i));
    }

    public final int getRange() {
        return this.maxNumber - this.minNumber;
    }

    public final int getStepSize() {
        return this.stepSize;
    }

    public final void setStepSize(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The step size must be at least 1");
        Condition.INSTANCE.ensureAtMaximum(i, getRange(), "The step size must be at maximum the range");
        this.stepSize = i;
        setNumber(adaptToStepSize(getNumber()));
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void setNumber(int i) {
        Condition.INSTANCE.ensureAtLeast(i, getMinNumber(), "The number must be at least the minimum number");
        Condition.INSTANCE.ensureAtMaximum(i, getMaxNumber(), "The number must be at maximum the maximum number");
        int iAdaptToStepSize = adaptToStepSize(i);
        this.currentIndex = iAdaptToStepSize;
        super.setNumber(iAdaptToStepSize);
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void useInputMethod(boolean z) {
        super.useInputMethod(z);
        de.mrapp.android.preference.view.NumberPicker numberPicker = this.numberPicker;
        if (numberPicker != null) {
            numberPicker.setDescendantFocusability(z ? 131072 : 393216);
        }
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void wrapSelectorWheel(boolean z) {
        super.wrapSelectorWheel(z);
        de.mrapp.android.preference.view.NumberPicker numberPicker = this.numberPicker;
        if (numberPicker != null) {
            numberPicker.setWrapSelectorWheel(z);
        }
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        View viewInflate = View.inflate(abstractButtonBarDialogBuilder.getContext(), R.layout.number_picker, null);
        viewInflate.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.number_picker_container);
        String[] strArrCreateDisplayedValues = createDisplayedValues();
        de.mrapp.android.preference.view.NumberPicker numberPicker = new de.mrapp.android.preference.view.NumberPicker(abstractButtonBarDialogBuilder.getContext());
        this.numberPicker = numberPicker;
        numberPicker.setDisplayedValues(strArrCreateDisplayedValues);
        this.numberPicker.setMinValue(0);
        this.numberPicker.setMaxValue(strArrCreateDisplayedValues.length - 1);
        this.numberPicker.setValue(Math.round((getCurrentIndex() - getMinNumber()) / getStepSize()));
        this.numberPicker.setWrapSelectorWheel(isSelectorWheelWrapped());
        this.numberPicker.setDescendantFocusability(isInputMethodUsed() ? 131072 : 393216);
        this.numberPicker.setOnValueChangedListener(createNumberPickerListener());
        linearLayout.addView(this.numberPicker, 0, new LinearLayout.LayoutParams(-2, -2));
        TextView textView = (TextView) linearLayout.findViewById(R.id.unit_text_view);
        textView.setText(getUnit());
        textView.setVisibility(TextUtils.isEmpty(getUnit()) ? 8 : 0);
        abstractButtonBarDialogBuilder.setView(viewInflate);
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && callChangeListener(Integer.valueOf(getCurrentIndex()))) {
            setNumber(getCurrentIndex());
        } else {
            this.currentIndex = getNumber();
        }
        this.numberPicker = null;
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference, de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentNumber = getCurrentIndex();
        return savedState;
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference, de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.currentIndex = savedState.currentNumber;
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
