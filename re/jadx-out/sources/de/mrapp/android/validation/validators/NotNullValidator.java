package de.mrapp.android.validation.validators;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class NotNullValidator extends AbstractValidator<Object> {
    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(Object obj) {
        return obj != null;
    }

    public NotNullValidator(CharSequence charSequence) {
        super(charSequence);
    }

    public NotNullValidator(Context context, int i) {
        super(context, i);
    }
}
