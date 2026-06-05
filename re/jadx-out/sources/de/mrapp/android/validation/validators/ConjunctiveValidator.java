package de.mrapp.android.validation.validators;

import android.content.Context;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ConjunctiveValidator<Type> extends AbstractValidator<Type> {
    private Validator<Type>[] validators;

    @SafeVarargs
    public ConjunctiveValidator(CharSequence charSequence, Validator<Type>... validatorArr) {
        super(charSequence);
        setValidators(validatorArr);
    }

    @SafeVarargs
    public ConjunctiveValidator(Context context, int i, Validator<Type>... validatorArr) {
        super(context, i);
        setValidators(validatorArr);
    }

    @SafeVarargs
    public static <Type> ConjunctiveValidator<Type> create(CharSequence charSequence, Validator<Type>... validatorArr) {
        return new ConjunctiveValidator<>(charSequence, validatorArr);
    }

    @SafeVarargs
    public static <Type> ConjunctiveValidator<Type> create(Context context, int i, Validator<Type>... validatorArr) {
        return new ConjunctiveValidator<>(context, i, validatorArr);
    }

    public final Validator<Type>[] getValidators() {
        return this.validators;
    }

    @SafeVarargs
    public final void setValidators(Validator<Type>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The validators may not be null");
        Condition.INSTANCE.ensureAtLeast(validatorArr.length, 1, "The validators may not be empty");
        this.validators = validatorArr;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(Type type) {
        for (Validator<Type> validator : this.validators) {
            if (!validator.validate(type)) {
                return false;
            }
        }
        return true;
    }
}
