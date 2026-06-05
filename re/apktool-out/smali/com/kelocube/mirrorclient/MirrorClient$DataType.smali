.class public final enum Lcom/kelocube/mirrorclient/MirrorClient$DataType;
.super Ljava/lang/Enum;
.source "MirrorClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/MirrorClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kelocube/mirrorclient/MirrorClient$DataType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0015\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorClient$DataType;",
        "",
        "id",
        "",
        "(Ljava/lang/String;IB)V",
        "getId",
        "()B",
        "State",
        "Configure",
        "Stop",
        "Frame",
        "FrameDone",
        "PointerMove",
        "PointerShape",
        "TakeScreenshot",
        "Touch",
        "Pen",
        "Unlock",
        "Scale",
        "InputConfig",
        "InputKey",
        "Error",
        "Keyboard",
        "Command",
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

.field private static final synthetic $VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Command:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Configure:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Error:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Frame:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum FrameDone:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum InputConfig:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum InputKey:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Keyboard:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Pen:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum PointerMove:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum PointerShape:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Scale:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum State:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Stop:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum TakeScreenshot:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Touch:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

.field public static final enum Unlock:Lcom/kelocube/mirrorclient/MirrorClient$DataType;


# instance fields
.field private final id:B


# direct methods
.method private static final synthetic $values()[Lcom/kelocube/mirrorclient/MirrorClient$DataType;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->State:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Configure:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Stop:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Frame:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->FrameDone:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerMove:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerShape:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->TakeScreenshot:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Touch:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Pen:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Unlock:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Scale:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->InputConfig:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->InputKey:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Error:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Keyboard:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Command:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "State"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->State:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 29
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Configure"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Configure:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 30
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Stop"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Stop:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 31
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Frame"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Frame:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 32
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "FrameDone"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->FrameDone:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 33
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "PointerMove"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerMove:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 34
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "PointerShape"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->PointerShape:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 35
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "TakeScreenshot"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->TakeScreenshot:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 36
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Touch"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Touch:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 37
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Pen"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Pen:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 38
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Unlock"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Unlock:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 39
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Scale"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Scale:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 40
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "InputConfig"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->InputConfig:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 41
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "InputKey"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->InputKey:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 42
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Error"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Error:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 43
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Keyboard"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Keyboard:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    .line 44
    new-instance v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    const-string v1, "Command"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Command:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->$values()[Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->$VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->id:B

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/kelocube/mirrorclient/MirrorClient$DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kelocube/mirrorclient/MirrorClient$DataType;
    .locals 1

    const-class v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    return-object p0
.end method

.method public static values()[Lcom/kelocube/mirrorclient/MirrorClient$DataType;
    .locals 1

    sget-object v0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->$VALUES:[Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    return-object v0
.end method


# virtual methods
.method public final getId()B
    .locals 1

    .line 27
    iget-byte v0, p0, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->id:B

    return v0
.end method
