package de.mrapp.android.validation.validators.text;

import android.content.Context;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class NumberValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("[0-9]*");

    public NumberValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public NumberValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
