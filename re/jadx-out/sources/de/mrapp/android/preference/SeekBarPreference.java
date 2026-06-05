package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.util.Condition;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes2.dex */
public class SeekBarPreference extends DialogPreference {
    private static final double NUMERIC_SYSTEM = 10.0d;
    private float currentValue;
    private int decimals;
    private CharSequence floatingPointSeparator;
    private int maxValue;
    private int minValue;
    private boolean showProgress;
    private int stepSize;
    private CharSequence[] summaries;
    private CharSequence unit;
    private float value;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.SeekBarPreference.SavedState.1
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
        public float currentValue;
        public float value;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.value = parcel.readFloat();
            this.currentValue = parcel.readFloat();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.value);
            parcel.writeFloat(this.currentValue);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        setPositiveButtonText(android.R.string.ok);
        setNegativeButtonText(android.R.string.cancel);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SeekBarPreference, i, i2);
        TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractUnitPreference, i, i2);
        TypedArray typedArrayObtainStyledAttributes3 = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractNumericPreference, i, i2);
        try {
            obtainDecimals(typedArrayObtainStyledAttributes);
            obtainMaxValue(typedArrayObtainStyledAttributes3);
            obtainMinValue(typedArrayObtainStyledAttributes3);
            obtainStepSize(typedArrayObtainStyledAttributes3);
            obtainUnit(typedArrayObtainStyledAttributes2);
            obtainFloatingPointSeparator(typedArrayObtainStyledAttributes);
            obtainShowProgress(typedArrayObtainStyledAttributes);
            obtainSummaries(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainDecimals(TypedArray typedArray) {
        setDecimals(typedArray.getInteger(R.styleable.SeekBarPreference_decimals, getContext().getResources().getInteger(R.integer.seek_bar_preference_default_decimals)));
    }

    private void obtainMinValue(TypedArray typedArray) {
        setMinValue(typedArray.getInteger(R.styleable.AbstractNumericPreference_min, getContext().getResources().getInteger(R.integer.seek_bar_preference_default_min_value)));
    }

    private void obtainMaxValue(TypedArray typedArray) {
        setMaxValue(typedArray.getInteger(R.styleable.AbstractNumericPreference_android_max, getContext().getResources().getInteger(R.integer.seek_bar_preference_default_max_value)));
    }

    private void obtainStepSize(TypedArray typedArray) {
        setStepSize(typedArray.getInteger(R.styleable.AbstractNumericPreference_stepSize, getContext().getResources().getInteger(R.integer.seek_bar_preference_default_step_size)));
    }

    private void obtainUnit(TypedArray typedArray) {
        setUnit(typedArray.getText(R.styleable.AbstractUnitPreference_unit));
    }

    private void obtainFloatingPointSeparator(TypedArray typedArray) {
        setFloatingPointSeparator(typedArray.getText(R.styleable.SeekBarPreference_floatingPointSeparator));
    }

    private void obtainShowProgress(TypedArray typedArray) {
        showProgress(typedArray.getBoolean(R.styleable.SeekBarPreference_showProgress, getContext().getResources().getBoolean(R.bool.seek_bar_preference_default_show_progress)));
    }

    private void obtainSummaries(TypedArray typedArray) {
        try {
            setSummaries(typedArray.getTextArray(R.styleable.SeekBarPreference_android_summary));
        } catch (Resources.NotFoundException unused) {
            setSummaries(null);
        }
    }

    private float roundToDecimals(float f) {
        return Math.round(getMultiplier() * f) / getMultiplier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMultiplier() {
        return (int) Math.pow(NUMERIC_SYSTEM, getDecimals());
    }

    private SeekBar.OnSeekBarChangeListener createSeekBarListener(final TextView textView) {
        return new SeekBar.OnSeekBarChangeListener() { // from class: de.mrapp.android.preference.SeekBarPreference.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                SeekBarPreference.this.currentValue = r2.getMinValue() + (i / SeekBarPreference.this.getMultiplier());
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                seekBarPreference.currentValue = seekBarPreference.adaptToStepSize(seekBarPreference.currentValue);
                TextView textView2 = textView;
                SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
                textView2.setText(seekBarPreference2.getProgressText(seekBarPreference2.currentValue));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float adaptToStepSize(float f) {
        if (getStepSize() <= 0) {
            return f;
        }
        float minValue = f - getMinValue();
        float stepSize = minValue % getStepSize();
        if (stepSize > getStepSize() / 2.0f) {
            minValue += getStepSize();
        }
        return Math.min((minValue - stepSize) + getMinValue(), getMaxValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getProgressText(float f) {
        NumberFormat numberFormat = NumberFormat.getInstance();
        if (getFloatingPointSeparator() != null && (numberFormat instanceof DecimalFormat)) {
            DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
            decimalFormatSymbols.setDecimalSeparator(getFloatingPointSeparator().charAt(0));
            ((DecimalFormat) numberFormat).setDecimalFormatSymbols(decimalFormatSymbols);
        }
        numberFormat.setMinimumFractionDigits(getDecimals());
        numberFormat.setMaximumFractionDigits(getDecimals());
        String str = numberFormat.format(f);
        if (TextUtils.isEmpty(getUnit())) {
            return str;
        }
        return str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ((Object) getUnit());
    }

    protected final float getCurrentValue() {
        return this.currentValue;
    }

    public SeekBarPreference(Context context) {
        this(context, null);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final float getValue() {
        return this.value;
    }

    public final void setValue(Float f) {
        Condition.INSTANCE.ensureAtLeast(f.floatValue(), getMinValue(), "The value must be at least the minimum value");
        Condition.INSTANCE.ensureAtMaximum(f.floatValue(), getMaxValue(), "The value must be at maximum the maximum value");
        float fAdaptToStepSize = adaptToStepSize(roundToDecimals(f.floatValue()));
        if (this.value != fAdaptToStepSize) {
            this.value = fAdaptToStepSize;
            this.currentValue = fAdaptToStepSize;
            persistFloat(fAdaptToStepSize);
            notifyChanged();
        }
    }

    public final int getMinValue() {
        return this.minValue;
    }

    public final void setMinValue(int i) {
        Condition.INSTANCE.ensureSmaller(i, getMaxValue(), "The minimum value must be less than the maximum value");
        this.minValue = i;
        setValue(Float.valueOf(Math.max(getValue(), i)));
    }

    public final int getMaxValue() {
        return this.maxValue;
    }

    public final void setMaxValue(int i) {
        Condition.INSTANCE.ensureGreater(i, getMinValue(), "The maximum value must be greater than the minimum value");
        this.maxValue = i;
        setValue(Float.valueOf(Math.min(getValue(), i)));
    }

    public final int getRange() {
        return this.maxValue - this.minValue;
    }

    public final int getStepSize() {
        return this.stepSize;
    }

    public final void setStepSize(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The step size must be at least 1");
            Condition.INSTANCE.ensureAtMaximum(i, getRange(), "The step size must be at maximum the range");
        }
        this.stepSize = i;
        setValue(Float.valueOf(adaptToStepSize(getValue())));
    }

    public final int getDecimals() {
        return this.decimals;
    }

    public final void setDecimals(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The decimals must be at least 0");
        this.decimals = i;
        setValue(Float.valueOf(roundToDecimals(getValue())));
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

    public final CharSequence getFloatingPointSeparator() {
        return this.floatingPointSeparator;
    }

    public final void setFloatingPointSeparator(CharSequence charSequence) {
        if (charSequence != null) {
            Condition.INSTANCE.ensureAtMaximum(charSequence.length(), 1, "The floating point separator's length must be 1");
        }
        this.floatingPointSeparator = charSequence;
    }

    public final void setFloatingPointSeparator(int i) {
        setFloatingPointSeparator(getContext().getResources().getText(i));
    }

    public final boolean isProgressShown() {
        return this.showProgress;
    }

    public final void showProgress(boolean z) {
        this.showProgress = z;
    }

    public final CharSequence[] getSummaries() {
        return this.summaries;
    }

    public final void setSummaries(CharSequence[] charSequenceArr) {
        this.summaries = charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary()) {
            return getProgressText(getValue());
        }
        if (getSummaries() != null && getSummaries().length > 0) {
            return getSummaries()[Math.min((int) Math.floor((getValue() - getMinValue()) / (getRange() / getSummaries().length)), getSummaries().length - 1)];
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    public final void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        this.summaries = null;
    }

    @Override // androidx.preference.Preference
    public final void setSummary(int i) {
        try {
            setSummaries(getContext().getResources().getStringArray(i));
        } catch (Resources.NotFoundException unused) {
            super.setSummary(i);
        }
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Float.valueOf(typedArray.getFloat(i, 0.0f));
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setValue(Float.valueOf(obj == null ? getPersistedFloat(getValue()) : ((Float) obj).floatValue()));
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        View viewInflate = View.inflate(abstractButtonBarDialogBuilder.getContext(), R.layout.seek_bar, null);
        viewInflate.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        TextView textView = (TextView) viewInflate.findViewById(R.id.progress_text);
        textView.setText(getProgressText(getCurrentValue()));
        textView.setVisibility(isProgressShown() ? 0 : 8);
        de.mrapp.android.preference.view.SeekBar seekBar = (de.mrapp.android.preference.view.SeekBar) viewInflate.findViewById(R.id.seek_bar);
        seekBar.setMax(getRange() * getMultiplier());
        seekBar.setProgress(Math.round((getCurrentValue() - getMinValue()) * getMultiplier()));
        seekBar.setOnSeekBarChangeListener(createSeekBarListener(textView));
        abstractButtonBarDialogBuilder.setView(viewInflate);
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && callChangeListener(Float.valueOf(getCurrentValue()))) {
            setValue(Float.valueOf(getCurrentValue()));
        } else {
            this.currentValue = getValue();
        }
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentValue = getCurrentValue();
        if (!isPersistent()) {
            savedState.value = getValue();
        } else {
            savedState.value = -1.0f;
        }
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.currentValue = savedState.currentValue;
            if (savedState.value != -1.0f) {
                setValue(Float.valueOf(savedState.value));
            }
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
