package de.mrapp.android.dialog;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.model.EditTextDialogDecorator;
import de.mrapp.android.validation.ValidationListener;
import de.mrapp.android.validation.Validator;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class EditTextDialog extends AbstractButtonBarDialog implements EditTextDialogDecorator {
    private final de.mrapp.android.dialog.decorator.EditTextDialogDecorator decorator;

    public static class Builder extends AbstractButtonBarDialogBuilder<EditTextDialog, Builder> {
        private void obtainErrorColor(int i) {
            ColorStateList colorStateList = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogErrorColor}).getColorStateList(0);
            if (colorStateList != null) {
                setErrorColor(colorStateList);
            }
        }

        private void obtainHelperTextColor(int i) {
            ColorStateList colorStateList = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogHelperTextColor}).getColorStateList(0);
            if (colorStateList != null) {
                setHelperTextColor(colorStateList);
            }
        }

        public Builder(Context context) {
            super(context);
        }

        public Builder(Context context, int i) {
            super(context, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addValidator(Validator<CharSequence> validator) {
            ((EditTextDialog) getProduct()).addValidator(validator);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addAllValidators(Collection<Validator<CharSequence>> collection) {
            ((EditTextDialog) getProduct()).addAllValidators(collection);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addAllValidators(Validator<CharSequence>... validatorArr) {
            ((EditTextDialog) getProduct()).addAllValidators(validatorArr);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder validateOnValueChange(boolean z) {
            ((EditTextDialog) getProduct()).validateOnValueChange(z);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder validateOnFocusLost(boolean z) {
            ((EditTextDialog) getProduct()).validateOnFocusLost(z);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addValidationListener(ValidationListener<CharSequence> validationListener) {
            ((EditTextDialog) getProduct()).addValidationListener(validationListener);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setText(CharSequence charSequence) {
            ((EditTextDialog) getProduct()).setText(charSequence);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHint(CharSequence charSequence) {
            ((EditTextDialog) getProduct()).setHint(charSequence);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHint(int i) {
            ((EditTextDialog) getProduct()).setHint(i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHelperText(CharSequence charSequence) {
            ((EditTextDialog) getProduct()).setHelperText(charSequence);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHelperText(int i) {
            ((EditTextDialog) getProduct()).setHelperText(i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setErrorColor(int i) {
            ((EditTextDialog) getProduct()).setErrorColor(i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setErrorColor(ColorStateList colorStateList) {
            ((EditTextDialog) getProduct()).setErrorColor(colorStateList);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHelperTextColor(int i) {
            ((EditTextDialog) getProduct()).setHelperTextColor(i);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setHelperTextColor(ColorStateList colorStateList) {
            ((EditTextDialog) getProduct()).setHelperTextColor(colorStateList);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final EditTextDialog show() {
            EditTextDialog editTextDialog = (EditTextDialog) create();
            editTextDialog.show();
            return editTextDialog;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final EditTextDialog onCreateProduct() {
            return new EditTextDialog(getContext(), getThemeResourceId());
        }

        @Override // de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder, de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder, de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
        protected final void obtainStyledAttributes(int i) {
            super.obtainStyledAttributes(i);
            obtainErrorColor(i);
            obtainHelperTextColor(i);
        }
    }

    protected EditTextDialog(Context context, int i) {
        super(context, i);
        de.mrapp.android.dialog.decorator.EditTextDialogDecorator editTextDialogDecorator = new de.mrapp.android.dialog.decorator.EditTextDialogDecorator(this);
        this.decorator = editTextDialogDecorator;
        addDecorator(editTextDialogDecorator);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final TextInputLayout getTextInputLayout() {
        return this.decorator.getTextInputLayout();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final EditText getEditText() {
        return this.decorator.getEditText();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setText(CharSequence charSequence) {
        this.decorator.setText(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getText() {
        return this.decorator.getText();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getHint() {
        return this.decorator.getHint();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHint(CharSequence charSequence) {
        this.decorator.setHint(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHint(int i) {
        this.decorator.setHint(i);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final CharSequence getHelperText() {
        return this.decorator.getHelperText();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperText(CharSequence charSequence) {
        this.decorator.setHelperText(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperText(int i) {
        this.decorator.setHelperText(i);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final ColorStateList getErrorColor() {
        return this.decorator.getErrorColor();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setErrorColor(int i) {
        this.decorator.setErrorColor(i);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setErrorColor(ColorStateList colorStateList) {
        this.decorator.setErrorColor(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final ColorStateList getHelperTextColor() {
        return this.decorator.getHelperTextColor();
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperTextColor(int i) {
        this.decorator.setHelperTextColor(i);
    }

    @Override // de.mrapp.android.dialog.model.EditTextDialogDecorator
    public final void setHelperTextColor(ColorStateList colorStateList) {
        this.decorator.setHelperTextColor(colorStateList);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final Collection<Validator<CharSequence>> getValidators() {
        return this.decorator.getValidators();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidator(Validator<CharSequence> validator) {
        this.decorator.addValidator(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addAllValidators(Collection<Validator<CharSequence>> collection) {
        this.decorator.addAllValidators(collection);
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void addAllValidators(Validator<CharSequence>... validatorArr) {
        this.decorator.addAllValidators(validatorArr);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidator(Validator<CharSequence> validator) {
        this.decorator.removeValidator(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators(Collection<Validator<CharSequence>> collection) {
        this.decorator.removeAllValidators(collection);
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void removeAllValidators(Validator<CharSequence>... validatorArr) {
        this.decorator.removeAllValidators();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators() {
        this.decorator.removeAllValidators();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean validate() {
        return this.decorator.validate();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnValueChange() {
        return this.decorator.isValidatedOnValueChange();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnValueChange(boolean z) {
        this.decorator.validateOnValueChange(z);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnFocusLost() {
        return this.decorator.isValidatedOnFocusLost();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnFocusLost(boolean z) {
        this.decorator.validateOnFocusLost(z);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidationListener(ValidationListener<CharSequence> validationListener) {
        this.decorator.addValidationListener(validationListener);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidationListener(ValidationListener<CharSequence> validationListener) {
        this.decorator.removeValidationListener(validationListener);
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
