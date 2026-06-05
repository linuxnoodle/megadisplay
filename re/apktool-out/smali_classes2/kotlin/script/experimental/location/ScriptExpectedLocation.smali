.class public final enum Lkotlin/script/experimental/location/ScriptExpectedLocation;
.super Ljava/lang/Enum;
.source "scriptLocation_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/script/experimental/location/ScriptExpectedLocation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Experimental API"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/script/experimental/location/ScriptExpectedLocation;",
        "",
        "(Ljava/lang/String;I)V",
        "SourcesOnly",
        "TestsOnly",
        "Libraries",
        "Project",
        "Everywhere",
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

.field private static final synthetic $VALUES:[Lkotlin/script/experimental/location/ScriptExpectedLocation;

.field public static final enum Everywhere:Lkotlin/script/experimental/location/ScriptExpectedLocation;

.field public static final enum Libraries:Lkotlin/script/experimental/location/ScriptExpectedLocation;

.field public static final enum Project:Lkotlin/script/experimental/location/ScriptExpectedLocation;

.field public static final enum SourcesOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;

.field public static final enum TestsOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;


# direct methods
.method private static final synthetic $values()[Lkotlin/script/experimental/location/ScriptExpectedLocation;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/script/experimental/location/ScriptExpectedLocation;

    sget-object v1, Lkotlin/script/experimental/location/ScriptExpectedLocation;->SourcesOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/location/ScriptExpectedLocation;->TestsOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Libraries:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Project:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Everywhere:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const-string v1, "SourcesOnly"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/location/ScriptExpectedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->SourcesOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    .line 14
    new-instance v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const-string v1, "TestsOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/location/ScriptExpectedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->TestsOnly:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    .line 15
    new-instance v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const-string v1, "Libraries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/location/ScriptExpectedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Libraries:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    .line 16
    new-instance v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const-string v1, "Project"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/location/ScriptExpectedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Project:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    .line 17
    new-instance v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    const-string v1, "Everywhere"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/location/ScriptExpectedLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->Everywhere:Lkotlin/script/experimental/location/ScriptExpectedLocation;

    invoke-static {}, Lkotlin/script/experimental/location/ScriptExpectedLocation;->$values()[Lkotlin/script/experimental/location/ScriptExpectedLocation;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->$VALUES:[Lkotlin/script/experimental/location/ScriptExpectedLocation;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/script/experimental/location/ScriptExpectedLocation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/script/experimental/location/ScriptExpectedLocation;
    .locals 1

    const-class v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/script/experimental/location/ScriptExpectedLocation;

    return-object p0
.end method

.method public static values()[Lkotlin/script/experimental/location/ScriptExpectedLocation;
    .locals 1

    sget-object v0, Lkotlin/script/experimental/location/ScriptExpectedLocation;->$VALUES:[Lkotlin/script/experimental/location/ScriptExpectedLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/script/experimental/location/ScriptExpectedLocation;

    return-object v0
.end method
