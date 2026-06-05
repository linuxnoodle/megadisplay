package de.mrapp.android.validation.constraints.text;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ContainsLetterConstraint extends RegexConstraint {
    private static final Pattern REGEX = Pattern.compile("(.)*([a-zA-Z])(.)*");

    public ContainsLetterConstraint() {
        super(REGEX);
    }
}
