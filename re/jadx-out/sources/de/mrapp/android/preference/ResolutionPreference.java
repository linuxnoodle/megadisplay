package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.android.validation.EditText;
import de.mrapp.android.validation.ValidationListener;
import de.mrapp.android.validation.Validators;
import de.mrapp.util.Condition;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ResolutionPreference extends AbstractValidateableDialogPreference<CharSequence> {
    private static final Pattern MIN_VALUE_REGEX = Pattern.compile("^(?!0).*");
    private int height;
    private EditText heightEditText;
    private CharSequence heightHint;
    private CharSequence unit;
    private int width;
    private EditText widthEditText;
    private CharSequence widthHint;

    @Override // de.mrapp.android.preference.DialogPreference
    protected final boolean needInputMethod() {
        return true;
    }

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.ResolutionPreference.SavedState.1
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
        public int height;
        public int width;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.width = parcel.readInt();
            this.height = parcel.readInt();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        setPositiveButtonText(android.R.string.ok);
        setNegativeButtonText(android.R.string.cancel);
        addValidator(Validators.notEmpty(getContext(), R.string.resolution_not_empty_error_message));
        addValidator(Validators.number(getContext(), R.string.resolution_number_error_message));
        addValidator(Validators.regex(getContext(), R.string.resolution_min_value_error_message, MIN_VALUE_REGEX));
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractUnitPreference, i, i2);
        try {
            obtainUnit(typedArrayObtainStyledAttributes);
            obtainWidthHint(typedArrayObtainStyledAttributes);
            obtainHeightHint(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainUnit(TypedArray typedArray) {
        CharSequence text = typedArray.getText(R.styleable.AbstractUnitPreference_unit);
        if (text == null) {
            text = getContext().getText(R.string.resolution_preference_unit);
        }
        setUnit(text);
    }

    private void obtainWidthHint(TypedArray typedArray) {
        CharSequence text = typedArray.getText(R.styleable.ResolutionPreference_widthHint);
        if (text == null) {
            text = getContext().getText(R.string.resolution_preference_width_hint);
        }
        setWidthHint(text);
    }

    private void obtainHeightHint(TypedArray typedArray) {
        CharSequence text = typedArray.getText(R.styleable.ResolutionPreference_heightHint);
        if (text == null) {
            text = getContext().getText(R.string.resolution_preference_height_hint);
        }
        setHeightHint(text);
    }

    public ResolutionPreference(Context context) {
        this(context, null);
    }

    public ResolutionPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public ResolutionPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public ResolutionPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public static Pair<Integer, Integer> parseResolution(Context context, String str) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The resolution may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The resolution may not be empty");
        String[] strArrSplit = str.split(context.getString(R.string.resolution_preference_separator));
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Malformed resolution: " + str);
        }
        try {
            return Pair.create(Integer.valueOf(Integer.parseInt(strArrSplit[0])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Resolution contains invalid dimension: " + str, e);
        }
    }

    public static String formatResolution(Context context, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return i + context.getString(R.string.resolution_preference_separator) + i2;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setResolution(int i, int i2) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The width must be at least 1");
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The height must be at least 1");
        this.width = i;
        this.height = i2;
        persistString(formatResolution(getContext(), i, i2));
        notifyChanged();
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

    public final CharSequence getWidthHint() {
        return this.widthHint;
    }

    public final void setWidthHint(CharSequence charSequence) {
        this.widthHint = charSequence;
    }

    public final void setWidthHint(int i) {
        setWidthHint(getContext().getText(i));
    }

    public final CharSequence getHeightHint() {
        return this.heightHint;
    }

    public final void setHeightHint(CharSequence charSequence) {
        this.heightHint = charSequence;
    }

    public final void setHeightHint(int i) {
        setHeightHint(getContext().getText(i));
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary()) {
            return getWidth() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + getContext().getString(R.string.resolution_preference_separator) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + getHeight() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ((Object) getUnit());
        }
        return super.getSummary();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean validate() {
        EditText editText;
        EditText editText2 = this.widthEditText;
        return (editText2 == null || editText2.validate()) && ((editText = this.heightEditText) == null || editText.validate());
    }

    @Override // de.mrapp.android.preference.AbstractValidateableDialogPreference, de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        super.onPrepareDialog(abstractButtonBarDialogBuilder);
        View viewInflate = View.inflate(abstractButtonBarDialogBuilder.getContext(), R.layout.resolution, null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        viewInflate.setLayoutParams(layoutParams);
        ((TextView) viewInflate.findViewById(R.id.unit_text_view)).setText(getUnit());
        EditText editText = (EditText) viewInflate.findViewById(R.id.width_edit_text);
        this.widthEditText = editText;
        editText.addAllValidators(getValidators());
        this.widthEditText.validateOnValueChange(isValidatedOnValueChange());
        this.widthEditText.validateOnFocusLost(isValidatedOnFocusLost());
        this.widthEditText.setErrorColor(getErrorColor());
        this.widthEditText.setHint(getWidthHint());
        EditText editText2 = (EditText) viewInflate.findViewById(R.id.height_edit_text);
        this.heightEditText = editText2;
        editText2.addAllValidators(getValidators());
        this.heightEditText.validateOnValueChange(isValidatedOnValueChange());
        this.heightEditText.validateOnFocusLost(isValidatedOnFocusLost());
        this.heightEditText.setErrorColor(getErrorColor());
        this.heightEditText.setHint(getHeightHint());
        for (ValidationListener<CharSequence> validationListener : getValidationListeners()) {
            this.widthEditText.addValidationListener(validationListener);
            this.heightEditText.addValidationListener(validationListener);
        }
        this.widthEditText.setText(Integer.toString(getWidth()));
        this.heightEditText.setText(Integer.toString(getHeight()));
        EditText editText3 = this.widthEditText;
        editText3.setSelection(editText3.getText() != null ? this.widthEditText.getText().length() : 0);
        abstractButtonBarDialogBuilder.setView(viewInflate);
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z) {
            int i = Integer.parseInt(this.widthEditText.getText().toString());
            int i2 = Integer.parseInt(this.heightEditText.getText().toString());
            if (callChangeListener(formatResolution(getContext(), i, i2))) {
                setResolution(i, i2);
            }
        }
        this.widthEditText = null;
        this.heightEditText = null;
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        Pair<Integer, Integer> resolution = parseResolution(getContext(), obj == null ? getPersistedString(formatResolution(getContext(), getWidth(), getHeight())) : (String) obj);
        setResolution(((Integer) resolution.first).intValue(), ((Integer) resolution.second).intValue());
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.width = getWidth();
        savedState.height = getHeight();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setResolution(savedState.width, savedState.height);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
