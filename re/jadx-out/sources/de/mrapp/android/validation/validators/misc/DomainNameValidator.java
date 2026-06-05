package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import android.util.Patterns;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class DomainNameValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|" + Patterns.DOMAIN_NAME.pattern());

    public DomainNameValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public DomainNameValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
