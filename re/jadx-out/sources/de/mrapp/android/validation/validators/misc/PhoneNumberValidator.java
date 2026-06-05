package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneNumberValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|([0-9]{6,14})|(^\\+(?:[0-9] ?){6,14}[0-9]$)");

    public PhoneNumberValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public PhoneNumberValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
