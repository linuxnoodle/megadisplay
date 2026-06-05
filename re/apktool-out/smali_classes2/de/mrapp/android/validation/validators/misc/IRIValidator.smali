.class public Lde/mrapp/android/validation/validators/misc/IRIValidator;
.super Lde/mrapp/android/validation/validators/text/RegexValidator;
.source "IRIValidator.java"


# static fields
.field private static final REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(^$)|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;->REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 65
    sget-object v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;->REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Landroid/content/Context;ILjava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 49
    sget-object v0, Lde/mrapp/android/validation/validators/misc/IRIValidator;->REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)V

    return-void
.end method
