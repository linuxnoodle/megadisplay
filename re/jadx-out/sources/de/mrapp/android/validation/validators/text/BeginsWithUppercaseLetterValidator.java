package de.mrapp.android.validation.validators.text;

import android.content.Context;
import android.text.TextUtils;
import de.mrapp.android.validation.validators.AbstractValidator;

/* JADX INFO: loaded from: classes2.dex */
public class BeginsWithUppercaseLetterValidator extends AbstractValidator<CharSequence> {
    public BeginsWithUppercaseLetterValidator(CharSequence charSequence) {
        super(charSequence);
    }

    public BeginsWithUppercaseLetterValidator(Context context, int i) {
        super(context, i);
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return TextUtils.isEmpty(charSequence) || Character.isUpperCase(charSequence.charAt(0));
    }
}
