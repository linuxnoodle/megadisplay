package de.mrapp.android.validation.constraints.text;

import de.mrapp.android.validation.Constraint;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class MinLengthConstraint implements Constraint<CharSequence> {
    private int minLength;

    public MinLengthConstraint(int i) {
        setMinLength(i);
    }

    public final int getMinLength() {
        return this.minLength;
    }

    public final void setMinLength(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The minimum length must be at least 1");
        this.minLength = i;
    }

    @Override // de.mrapp.android.validation.Constraint
    public final boolean isSatisfied(CharSequence charSequence) {
        return charSequence.length() >= getMinLength();
    }
}
