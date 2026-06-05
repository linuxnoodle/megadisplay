package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class IPv4AddressValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|(^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$)");

    public IPv4AddressValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public IPv4AddressValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
