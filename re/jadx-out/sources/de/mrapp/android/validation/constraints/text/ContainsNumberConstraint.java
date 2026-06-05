package de.mrapp.android.validation.constraints.text;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ContainsNumberConstraint extends RegexConstraint {
    private static final Pattern REGEX = Pattern.compile("(.)*(\\d)(.)*");

    public ContainsNumberConstraint() {
        super(REGEX);
    }
}
