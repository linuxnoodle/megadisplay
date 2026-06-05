.class public final enum Lde/mrapp/android/validation/validators/text/Case;
.super Ljava/lang/Enum;
.source "Case.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/validation/validators/text/Case;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/validation/validators/text/Case;

.field public static final enum CASE_INSENSITIVE:Lde/mrapp/android/validation/validators/text/Case;

.field public static final enum LOWERCASE:Lde/mrapp/android/validation/validators/text/Case;

.field public static final enum UPPERCASE:Lde/mrapp/android/validation/validators/text/Case;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lde/mrapp/android/validation/validators/text/Case;

    const-string v1, "UPPERCASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/validation/validators/text/Case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/validation/validators/text/Case;->UPPERCASE:Lde/mrapp/android/validation/validators/text/Case;

    .line 29
    new-instance v1, Lde/mrapp/android/validation/validators/text/Case;

    const-string v3, "LOWERCASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/mrapp/android/validation/validators/text/Case;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/mrapp/android/validation/validators/text/Case;->LOWERCASE:Lde/mrapp/android/validation/validators/text/Case;

    .line 34
    new-instance v3, Lde/mrapp/android/validation/validators/text/Case;

    const-string v5, "CASE_INSENSITIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lde/mrapp/android/validation/validators/text/Case;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lde/mrapp/android/validation/validators/text/Case;->CASE_INSENSITIVE:Lde/mrapp/android/validation/validators/text/Case;

    const/4 v5, 0x3

    .line 19
    new-array v5, v5, [Lde/mrapp/android/validation/validators/text/Case;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lde/mrapp/android/validation/validators/text/Case;->$VALUES:[Lde/mrapp/android/validation/validators/text/Case;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/validation/validators/text/Case;
    .locals 1

    .line 19
    const-class v0, Lde/mrapp/android/validation/validators/text/Case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/validation/validators/text/Case;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/validation/validators/text/Case;
    .locals 1

    .line 19
    sget-object v0, Lde/mrapp/android/validation/validators/text/Case;->$VALUES:[Lde/mrapp/android/validation/validators/text/Case;

    invoke-virtual {v0}, [Lde/mrapp/android/validation/validators/text/Case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/validation/validators/text/Case;

    return-object v0
.end method
