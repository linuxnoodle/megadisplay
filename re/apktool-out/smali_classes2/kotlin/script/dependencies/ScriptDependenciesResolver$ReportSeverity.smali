.class public final enum Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;
.super Ljava/lang/Enum;
.source "resolvers_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/dependencies/ScriptDependenciesResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportSeverity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;",
        "",
        "(Ljava/lang/String;I)V",
        "FATAL",
        "ERROR",
        "WARNING",
        "INFO",
        "DEBUG",
        "kotlin-script-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

.field public static final enum DEBUG:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

.field public static final enum ERROR:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

.field public static final enum FATAL:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

.field public static final enum INFO:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

.field public static final enum WARNING:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;


# direct methods
.method private static final synthetic $values()[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    sget-object v1, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->FATAL:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->ERROR:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->WARNING:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->INFO:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->DEBUG:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->FATAL:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    new-instance v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->ERROR:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    new-instance v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->WARNING:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    new-instance v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const-string v1, "INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->INFO:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    new-instance v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    const-string v1, "DEBUG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->DEBUG:Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    invoke-static {}, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->$values()[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    move-result-object v0

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->$VALUES:[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;
    .locals 1

    const-class v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    return-object p0
.end method

.method public static values()[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;
    .locals 1

    sget-object v0, Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;->$VALUES:[Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;

    return-object v0
.end method
