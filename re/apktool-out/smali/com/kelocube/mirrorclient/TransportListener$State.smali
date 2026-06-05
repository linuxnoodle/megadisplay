.class public final enum Lcom/kelocube/mirrorclient/TransportListener$State;
.super Ljava/lang/Enum;
.source "TransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/TransportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kelocube/mirrorclient/TransportListener$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/TransportListener$State;",
        "",
        "ready",
        "",
        "(Ljava/lang/String;IZ)V",
        "getReady",
        "()Z",
        "NoCable",
        "ChargeOnly",
        "NoAOAP",
        "AOAPDenied",
        "Waiting",
        "WaitingAOAP",
        "Ready",
        "ReadyWifi",
        "UpdateClient",
        "UpdateHost",
        "Error",
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

.field private static final synthetic $VALUES:[Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum AOAPDenied:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum ChargeOnly:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum Error:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum NoAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum NoCable:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum ReadyWifi:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum UpdateClient:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum UpdateHost:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum Waiting:Lcom/kelocube/mirrorclient/TransportListener$State;

.field public static final enum WaitingAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;


# instance fields
.field private final ready:Z


# direct methods
.method private static final synthetic $values()[Lcom/kelocube/mirrorclient/TransportListener$State;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/kelocube/mirrorclient/TransportListener$State;

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->NoCable:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->ChargeOnly:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->NoAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->AOAPDenied:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->Waiting:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->WaitingAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->ReadyWifi:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateClient:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateHost:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/TransportListener$State;->Error:Lcom/kelocube/mirrorclient/TransportListener$State;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v6, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "NoCable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/kelocube/mirrorclient/TransportListener$State;->NoCable:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 23
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "ChargeOnly"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->ChargeOnly:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 24
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "NoAOAP"

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->NoAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 25
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const-string v8, "AOAPDenied"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->AOAPDenied:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 26
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const-string v2, "Waiting"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Waiting:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 27
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const-string v8, "WaitingAOAP"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->WaitingAOAP:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 28
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const-string v1, "Ready"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Ready:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 29
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const-string v1, "ReadyWifi"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->ReadyWifi:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 30
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v5, "UpdateClient"

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateClient:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 31
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v11, "UpdateHost"

    const/16 v12, 0x9

    const/4 v13, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->UpdateHost:Lcom/kelocube/mirrorclient/TransportListener$State;

    .line 32
    new-instance v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "Error"

    const/16 v3, 0xa

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->Error:Lcom/kelocube/mirrorclient/TransportListener$State;

    invoke-static {}, Lcom/kelocube/mirrorclient/TransportListener$State;->$values()[Lcom/kelocube/mirrorclient/TransportListener$State;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->$VALUES:[Lcom/kelocube/mirrorclient/TransportListener$State;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/kelocube/mirrorclient/TransportListener$State;->ready:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/TransportListener$State;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/kelocube/mirrorclient/TransportListener$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kelocube/mirrorclient/TransportListener$State;
    .locals 1

    const-class v0, Lcom/kelocube/mirrorclient/TransportListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kelocube/mirrorclient/TransportListener$State;

    return-object p0
.end method

.method public static values()[Lcom/kelocube/mirrorclient/TransportListener$State;
    .locals 1

    sget-object v0, Lcom/kelocube/mirrorclient/TransportListener$State;->$VALUES:[Lcom/kelocube/mirrorclient/TransportListener$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kelocube/mirrorclient/TransportListener$State;

    return-object v0
.end method


# virtual methods
.method public final getReady()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/TransportListener$State;->ready:Z

    return v0
.end method
