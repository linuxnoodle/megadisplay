.class public Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "BeginsWithUppercaseLetterValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final validate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
