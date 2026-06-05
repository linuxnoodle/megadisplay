package de.mrapp.android.validation.constraints.text;

import de.mrapp.android.validation.Constraint;
import de.mrapp.util.Condition;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class RegexConstraint implements Constraint<CharSequence> {
    private Pattern regex;

    public RegexConstraint(Pattern pattern) {
        setRegex(pattern);
    }

    public final Pattern getRegex() {
        return this.regex;
    }

    public final void setRegex(Pattern pattern) {
        Condition.INSTANCE.ensureNotNull(pattern, "The regular expression may not be null");
        this.regex = pattern;
    }

    @Override // de.mrapp.android.validation.Constraint
    public final boolean isSatisfied(CharSequence charSequence) {
        return getRegex().matcher(charSequence).matches();
    }
}
