.class public final Lde/mrapp/android/validation/Validators;
.super Ljava/lang/Object;
.source "Validators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginsWithUppercaseLetter(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 825
    new-instance v0, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static beginsWithUppercaseLetter(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 811
    new-instance v0, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static beginsWithUppercaseLetter(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 793
    new-instance v0, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/text/BeginsWithUppercaseLetterValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static varargs conjunctive(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 161
    invoke-static {p0, p1, p2}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->create(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/ConjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs conjunctive(Landroid/content/Context;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 181
    sget v0, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-static {p0, v0, p1}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->create(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/ConjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs conjunctive(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 136
    invoke-static {p0, p1}, Lde/mrapp/android/validation/validators/ConjunctiveValidator;->create(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/ConjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs disjunctive(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 226
    invoke-static {p0, p1, p2}, Lde/mrapp/android/validation/validators/DisjunctiveValidator;->create(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/DisjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs disjunctive(Landroid/content/Context;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 246
    sget v0, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-static {p0, v0, p1}, Lde/mrapp/android/validation/validators/DisjunctiveValidator;->create(Landroid/content/Context;I[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/DisjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs disjunctive(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "[",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 201
    invoke-static {p0, p1}, Lde/mrapp/android/validation/validators/DisjunctiveValidator;->create(Ljava/lang/CharSequence;[Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/DisjunctiveValidator;

    move-result-object p0

    return-object p0
.end method

.method public static domainName(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1013
    new-instance v0, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static domainName(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1000
    new-instance v0, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static domainName(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 982
    new-instance v0, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/DomainNameValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static emailAddress(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1057
    new-instance v0, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static emailAddress(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static emailAddress(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1026
    new-instance v0, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/EmailAddressValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static equal(Landroid/content/Context;ILde/mrapp/android/validation/EditText;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/EditText;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 864
    new-instance v0, Lde/mrapp/android/validation/validators/text/EqualValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/text/EqualValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/EditText;)V

    return-object v0
.end method

.method public static equal(Landroid/content/Context;Lde/mrapp/android/validation/EditText;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/validation/EditText;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 881
    new-instance v0, Lde/mrapp/android/validation/validators/text/EqualValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1, p1}, Lde/mrapp/android/validation/validators/text/EqualValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/EditText;)V

    return-object v0
.end method

.method public static equal(Ljava/lang/CharSequence;Lde/mrapp/android/validation/EditText;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/EditText;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 842
    new-instance v0, Lde/mrapp/android/validation/validators/text/EqualValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/EqualValidator;-><init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/EditText;)V

    return-object v0
.end method

.method public static iPv4Address(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 925
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iPv4Address(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 912
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iPv4Address(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 894
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static iPv6Address(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 969
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iPv6Address(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 956
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iPv6Address(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 938
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/IPv6AddressValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static iri(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1104
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/IRIValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iri(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1090
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/IRIValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static iri(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1071
    new-instance v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/IRIValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static varargs letter(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 653
    new-instance v6, Lde/mrapp/android/validation/validators/text/LetterValidator;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/validation/validators/text/LetterValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v6
.end method

.method public static varargs letter(Landroid/content/Context;Lde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v6, Lde/mrapp/android/validation/validators/text/LetterValidator;

    sget v2, Lde/mrapp/android/validation/R$string;->default_error_message:I

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/validation/validators/text/LetterValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v6
.end method

.method public static varargs letter(Ljava/lang/CharSequence;Lde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 619
    new-instance v0, Lde/mrapp/android/validation/validators/text/LetterValidator;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/mrapp/android/validation/validators/text/LetterValidator;-><init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v0
.end method

.method public static varargs letterOrNumber(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 748
    new-instance v6, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v6
.end method

.method public static varargs letterOrNumber(Landroid/content/Context;Lde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v6, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;

    sget v2, Lde/mrapp/android/validation/R$string;->default_error_message:I

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;-><init>(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v6
.end method

.method public static varargs letterOrNumber(Ljava/lang/CharSequence;Lde/mrapp/android/validation/validators/text/Case;Z[C)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/validators/text/Case;",
            "Z[C)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 713
    new-instance v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;

    invoke-direct {v0, p0, p1, p2, p3}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;-><init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/validators/text/Case;Z[C)V

    return-object v0
.end method

.method public static maxLength(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1, p1}, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static maxLength(Landroid/content/Context;II)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 485
    new-instance v0, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static maxLength(Ljava/lang/CharSequence;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/MaxLengthValidator;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static minLength(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Lde/mrapp/android/validation/validators/text/MinLengthValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1, p1}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static minLength(Landroid/content/Context;II)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Lde/mrapp/android/validation/validators/text/MinLengthValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public static minLength(Ljava/lang/CharSequence;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 405
    new-instance v0, Lde/mrapp/android/validation/validators/text/MinLengthValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/MinLengthValidator;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static negate(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .line 98
    invoke-static {p0, p1, p2}, Lde/mrapp/android/validation/validators/NegateValidator;->create(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/NegateValidator;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Landroid/content/Context;Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .line 116
    sget v0, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-static {p0, v0, p1}, Lde/mrapp/android/validation/validators/NegateValidator;->create(Landroid/content/Context;ILde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/NegateValidator;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Ljava/lang/CharSequence;Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/Validator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1}, Lde/mrapp/android/validation/validators/NegateValidator;->create(Ljava/lang/CharSequence;Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/validation/validators/NegateValidator;

    move-result-object p0

    return-object p0
.end method

.method public static noWhitespace(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static noWhitespace(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static noWhitespace(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/text/NoWhitespaceValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static notEmpty(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static notEmpty(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static notEmpty(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/text/NotEmptyValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static notNull(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Lde/mrapp/android/validation/validators/NotNullValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/NotNullValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static notNull(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Lde/mrapp/android/validation/validators/NotNullValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/NotNullValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static notNull(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Lde/mrapp/android/validation/validators/NotNullValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/NotNullValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static number(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Lde/mrapp/android/validation/validators/text/NumberValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/text/NumberValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static number(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 577
    new-instance v0, Lde/mrapp/android/validation/validators/text/NumberValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/NumberValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static number(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 559
    new-instance v0, Lde/mrapp/android/validation/validators/text/NumberValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/text/NumberValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static phoneNumber(Landroid/content/Context;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1154
    new-instance v0, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1}, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static phoneNumber(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1139
    new-instance v0, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static phoneNumber(Ljava/lang/CharSequence;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1119
    new-instance v0, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/validators/misc/PhoneNumberValidator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static regex(Landroid/content/Context;ILjava/util/regex/Pattern;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Lde/mrapp/android/validation/validators/text/RegexValidator;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Landroid/content/Context;ILjava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static regex(Landroid/content/Context;Ljava/util/regex/Pattern;)Lde/mrapp/android/validation/Validator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Lde/mrapp/android/validation/validators/text/RegexValidator;

    sget v1, Lde/mrapp/android/validation/R$string;->default_error_message:I

    invoke-direct {v0, p0, v1, p1}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Landroid/content/Context;ILjava/util/regex/Pattern;)V

    return-object v0
.end method

.method public static regex(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Lde/mrapp/android/validation/Validator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lde/mrapp/android/validation/validators/text/RegexValidator;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)V

    return-object v0
.end method
