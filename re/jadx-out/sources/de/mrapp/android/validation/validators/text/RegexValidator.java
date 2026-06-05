package de.mrapp.android.validation.validators.text;

import android.content.Context;
import de.mrapp.android.validation.validators.AbstractValidator;
import de.mrapp.util.Condition;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class RegexValidator extends AbstractValidator<CharSequence> {
    private Pattern regex;

    public RegexValidator(CharSequence charSequence, Pattern pattern) {
        super(charSequence);
        setRegex(pattern);
    }

    public RegexValidator(Context context, int i, Pattern pattern) {
        super(context, i);
        setRegex(pattern);
    }

    public final Pattern getRegex() {
        return this.regex;
    }

    public final void setRegex(Pattern pattern) {
        Condition.INSTANCE.ensureNotNull(pattern, "The regular expression may not be null");
        this.regex = pattern;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return getRegex().matcher(charSequence).matches();
    }
}
