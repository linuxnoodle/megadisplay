.class public final enum Lcom/kelocube/mirrorclient/MirrorClient$State;
.super Ljava/lang/Enum;
.source "MirrorClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/MirrorClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        "",
        "(Ljava/lang/String;I)V",
        "Ready",
        "Active",
        "Closed",
        "app_release"
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

.field private static final synthetic $VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$State;

.field public static final enum Active:Lcom/kelocube/mirrorclient/MirrorClient$State;

.field public static final enum Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

.field public static final enum Ready:Lcom/kelocube/mirrorclient/MirrorClient$State;


# direct methods
.method private static final synthetic $values()[Lcom/kelocube/mirrorclient/MirrorClient$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kelocube/mirrorclient/MirrorClient$State;

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Ready:Lcom/kelocube/mirrorclient/MirrorClient$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Active:Lcom/kelocube/mirrorclient/MirrorClient$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$State;

    const-string v1, "Ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kelocube/mirrorclient/MirrorClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->Ready:Lcom/kelocube/mirrorclient/MirrorClient$State;

    .line 49
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$State;

    const-string v1, "Active"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kelocube/mirrorclient/MirrorClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->Active:Lcom/kelocube/mirrorclient/MirrorClient$State;

    .line 50
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$State;

    const-string v1, "Closed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kelocube/mirrorclient/MirrorClient$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClient$State;->$values()[Lcom/kelocube/mirrorclient/MirrorClient$State;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->$VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$State;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/kelocube/mirrorclient/MirrorClient$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kelocube/mirrorclient/MirrorClient$State;
    .locals 1

    const-class v0, Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kelocube/mirrorclient/MirrorClient$State;

    return-object p0
.end method

.method public static values()[Lcom/kelocube/mirrorclient/MirrorClient$State;
    .locals 1

    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$State;->$VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kelocube/mirrorclient/MirrorClient$State;

    return-object v0
.end method
