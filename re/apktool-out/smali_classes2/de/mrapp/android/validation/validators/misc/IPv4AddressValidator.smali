.class public Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;
.super Lde/mrapp/android/validation/validators/text/RegexValidator;
.source "IPv4AddressValidator.java"


# static fields
.field private static final REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "(^$)|(^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$)"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;->REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 67
    sget-object v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;->REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Landroid/content/Context;ILjava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 51
    sget-object v0, Lde/mrapp/android/validation/validators/misc/IPv4AddressValidator;->REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/validation/validators/text/RegexValidator;-><init>(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)V

    return-void
.end method
