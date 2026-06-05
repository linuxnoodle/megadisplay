package de.mrapp.android.validation.validators.text;

import android.content.Context;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import de.mrapp.android.validation.validators.AbstractValidator;

/* JADX INFO: loaded from: classes2.dex */
public class NoWhitespaceValidator extends AbstractValidator<CharSequence> {
    public NoWhitespaceValidator(CharSequence charSequence) {
        super(charSequence);
    }

    public NoWhitespaceValidator(Context context, int i) {
        super(context, i);
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return !charSequence.toString().contains(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
    }
}
