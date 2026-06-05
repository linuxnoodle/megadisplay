.class public Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;
.super Ljava/lang/Object;
.source "MinLengthConstraint.java"

# interfaces
.implements Lde/mrapp/android/validation/Constraint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/mrapp/android/validation/Constraint<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private minLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;->setMinLength(I)V

    return-void
.end method


# virtual methods
.method public final getMinLength()I
    .locals 1

    .line 51
    iget v0, p0, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;->minLength:I

    return v0
.end method

.method public final isSatisfied(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;->getMinLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isSatisfied(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;->isSatisfied(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final setMinLength(I)V
    .locals 3

    .line 62
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The minimum length must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 63
    iput p1, p0, Lde/mrapp/android/validation/constraints/text/MinLengthConstraint;->minLength:I

    return-void
.end method
