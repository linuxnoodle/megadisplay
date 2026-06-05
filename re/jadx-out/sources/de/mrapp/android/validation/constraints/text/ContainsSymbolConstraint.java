package de.mrapp.android.validation.constraints.text;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ContainsSymbolConstraint extends RegexConstraint {
    private static final Pattern REGEX = Pattern.compile("(.)*([^a-zA-Z0-9])(.)*");

    public ContainsSymbolConstraint() {
        super(REGEX);
    }
}
