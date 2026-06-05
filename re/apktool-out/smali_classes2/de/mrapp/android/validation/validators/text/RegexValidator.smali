.class public Lde/mrapp/android/validation/validators/text/RegexValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "RegexValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private regex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/regex/Pattern;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 74
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/text/RegexValidator;->setRegex(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/text/RegexValidator;->setRegex(Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public final getRegex()Ljava/util/regex/Pattern;
    .locals 1

    .line 84
    iget-object v0, p0, Lde/mrapp/android/validation/validators/text/RegexValidator;->regex:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final setRegex(Ljava/util/regex/Pattern;)V
    .locals 2

    .line 95
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The regular expression may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lde/mrapp/android/validation/validators/text/RegexValidator;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public final validate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/RegexValidator;->getRegex()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/text/RegexValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
