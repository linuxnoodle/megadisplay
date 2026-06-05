package de.mrapp.android.validation.validators;

import android.content.Context;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class DisjunctiveValidator<Type> extends AbstractValidator<Type> {
    private Validator<Type>[] validators;

    @SafeVarargs
    public DisjunctiveValidator(CharSequence charSequence, Validator<Type>... validatorArr) {
        super(charSequence);
        setValidators(validatorArr);
    }

    @SafeVarargs
    public DisjunctiveValidator(Context context, int i, Validator<Type>... validatorArr) {
        super(context, i);
        setValidators(validatorArr);
    }

    @SafeVarargs
    public static <Type> DisjunctiveValidator<Type> create(CharSequence charSequence, Validator<Type>... validatorArr) {
        return new DisjunctiveValidator<>(charSequence, validatorArr);
    }

    @SafeVarargs
    public static <Type> DisjunctiveValidator<Type> create(Context context, int i, Validator<Type>... validatorArr) {
        return new DisjunctiveValidator<>(context, i, validatorArr);
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
            if (validator.validate(type)) {
                return true;
            }
        }
        return false;
    }
}
