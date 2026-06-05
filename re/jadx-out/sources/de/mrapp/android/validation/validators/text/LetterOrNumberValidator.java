package de.mrapp.android.validation.validators.text;

import android.content.Context;
import de.mrapp.android.validation.validators.AbstractValidator;
import de.mrapp.util.Condition;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class LetterOrNumberValidator extends AbstractValidator<CharSequence> {
    private boolean allowSpaces;
    private char[] allowedCharacters;
    private Case caseSensitivity;
    private static final Pattern UPPERCASE_PATTERN = Pattern.compile("^[A-Z0-9]*$");
    private static final Pattern LOWERCASE_PATTERN = Pattern.compile("^[a-z0-9]*$");
    private static final Pattern CASE_INSENSITIVE_PATTERN = Pattern.compile("^[a-zA-Z0-9]*$");

    public LetterOrNumberValidator(CharSequence charSequence, Case r2, boolean z, char... cArr) {
        super(charSequence);
        setCaseSensitivity(r2);
        allowSpaces(z);
        setAllowedCharacters(cArr);
    }

    public LetterOrNumberValidator(Context context, int i, Case r3, boolean z, char... cArr) {
        super(context, i);
        setCaseSensitivity(r3);
        allowSpaces(z);
        setAllowedCharacters(cArr);
    }

    public final Case getCaseSensitivity() {
        return this.caseSensitivity;
    }

    public final void setCaseSensitivity(Case r3) {
        Condition.INSTANCE.ensureNotNull(r3, "The case sensitivity may not be null");
        this.caseSensitivity = r3;
    }

    public final boolean areSpacesAllowed() {
        return this.allowSpaces;
    }

    public final void allowSpaces(boolean z) {
        this.allowSpaces = z;
    }

    public final char[] getAllowedCharacters() {
        return this.allowedCharacters;
    }

    public final void setAllowedCharacters(char[] cArr) {
        Condition.INSTANCE.ensureNotNull(cArr, "The array may not be null");
        this.allowedCharacters = cArr;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        String string = charSequence.toString();
        Pattern pattern = CASE_INSENSITIVE_PATTERN;
        if (areSpacesAllowed()) {
            string = string.replaceAll("\\s+", "");
        }
        for (char c : getAllowedCharacters()) {
            string = string.replaceAll(String.valueOf(c), "");
        }
        if (getCaseSensitivity() == Case.UPPERCASE) {
            pattern = UPPERCASE_PATTERN;
        } else if (getCaseSensitivity() == Case.LOWERCASE) {
            pattern = LOWERCASE_PATTERN;
        }
        return pattern.matcher(string).matches();
    }
}
