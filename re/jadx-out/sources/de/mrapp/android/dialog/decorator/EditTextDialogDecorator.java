package de.mrapp.android.dialog.decorator;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import de.mrapp.android.dialog.DialogValidator;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.model.ButtonBarDialog;
import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.android.validation.ValidationListener;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class EditTextDialogDecorator extends AbstractDialogDecorator<ButtonBarDialog> implements de.mrapp.android.dialog.model.EditTextDialogDecorator, DialogValidator {
    private static final String ERROR_COLOR_EXTRA = "EditTextDialogDecorator::errorColor";
    private static final String HELPER_TEXT_COLOR_EXTRA = "EditTextDialogDecorator::helperTextColor";
    private static final String HELPER_TEXT_EXTRA = "EditTextDialogDecorator::helperText";
    private static final String HINT_EXTRA = "EditTextDialogDecorator::hint";
    private static final String TEXT_EXTRA = "EditTextDialogDecorator::text";
    private static final String VALIDATE_ON_FOCUS_LOST_EXTRA = "EditTextDialogDecorator::validateOnFocusLost";
    private static final String VALIDATE_ON_VALUE_CHANGE_EXTRA = "EditTextDialogDecorator::validateOnValueChange";
    private EditText editText;
    private ColorStateList errorColor;
    private CharSequence helperText;
    private ColorStateList helperTextColor;
    private CharSequence hint;
    private CharSequence text;
    private TextInputLayout textInputLayout;
    private boolean validateOnFocusLost;
    private boolean validateOnValueChange;
    private final ListenerList<ValidationListener<CharSequence>> validationListeners;
    private final Set<Validator<CharSequence>> validators;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private void inflateEditText() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.edit_text_dialog, (ViewGroup) getRootView(), false);
        ((ButtonBarDialog) getDialog()).setView(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R.id.text_input_layout);
        this.textInputLayout = viewFindViewById instanceof TextInputLayout ? (TextInputLayout) viewFindViewById : null;
        View viewFindViewById2 = viewInflate.findViewById(R.id.edit_text);
        this.editText = viewFindViewById2 instanceof EditText ? (EditText) viewFindViewById2 : null;
        adaptHint();
        adaptErrorColor();
        adaptHelperTextColor();
        adaptHelperText();
        adaptText();
        validate();
        adaptTextChangedListener();
        adaptFocusChangeListener();
    }

    private void adaptText() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setText(this.text);
            CharSequence charSequence = this.text;
            if (charSequence != null) {
                this.editText.setSelection(charSequence.length());
            }
        }
    }

    private void adaptHint() {
        TextInputLayout textInputLayout = this.textInputLayout;
        if (textInputLayout != null) {
            textInputLayout.setHint(this.hint);
            return;
        }
        EditText editText = this.editText;
        if (editText != null) {
            editText.setHint(this.hint);
        }
    }

    private void adaptErrorColor() {
        ColorStateList colorStateList;
        TextInputLayout textInputLayout = this.textInputLayout;
        if (textInputLayout == null || (colorStateList = this.errorColor) == null) {
            return;
        }
        textInputLayout.setErrorTextColor(colorStateList);
    }

    private void adaptHelperTextColor() {
        ColorStateList colorStateList;
        TextInputLayout textInputLayout = this.textInputLayout;
        if (textInputLayout == null || (colorStateList = this.helperTextColor) == null) {
            return;
        }
        textInputLayout.setHelperTextColor(colorStateList);
    }

    private void adaptHelperText() {
        if (this.textInputLayout == null || !TextUtils.isEmpty(getText())) {
            return;
        }
        this.textInputLayout.setHelperText(this.helperText);
        this.textInputLayout.setHelperTextEnabled(true);
    }

    private void showErrorText(CharSequence charSequence) {
        if (this.textInputLayout != null) {
            if (TextUtils.isEmpty(charSequence)) {
                this.textInputLayout.setError(null);
                this.textInputLayout.setErrorEnabled(false);
                adaptHelperTextColor();
            } else {
                this.textInputLayout.setHelperText(null);
                this.textInputLayout.setHelperTextEnabled(false);
                this.textInputLayout.setError(charSequence);
                this.textInputLayout.setErrorEnabled(true);
            }
        }
    }

    private void requestFocus() {
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
        EditText editText = this.editText;
        if (editText != null) {
            editText.requestFocus();
        }
    }

    private void adaptPositiveButtonEnableState(boolean z) {
        Button button = ((ButtonBarDialog) getDialog()).getButton(-1);
        if (button != null) {
            button.setEnabled(z);
        }
    }

    private void adaptTextChangedListener() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.addTextChangedListener(createTextChangedListener());
        }
    }

    private TextWatcher createTextChangedListener() {
        return new TextWatcher() { // from class: de.mrapp.android.dialog.decorator.EditTextDialogDecorator.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                EditTextDialogDecorator.this.text = charSequence;
                if (EditTextDialogDecorator.this.validateOnValueChange) {
                    EditTextDialogDecorator.this.validate();
                }
            }
        };
    }

    private void adaptFocusChangeListener() {
        EditText editText = this.editText;
        if (editText != null) {
            editText.setOnFocusChangeListener(createFocusChangeListener());
        }
    }

    private View.OnFocusChangeListener createFocusChangeListener() {
        return new View.OnFocusChangeListener() { // from class: de.mrapp.android.dialog.decorator.EditTextDialogDecorator.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z || !EditTextDialogDecorator.this.validateOnFocusLost) {
                    return;
                }
                EditTextDialogDecorator.this.validate();
            }
        };
    }

    private void notifyOnValidationFailure(Validator<CharSequence> validator) {
        Iterator<ValidationListener<CharSequence>> it = this.validationListeners.iterator();
        while (it.hasNext()) {
            it.next().onValidationFailure(this, validator);
        }
    }

    private void notifyOnValidationSuccess() {
        Iterator<ValidationListener<CharSequence>> it = this.validationListeners.iterator();
        while (it.hasNext()) {
            it.next().onValidationSuccess(this);
        }
    }

    public EditTextDialogDecorator(ButtonBarDialog buttonBarDialog) {
        super(buttonBarDialog);
        this.validators = new LinkedHashSet();
        this.validationListeners = new ListenerList<>();
        this.validateOnValueChange = true;
        this.validateOnFocusLost = true;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final TextInputLayout getTextInputLayout() {
        return this.textInputLayout;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final EditText getEditText() {
        return this.editText;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getText() {
        return this.text;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setText(CharSequence charSequence) {
        this.text = charSequence;
        adaptText();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getHint() {
        return this.hint;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHint(CharSequence charSequence) {
        this.hint = charSequence;
        adaptHint();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHint(int i) {
        setHint(getContext().getString(i));
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getHelperText() {
        return this.helperText;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperText(CharSequence charSequence) {
        this.helperText = charSequence;
        adaptHelperText();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperText(int i) {
        setHelperText(getContext().getString(i));
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final ColorStateList getErrorColor() {
        return this.errorColor;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setErrorColor(int i) {
        setErrorColor(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setErrorColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.errorColor = colorStateList;
        adaptErrorColor();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final ColorStateList getHelperTextColor() {
        return this.helperTextColor;
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperTextColor(int i) {
        setHelperTextColor(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperTextColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.helperTextColor = colorStateList;
        adaptHelperTextColor();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final Collection<Validator<CharSequence>> getValidators() {
        return Collections.unmodifiableSet(this.validators);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidator(Validator<CharSequence> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.add(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addAllValidators(Collection<Validator<CharSequence>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<CharSequence>> it = collection.iterator();
        while (it.hasNext()) {
            addValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void addAllValidators(Validator<CharSequence>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        for (Validator<CharSequence> validator : validatorArr) {
            addValidator(validator);
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidator(Validator<CharSequence> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.remove(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators(Collection<Validator<CharSequence>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<CharSequence>> it = collection.iterator();
        while (it.hasNext()) {
            addValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void removeAllValidators(Validator<CharSequence>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        for (Validator<CharSequence> validator : validatorArr) {
            addValidator(validator);
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators() {
        this.validators.clear();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean validate() {
        for (Validator<CharSequence> validator : this.validators) {
            if (!validator.validate(getText())) {
                showErrorText(validator.getErrorMessage());
                adaptPositiveButtonEnableState(false);
                notifyOnValidationFailure(validator);
                return false;
            }
        }
        showErrorText(null);
        adaptPositiveButtonEnableState(true);
        notifyOnValidationSuccess();
        return true;
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
    public final void addValidationListener(ValidationListener<CharSequence> validationListener) {
        this.validationListeners.add(validationListener);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidationListener(ValidationListener<CharSequence> validationListener) {
        this.validationListeners.remove(validationListener);
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putCharSequence(TEXT_EXTRA, getText());
        bundle.putCharSequence(HINT_EXTRA, getHint());
        bundle.putCharSequence(HELPER_TEXT_EXTRA, getHelperText());
        bundle.putParcelable(ERROR_COLOR_EXTRA, getErrorColor());
        bundle.putParcelable(HELPER_TEXT_COLOR_EXTRA, getHelperTextColor());
        bundle.putBoolean(VALIDATE_ON_VALUE_CHANGE_EXTRA, isValidatedOnValueChange());
        bundle.putBoolean(VALIDATE_ON_FOCUS_LOST_EXTRA, isValidatedOnFocusLost());
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        setText(bundle.getCharSequence(TEXT_EXTRA));
        setHint(bundle.getCharSequence(HINT_EXTRA));
        setHelperText(bundle.getCharSequence(HELPER_TEXT_EXTRA));
        validateOnValueChange(bundle.getBoolean(VALIDATE_ON_VALUE_CHANGE_EXTRA));
        validateOnFocusLost(bundle.getBoolean(VALIDATE_ON_FOCUS_LOST_EXTRA));
        ColorStateList colorStateList = (ColorStateList) bundle.getParcelable(ERROR_COLOR_EXTRA);
        ColorStateList colorStateList2 = (ColorStateList) bundle.getParcelable(HELPER_TEXT_COLOR_EXTRA);
        if (colorStateList != null) {
            setErrorColor(colorStateList);
        }
        if (colorStateList2 != null) {
            setHelperTextColor(colorStateList2);
        }
        validate();
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        inflateEditText();
        ((ButtonBarDialog) getDialog()).addDialogValidator(this);
        requestFocus();
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        ((ButtonBarDialog) getDialog()).removeDialogValidator(this);
        this.editText = null;
        this.textInputLayout = null;
    }

    @Override // de.mrapp.android.dialog.DialogValidator
    public boolean validate(ValidateableDialog validateableDialog) {
        return validate();
    }
}
