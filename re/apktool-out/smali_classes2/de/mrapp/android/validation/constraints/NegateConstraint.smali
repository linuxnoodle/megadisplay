.class public Lde/mrapp/android/validation/constraints/NegateConstraint;
.super Ljava/lang/Object;
.source "NegateConstraint.java"

# interfaces
.implements Lde/mrapp/android/validation/Constraint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lde/mrapp/android/validation/Constraint<",
        "TType;>;"
    }
.end annotation


# instance fields
.field private constraint:Lde/mrapp/android/validation/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/mrapp/android/validation/Constraint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/NegateConstraint;->setConstraint(Lde/mrapp/android/validation/Constraint;)V

    return-void
.end method

.method public static final create(Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/constraints/NegateConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)",
            "Lde/mrapp/android/validation/constraints/NegateConstraint<",
            "TType;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lde/mrapp/android/validation/constraints/NegateConstraint;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/constraints/NegateConstraint;-><init>(Lde/mrapp/android/validation/Constraint;)V

    return-object v0
.end method


# virtual methods
.method public final getConstraint()Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lde/mrapp/android/validation/constraints/NegateConstraint;->constraint:Lde/mrapp/android/validation/Constraint;

    return-object v0
.end method

.method public final isSatisfied(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lde/mrapp/android/validation/constraints/NegateConstraint;->getConstraint()Lde/mrapp/android/validation/Constraint;

    move-result-object v0

    invoke-interface {v0, p1}, Lde/mrapp/android/validation/Constraint;->isSatisfied(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final setConstraint(Lde/mrapp/android/validation/Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)V"
        }
    .end annotation

    .line 80
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The constraint may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lde/mrapp/android/validation/constraints/NegateConstraint;->constraint:Lde/mrapp/android/validation/Constraint;

    return-void
.end method
