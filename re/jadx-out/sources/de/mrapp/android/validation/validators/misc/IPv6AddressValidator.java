package de.mrapp.android.validation.validators.misc;

import android.content.Context;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class IPv6AddressValidator extends RegexValidator {
    private static final Pattern REGEX = Pattern.compile("(^$)|(^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$)|(^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$)");

    public IPv6AddressValidator(CharSequence charSequence) {
        super(charSequence, REGEX);
    }

    public IPv6AddressValidator(Context context, int i) {
        super(context, i, REGEX);
    }
}
