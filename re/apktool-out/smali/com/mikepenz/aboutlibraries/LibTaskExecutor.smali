.class public final enum Lcom/mikepenz/aboutlibraries/LibTaskExecutor;
.super Ljava/lang/Enum;
.source "LibTaskExecutor.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/aboutlibraries/LibTaskExecutor;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibTaskExecutor;",
        "",
        "Ljava/io/Serializable;",
        "(Ljava/lang/String;I)V",
        "DEFAULT_EXECUTOR",
        "THREAD_POOL_EXECUTOR",
        "SERIAL_EXECUTOR",
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
.field private static final synthetic $VALUES:[Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

.field public static final enum DEFAULT_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

.field public static final enum SERIAL_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

.field public static final enum THREAD_POOL_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    const-string v1, "DEFAULT_EXECUTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->DEFAULT_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    new-instance v1, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    const-string v3, "THREAD_POOL_EXECUTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->THREAD_POOL_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    new-instance v3, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    const-string v5, "SERIAL_EXECUTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->SERIAL_EXECUTOR:Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->$VALUES:[Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/LibTaskExecutor;
    .locals 1

    const-class v0, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/aboutlibraries/LibTaskExecutor;
    .locals 1

    sget-object v0, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->$VALUES:[Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    invoke-virtual {v0}, [Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    return-object v0
.end method
