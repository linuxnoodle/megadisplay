package de.mrapp.android.validation.validators.text;

import android.content.Context;
import de.mrapp.android.validation.validators.AbstractValidator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class MinLengthValidator extends AbstractValidator<CharSequence> {
    private int minLength;

    public MinLengthValidator(CharSequence charSequence, int i) {
        super(charSequence);
        setMinLength(i);
    }

    public MinLengthValidator(Context context, int i, int i2) {
        super(context, i);
        setMinLength(i2);
    }

    public final int getMinLength() {
        return this.minLength;
    }

    public final void setMinLength(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The minimum length must be at least 1");
        this.minLength = i;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return charSequence.length() >= getMinLength();
    }
}
