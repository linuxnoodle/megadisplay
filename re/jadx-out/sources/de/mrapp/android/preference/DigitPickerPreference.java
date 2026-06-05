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
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DigitPickerPreference extends AbstractNumberPickerPreference {
    private static final int NUMERIC_SYTEM = 10;
    private int currentNumber;
    private int numberOfDigits;
    private NumberPicker[] numberPickers;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.DigitPickerPreference.SavedState.1
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

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractNumberPickerPreference, i, i2);
        try {
            obtainNumberOfDigits(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainNumberOfDigits(TypedArray typedArray) {
        setNumberOfDigits(typedArray.getInteger(R.styleable.DigitPickerPreference_numberOfDigits, getContext().getResources().getInteger(R.integer.digit_picker_preference_default_number_of_digits)));
    }

    private NumberPicker.OnValueChangeListener createNumberPickerListener() {
        return new NumberPicker.OnValueChangeListener() { // from class: de.mrapp.android.preference.DigitPickerPreference.1
            @Override // android.widget.NumberPicker.OnValueChangeListener
            public void onValueChange(android.widget.NumberPicker numberPicker, int i, int i2) {
                int value = 0;
                for (int i3 = 0; i3 < DigitPickerPreference.this.numberPickers.length; i3++) {
                    value = (int) (((double) value) + (((double) DigitPickerPreference.this.numberPickers[i3].getValue()) * Math.pow(10.0d, (DigitPickerPreference.this.numberPickers.length - i3) - 1)));
                }
                DigitPickerPreference.this.currentNumber = value;
            }
        };
    }

    private int getDigit(int i, int i2) {
        return Integer.valueOf(String.format(Locale.getDefault(), "%0" + getNumberOfDigits() + "d", Integer.valueOf(i2)).substring(i, i + 1)).intValue();
    }

    private int getMaxNumber(int i) {
        int iPow = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iPow = (int) (((double) iPow) + (Math.pow(10.0d, i2) * 9.0d));
        }
        return iPow;
    }

    protected final int getCurrentNumber() {
        return this.currentNumber;
    }

    public DigitPickerPreference(Context context) {
        this(context, null);
    }

    public DigitPickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public DigitPickerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        obtainStyledAttributes(attributeSet, i, 0);
    }

    public DigitPickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        obtainStyledAttributes(attributeSet, i, i2);
    }

    public final int getNumberOfDigits() {
        return this.numberOfDigits;
    }

    public final void setNumberOfDigits(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The number of digits must be at least 1");
        this.numberOfDigits = i;
        setNumber(Math.min(getNumber(), getMaxNumber(i)));
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void setNumber(int i) {
        Condition.INSTANCE.ensureAtMaximum(Integer.toString(i).length(), getNumberOfDigits(), "The number must have at maximum " + getNumberOfDigits() + " digits");
        this.currentNumber = i;
        super.setNumber(i);
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void useInputMethod(boolean z) {
        super.useInputMethod(z);
        de.mrapp.android.preference.view.NumberPicker[] numberPickerArr = this.numberPickers;
        if (numberPickerArr != null) {
            for (de.mrapp.android.preference.view.NumberPicker numberPicker : numberPickerArr) {
                numberPicker.setDescendantFocusability(z ? 131072 : 393216);
            }
        }
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference
    public final void wrapSelectorWheel(boolean z) {
        super.wrapSelectorWheel(z);
        de.mrapp.android.preference.view.NumberPicker[] numberPickerArr = this.numberPickers;
        if (numberPickerArr != null) {
            for (de.mrapp.android.preference.view.NumberPicker numberPicker : numberPickerArr) {
                numberPicker.setWrapSelectorWheel(z);
            }
        }
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getContext().getResources().getDimensionPixelSize(R.dimen.digit_picker_width), -2);
        View viewInflate = View.inflate(abstractButtonBarDialogBuilder.getContext(), R.layout.number_picker, null);
        viewInflate.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.number_picker_container);
        this.numberPickers = new de.mrapp.android.preference.view.NumberPicker[getNumberOfDigits()];
        for (int i = 0; i < getNumberOfDigits(); i++) {
            de.mrapp.android.preference.view.NumberPicker numberPicker = new de.mrapp.android.preference.view.NumberPicker(abstractButtonBarDialogBuilder.getContext());
            numberPicker.setMinValue(0);
            numberPicker.setMaxValue(9);
            numberPicker.setValue(getDigit(i, getCurrentNumber()));
            numberPicker.setWrapSelectorWheel(isSelectorWheelWrapped());
            numberPicker.setDescendantFocusability(isInputMethodUsed() ? 131072 : 393216);
            numberPicker.setOnValueChangedListener(createNumberPickerListener());
            this.numberPickers[i] = numberPicker;
            linearLayout.addView(numberPicker, i, layoutParams);
        }
        TextView textView = (TextView) linearLayout.findViewById(R.id.unit_text_view);
        textView.setText(getUnit());
        textView.setVisibility(TextUtils.isEmpty(getUnit()) ? 8 : 0);
        abstractButtonBarDialogBuilder.setView(viewInflate);
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && callChangeListener(Integer.valueOf(getCurrentNumber()))) {
            setNumber(getCurrentNumber());
        } else {
            this.currentNumber = getNumber();
        }
        this.numberPickers = null;
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference, de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentNumber = getCurrentNumber();
        return savedState;
    }

    @Override // de.mrapp.android.preference.AbstractNumberPickerPreference, de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.currentNumber = savedState.currentNumber;
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
