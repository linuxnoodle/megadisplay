package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import android.util.Patterns;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class IRIValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|" + Patterns.WEB_URL.pattern());

    public IRIValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public IRIValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
