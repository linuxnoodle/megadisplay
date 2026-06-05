.class public Lde/mrapp/android/validation/validators/text/MinLengthValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "MinLengthValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private minLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 71
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->setMinLength(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->setMinLength(I)V

    return-void
.end method


# virtual methods
.method public final getMinLength()I
    .locals 1

    .line 80
    iget v0, p0, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->minLength:I

    return v0
.end method

.method public final setMinLength(I)V
    .locals 3

    .line 91
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The minimum length must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 92
    iput p1, p0, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->minLength:I

    return-void
.end method

.method public final validate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->getMinLength()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
