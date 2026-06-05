.class public final enum Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
.super Ljava/lang/Enum;
.source "IconDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
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
        "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
        "",
        "(Ljava/lang/String;I)V",
        "NEVER",
        "ALWAYS",
        "IF_LANGUAGE_AVAILABLE",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

.field public static final enum ALWAYS:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

.field public static final enum IF_LANGUAGE_AVAILABLE:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

.field public static final enum NEVER:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->NEVER:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    new-instance v1, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->ALWAYS:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    new-instance v3, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    const-string v5, "IF_LANGUAGE_AVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->IF_LANGUAGE_AVAILABLE:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->$VALUES:[Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
    .locals 1

    const-class v0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-object p0
.end method

.method public static values()[Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
    .locals 1

    sget-object v0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->$VALUES:[Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    invoke-virtual {v0}, [Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-object v0
.end method
