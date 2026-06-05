package de.mrapp.android.validation.constraints;

import de.mrapp.android.validation.Constraint;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class NegateConstraint<Type> implements Constraint<Type> {
    private Constraint<Type> constraint;

    public NegateConstraint(Constraint<Type> constraint) {
        setConstraint(constraint);
    }

    public static final <Type> NegateConstraint<Type> create(Constraint<Type> constraint) {
        return new NegateConstraint<>(constraint);
    }

    public final Constraint<Type> getConstraint() {
        return this.constraint;
    }

    public final void setConstraint(Constraint<Type> constraint) {
        Condition.INSTANCE.ensureNotNull(constraint, "The constraint may not be null");
        this.constraint = constraint;
    }

    @Override // de.mrapp.android.validation.Constraint
    public final boolean isSatisfied(Type type) {
        return !getConstraint().isSatisfied(type);
    }
}
