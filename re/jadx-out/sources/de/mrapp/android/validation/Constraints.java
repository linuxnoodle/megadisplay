package de.mrapp.android.validation;

import de.mrapp.android.validation.constraints.ConjunctiveConstraint;
import de.mrapp.android.validation.constraints.DisjunctiveConstraint;
import de.mrapp.android.validation.constraints.NegateConstraint;
import de.mrapp.android.validation.constraints.text.ContainsLetterConstraint;
import de.mrapp.android.validation.constraints.text.ContainsNumberConstraint;
import de.mrapp.android.validation.constraints.text.ContainsSymbolConstraint;
import de.mrapp.android.validation.constraints.text.MinLengthConstraint;
import de.mrapp.android.validation.constraints.text.RegexConstraint;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class Constraints {
    private Constraints() {
    }

    public static <Type> Constraint<Type> negate(Constraint<Type> constraint) {
        return NegateConstraint.create(constraint);
    }

    @SafeVarargs
    public static <Type> Constraint<Type> conjunctive(Constraint<Type>... constraintArr) {
        return ConjunctiveConstraint.create(constraintArr);
    }

    @SafeVarargs
    public static <Type> Constraint<Type> disjunctive(Constraint<Type>... constraintArr) {
        return DisjunctiveConstraint.create(constraintArr);
    }

    public static Constraint<CharSequence> regex(Pattern pattern) {
        return new RegexConstraint(pattern);
    }

    public static Constraint<CharSequence> minLength(int i) {
        return new MinLengthConstraint(i);
    }

    public static Constraint<CharSequence> containsNumber() {
        return new ContainsNumberConstraint();
    }

    public static Constraint<CharSequence> containsLetter() {
        return new ContainsLetterConstraint();
    }

    public static Constraint<CharSequence> containsSymbol() {
        return new ContainsSymbolConstraint();
    }
}
