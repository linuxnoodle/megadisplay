.class public Lde/mrapp/android/validation/constraints/text/RegexConstraint;
.super Ljava/lang/Object;
.source "RegexConstraint.java"

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
.field private regex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/text/RegexConstraint;->setRegex(Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public final getRegex()Ljava/util/regex/Pattern;
    .locals 1

    .line 56
    iget-object v0, p0, Lde/mrapp/android/validation/constraints/text/RegexConstraint;->regex:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public final isSatisfied(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lde/mrapp/android/validation/constraints/text/RegexConstraint;->getRegex()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isSatisfied(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/constraints/text/RegexConstraint;->isSatisfied(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final setRegex(Ljava/util/regex/Pattern;)V
    .locals 2

    .line 67
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The regular expression may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lde/mrapp/android/validation/constraints/text/RegexConstraint;->regex:Ljava/util/regex/Pattern;

    return-void
.end method
