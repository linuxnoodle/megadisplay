.class public Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;
.super Ljava/lang/Object;
.source "ConjunctiveConstraint.java"

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
.field private constraints:[Lde/mrapp/android/validation/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lde/mrapp/android/validation/Constraint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;->setConstraints([Lde/mrapp/android/validation/Constraint;)V

    return-void
.end method

.method public static create([Lde/mrapp/android/validation/Constraint;)Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">([",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)",
            "Lde/mrapp/android/validation/constraints/ConjunctiveConstraint<",
            "TType;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;-><init>([Lde/mrapp/android/validation/Constraint;)V

    return-object v0
.end method


# virtual methods
.method public final getConstraints()[Lde/mrapp/android/validation/Constraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;->constraints:[Lde/mrapp/android/validation/Constraint;

    return-object v0
.end method

.method public final isSatisfied(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;->constraints:[Lde/mrapp/android/validation/Constraint;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 91
    invoke-interface {v4, p1}, Lde/mrapp/android/validation/Constraint;->isSatisfied(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final setConstraints([Lde/mrapp/android/validation/Constraint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Constraint<",
            "TType;>;)V"
        }
    .end annotation

    .line 83
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The constraints may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    array-length v1, p1

    const/4 v2, 0x1

    const-string v3, "The constraints may not be empty"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 85
    iput-object p1, p0, Lde/mrapp/android/validation/constraints/ConjunctiveConstraint;->constraints:[Lde/mrapp/android/validation/Constraint;

    return-void
.end method
