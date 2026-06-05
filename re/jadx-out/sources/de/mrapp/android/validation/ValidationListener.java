package de.mrapp.android.validation;

/* JADX INFO: loaded from: classes2.dex */
public interface ValidationListener<Type> {
    void onValidationFailure(Validateable<Type> validateable, Validator<Type> validator);

    void onValidationSuccess(Validateable<Type> validateable);
}
