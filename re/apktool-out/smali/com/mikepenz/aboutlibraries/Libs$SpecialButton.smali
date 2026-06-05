.class public final enum Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;
.super Ljava/lang/Enum;
.source "Libs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/Libs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;",
        "",
        "(Ljava/lang/String;I)V",
        "SPECIAL1",
        "SPECIAL2",
        "SPECIAL3",
        "aboutlibraries-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

.field public static final enum SPECIAL1:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

.field public static final enum SPECIAL2:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

.field public static final enum SPECIAL3:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    const-string v1, "SPECIAL1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->SPECIAL1:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    new-instance v1, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    const-string v3, "SPECIAL2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->SPECIAL2:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    new-instance v3, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    const-string v5, "SPECIAL3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->SPECIAL3:Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->$VALUES:[Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;
    .locals 1

    const-class v0, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;
    .locals 1

    sget-object v0, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->$VALUES:[Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    invoke-virtual {v0}, [Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;

    return-object v0
.end method
