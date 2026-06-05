package de.mrapp.android.validation.validators;

import android.content.Context;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class NegateValidator<Type> extends AbstractValidator<Type> {
    private Validator<Type> validator;

    public NegateValidator(CharSequence charSequence, Validator<Type> validator) {
        super(charSequence);
        setValidator(validator);
    }

    public static <Type> NegateValidator<Type> create(CharSequence charSequence, Validator<Type> validator) {
        return new NegateValidator<>(charSequence, validator);
    }

    public static <Type> NegateValidator<Type> create(Context context, int i, Validator<Type> validator) {
        return new NegateValidator<>(context, i, validator);
    }

    public NegateValidator(Context context, int i, Validator<Type> validator) {
        super(context, i);
        setValidator(validator);
    }

    public final Validator<Type> getValidator() {
        return this.validator;
    }

    public final void setValidator(Validator<Type> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validator = validator;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(Type type) {
        return !getValidator().validate(type);
    }
}
