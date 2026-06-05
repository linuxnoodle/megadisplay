.class public Lde/mrapp/android/validation/validators/ConjunctiveValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "ConjunctiveValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "TType;>;"
    }
.end annotation


# instance fields
.field private validators:[Lde/mrapp/android/validation/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->setValidators([Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->setValidators([Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public static varargs create(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/ConjunctiveValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/validators/ConjunctiveValidator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 123
    new-instance v0, Lde/mrapp/android/validation/validators/ConjunctiveValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;-><init>(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)V

    return-object v0
.end method

.method public static varargs create(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/ConjunctiveValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/validators/ConjunctiveValidator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 97
    new-instance v0, Lde/mrapp/android/validation/validators/ConjunctiveValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;-><init>(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)V

    return-object v0
.end method


# virtual methods
.method public final getValidators()[Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->validators:[Lde/mrapp/android/validation/Validator;

    return-object v0
.end method

.method public final varargs setValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 145
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validators may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    array-length v1, p1

    const/4 v2, 0x1

    const-string v3, "The validators may not be empty"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 147
    iput-object p1, p0, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->validators:[Lde/mrapp/android/validation/Validator;

    return-void
.end method

.method public final validate(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->validators:[Lde/mrapp/android/validation/Validator;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 153
    invoke-interface {v4, p1}, Lde/mrapp/android/validation/Validator;->validate(Ljava/lang/Object;)Z

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
