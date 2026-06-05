.class public final Lde/mrapp/android/validation/Constraints;
.super Ljava/lang/Object;
.source "Constraints.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs conjunctive([Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/Constraint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">([",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 74
    invoke-static {p0}, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;->create([Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;

    move-result-object p0

    return-object p0
.end method

.method public static containsLetter()Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lde/mrapp/android/validation/constraints/text/ContainsLetterConstraint;

    invoke-direct {v0}, Lde/mrapp/android/validation/constraints/text/ContainsLetterConstraint;-><init>()V

    return-object v0
.end method

.method public static containsNumber()Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lde/mrapp/android/validation/constraints/text/ContainsNumberConstraint;

    invoke-direct {v0}, Lde/mrapp/android/validation/constraints/text/ContainsNumberConstraint;-><init>()V

    return-object v0
.end method

.method public static containsSymbol()Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Lde/mrapp/android/validation/constraints/text/ContainsSymbolConstraint;

    invoke-direct {v0}, Lde/mrapp/android/validation/constraints/text/ContainsSymbolConstraint;-><init>()V

    return-object v0
.end method

.method public static varargs disjunctive([Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/Constraint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">([",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 92
    invoke-static {p0}, Lde/mrapp/android/validation/constraints/DisjunctiveConstraint;->create([Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/constraints/DisjunctiveConstraint;

    move-result-object p0

    return-object p0
.end method

.method public static minLength(I)Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;-><init>(I)V

    return-object v0
.end method

.method public static negate(Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/Constraint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lde/mrapp/android/validation/constraints/NegateConstraint;->create(Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/constraints/NegateConstraint;

    move-result-object p0

    return-object p0
.end method

.method public static regex(Ljava/util/regex/Pattern;)Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lde/mrapp/android/validation/constraints/text/RegexConstraint;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/constraints/text/RegexConstraint;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
