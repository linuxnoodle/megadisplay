package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import de.mrapp.android.dialog.DialogValidator;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.android.validation.Validateable;
import de.mrapp.android.validation.ValidationListener;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractValidateableDialogPreference<ValueType> extends DialogPreference implements DialogValidator, Validateable<ValueType> {
    private int errorColor;
    private CharSequence helperText;
    private int helperTextColor;
    private boolean validateOnFocusLost;
    private boolean validateOnValueChange;
    private transient ListenerList<ValidationListener<ValueType>> validationListeners;
    private transient Set<Validator<ValueType>> validators;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        this.validators = new LinkedHashSet();
        this.validationListeners = new ListenerList<>();
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractValidateableView, i, i2);
        try {
            obtainHelperText(typedArrayObtainStyledAttributes);
            obtainHelperTextColor(typedArrayObtainStyledAttributes);
            obtainErrorColor(typedArrayObtainStyledAttributes);
            obtainValidateOnValueChange(typedArrayObtainStyledAttributes);
            obtainValidateOnFocusLost(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainHelperText(TypedArray typedArray) {
        setHelperText(typedArray.getString(R.styleable.AbstractValidateableView_helperText));
    }

    private void obtainHelperTextColor(TypedArray typedArray) {
        setHelperTextColor(typedArray.getColor(R.styleable.AbstractValidateableView_helperTextColor, ContextCompat.getColor(getContext(), R.color.default_helper_text_color)));
    }

    private void obtainErrorColor(TypedArray typedArray) {
        setErrorColor(typedArray.getColor(R.styleable.AbstractValidateableView_errorColor, ContextCompat.getColor(getContext(), R.color.default_error_color)));
    }

    private void obtainValidateOnValueChange(TypedArray typedArray) {
        validateOnValueChange(typedArray.getBoolean(R.styleable.AbstractValidateableView_validateOnValueChange, getContext().getResources().getBoolean(R.bool.validateable_dialog_preference_default_validate_on_value_change)));
    }

    private void obtainValidateOnFocusLost(TypedArray typedArray) {
        validateOnFocusLost(typedArray.getBoolean(R.styleable.AbstractValidateableView_validateOnFocusLost, getContext().getResources().getBoolean(R.bool.validateable_dialog_preference_default_validate_on_focus_lost)));
    }

    protected final ListenerList<ValidationListener<ValueType>> getValidationListeners() {
        return this.validationListeners;
    }

    public AbstractValidateableDialogPreference(Context context) {
        this(context, null);
    }

    public AbstractValidateableDialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractValidateableDialogPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public AbstractValidateableDialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final CharSequence getHelperText() {
        return this.helperText;
    }

    public final void setHelperText(CharSequence charSequence) {
        this.helperText = charSequence;
    }

    public final void setHelperText(int i) {
        setHelperText(getContext().getText(i));
    }

    public final int getErrorColor() {
        return this.errorColor;
    }

    public final void setErrorColor(int i) {
        this.errorColor = i;
    }

    public final int getHelperTextColor() {
        return this.helperTextColor;
    }

    public final void setHelperTextColor(int i) {
        this.helperTextColor = i;
    }

    @Override // de.mrapp.android.dialog.DialogValidator
    public final boolean validate(ValidateableDialog validateableDialog) {
        return validate();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final Collection<Validator<ValueType>> getValidators() {
        return this.validators;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidator(Validator<ValueType> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.add(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addAllValidators(Collection<Validator<ValueType>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<ValueType>> it = collection.iterator();
        while (it.hasNext()) {
            addValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void addAllValidators(Validator<ValueType>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        for (Validator<ValueType> validator : validatorArr) {
            addValidator(validator);
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidator(Validator<ValueType> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.remove(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators(Collection<Validator<ValueType>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<ValueType>> it = collection.iterator();
        while (it.hasNext()) {
            removeValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void removeAllValidators(Validator<ValueType>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        for (Validator<ValueType> validator : validatorArr) {
            removeValidator(validator);
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators() {
        this.validators.clear();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnValueChange() {
        return this.validateOnValueChange;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnValueChange(boolean z) {
        this.validateOnValueChange = z;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnFocusLost() {
        return this.validateOnFocusLost;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnFocusLost(boolean z) {
        this.validateOnFocusLost = z;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidationListener(ValidationListener<ValueType> validationListener) {
        Condition.INSTANCE.ensureNotNull(validationListener, "The listener may not be null");
        this.validationListeners.add(validationListener);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidationListener(ValidationListener<ValueType> validationListener) {
        Condition.INSTANCE.ensureNotNull(validationListener, "The listener may not be null");
        this.validationListeners.remove(validationListener);
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        abstractButtonBarDialogBuilder.addDialogValidator(this);
    }
}
