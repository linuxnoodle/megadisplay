.class public Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "LetterOrNumberValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASE_INSENSITIVE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOWERCASE_PATTERN:Ljava/util/regex/Pattern;

.field private static final UPPERCASE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private allowSpaces:Z

.field private allowedCharacters:[C

.field private caseSensitivity:Lde/mrapp/android/validation/validators/text/Case;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "^[A-Z0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->UPPERCASE_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^[a-z0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->LOWERCASE_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "^[a-zA-Z0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->CASE_INSENSITIVE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;ILde/mrapp/android/validation/validators/text/Case;Z[C)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->setCaseSensitivity(Lde/mrapp/android/validation/validators/text/Case;)V

    .line 123
    invoke-virtual {p0, p4}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowSpaces(Z)V

    .line 124
    invoke-virtual {p0, p5}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->setAllowedCharacters([C)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/validators/text/Case;Z[C)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->setCaseSensitivity(Lde/mrapp/android/validation/validators/text/Case;)V

    .line 93
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowSpaces(Z)V

    .line 94
    invoke-virtual {p0, p4}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->setAllowedCharacters([C)V

    return-void
.end method


# virtual methods
.method public final allowSpaces(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowSpaces:Z

    return-void
.end method

.method public final areSpacesAllowed()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowSpaces:Z

    return v0
.end method

.method public final getAllowedCharacters()[C
    .locals 1

    .line 177
    iget-object v0, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowedCharacters:[C

    return-object v0
.end method

.method public final getCaseSensitivity()Lde/mrapp/android/validation/validators/text/Case;
    .locals 1

    .line 135
    iget-object v0, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->caseSensitivity:Lde/mrapp/android/validation/validators/text/Case;

    return-object v0
.end method

.method public final setAllowedCharacters([C)V
    .locals 2

    .line 188
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->allowedCharacters:[C

    return-void
.end method

.method public final setCaseSensitivity(Lde/mrapp/android/validation/validators/text/Case;)V
    .locals 2

    .line 147
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The case sensitivity may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->caseSensitivity:Lde/mrapp/android/validation/validators/text/Case;

    return-void
.end method

.method public final validate(Ljava/lang/CharSequence;)Z
    .locals 6

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    sget-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->CASE_INSENSITIVE_PATTERN:Ljava/util/regex/Pattern;

    .line 197
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->areSpacesAllowed()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "\\s+"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->getAllowedCharacters()[C

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-char v5, v1, v4

    .line 202
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->getCaseSensitivity()Lde/mrapp/android/validation/validators/text/Case;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/validation/validators/text/Case;->UPPERCASE:Lde/mrapp/android/validation/validators/text/Case;

    if-ne v1, v2, :cond_2

    .line 206
    sget-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->UPPERCASE_PATTERN:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->getCaseSensitivity()Lde/mrapp/android/validation/validators/text/Case;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/validation/validators/text/Case;->LOWERCASE:Lde/mrapp/android/validation/validators/text/Case;

    if-ne v1, v2, :cond_3

    .line 208
    sget-object v0, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->LOWERCASE_PATTERN:Ljava/util/regex/Pattern;

    .line 211
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/text/LetterOrNumberValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
