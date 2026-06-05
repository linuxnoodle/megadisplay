package de.mrapp.android.validation.constraints;

import de.mrapp.android.validation.Constraint;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ConjunctiveConstraint<Type> implements Constraint<Type> {
    private Constraint<Type>[] constraints;

    public ConjunctiveConstraint(Constraint<Type>[] constraintArr) {
        setConstraints(constraintArr);
    }

    public static <Type> ConjunctiveConstraint<Type> create(Constraint<Type>[] constraintArr) {
        return new ConjunctiveConstraint<>(constraintArr);
    }

    public final Constraint<Type>[] getConstraints() {
        return this.constraints;
    }

    public final void setConstraints(Constraint<Type>[] constraintArr) {
        Condition.INSTANCE.ensureNotNull(constraintArr, "The constraints may not be null");
        Condition.INSTANCE.ensureAtLeast(constraintArr.length, 1, "The constraints may not be empty");
        this.constraints = constraintArr;
    }

    @Override // de.mrapp.android.validation.Constraint
    public final boolean isSatisfied(Type type) {
        for (Constraint<Type> constraint : this.constraints) {
            if (!constraint.isSatisfied(type)) {
                return false;
            }
        }
        return true;
    }
}
