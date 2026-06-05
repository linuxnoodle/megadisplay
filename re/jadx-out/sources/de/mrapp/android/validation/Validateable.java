package de.mrapp.android.validation;

import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public interface Validateable<Type> {
    void addAllValidators(Collection<Validator<Type>> collection);

    void addAllValidators(Validator<Type>... validatorArr);

    void addValidationListener(ValidationListener<Type> validationListener);

    void addValidator(Validator<Type> validator);

    Collection<Validator<Type>> getValidators();

    boolean isValidatedOnFocusLost();

    boolean isValidatedOnValueChange();

    void removeAllValidators();

    void removeAllValidators(Collection<Validator<Type>> collection);

    void removeAllValidators(Validator<Type>... validatorArr);

    void removeValidationListener(ValidationListener<Type> validationListener);

    void removeValidator(Validator<Type> validator);

    boolean validate();

    void validateOnFocusLost(boolean z);

    void validateOnValueChange(boolean z);
}
