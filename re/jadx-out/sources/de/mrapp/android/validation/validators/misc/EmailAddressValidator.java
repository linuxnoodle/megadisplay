package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import android.util.Patterns;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class EmailAddressValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|" + Patterns.EMAIL_ADDRESS.pattern());

    public EmailAddressValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public EmailAddressValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
