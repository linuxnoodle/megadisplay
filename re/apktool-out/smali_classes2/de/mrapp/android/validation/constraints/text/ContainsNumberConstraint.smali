.class public Lde/mrapp/android/validation/constraints/text/ContainsNumberConstraint;
.super Lde/mrapp/android/validation/constraints/text/RegexConstraint;
.source "ContainsNumberConstraint.java"


# static fields
.field private static final REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "(.)*(\\d)(.)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/constraints/text/ContainsNumberConstraint;->REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lde/mrapp/android/validation/constraints/text/ContainsNumberConstraint;->REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lde/mrapp/android/validation/constraints/text/RegexConstraint;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method
