.class public Lde/mrapp/android/validation/validators/NegateValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "NegateValidator.java"


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
.field private validator:Lde/mrapp/android/validation/Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 114
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/NegateValidator;->setValidator(Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/Validator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/NegateValidator;->setValidator(Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method public static create(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/NegateValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/validators/NegateValidator<",
            "TType;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lde/mrapp/android/validation/validators/NegateValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/NegateValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/CharSequence;Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/NegateValidator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/validators/NegateValidator<",
            "TType;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lde/mrapp/android/validation/validators/NegateValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/NegateValidator;-><init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/Validator;)V

    return-object v0
.end method


# virtual methods
.method public final getValidator()Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lde/mrapp/android/validation/validators/NegateValidator;->validator:Lde/mrapp/android/validation/Validator;

    return-object v0
.end method

.method public final setValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation

    .line 134
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lde/mrapp/android/validation/validators/NegateValidator;->validator:Lde/mrapp/android/validation/Validator;

    return-void
.end method

.method public final validate(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/NegateValidator;->getValidator()Lde/mrapp/android/validation/Validator;

    move-result-object v0

    invoke-interface {v0, p1}, Lde/mrapp/android/validation/Validator;->validate(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
