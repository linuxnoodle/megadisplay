package de.mrapp.android.validation.validators.text;

import android.content.Context;
import de.mrapp.android.validation.validators.AbstractValidator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class MaxLengthValidator extends AbstractValidator<CharSequence> {
    private int maxLength;

    public MaxLengthValidator(CharSequence charSequence, int i) {
        super(charSequence);
        setMaxLength(i);
    }

    public MaxLengthValidator(Context context, int i, int i2) {
        super(context, i);
        setMaxLength(i2);
    }

    public final int getMaxLength() {
        return this.maxLength;
    }

    public final void setMaxLength(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum length must be at least 1");
        this.maxLength = i;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return charSequence.length() <= getMaxLength();
    }
}
