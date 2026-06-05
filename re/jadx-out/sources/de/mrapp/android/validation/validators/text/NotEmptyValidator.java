package de.mrapp.android.validation.validators.text;

import android.content.Context;
import android.text.TextUtils;
import de.mrapp.android.validation.validators.AbstractValidator;

/* JADX INFO: loaded from: classes2.dex */
public class NotEmptyValidator extends AbstractValidator<CharSequence> {
    public NotEmptyValidator(CharSequence charSequence) {
        super(charSequence);
    }

    public NotEmptyValidator(Context context, int i) {
        super(context, i);
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return !TextUtils.isEmpty(charSequence);
    }
}
