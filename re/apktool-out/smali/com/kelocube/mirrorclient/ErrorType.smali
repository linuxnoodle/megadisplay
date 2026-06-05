.class public final Lcom/kelocube/mirrorclient/ErrorType;
.super Ljava/lang/Object;
.source "AppException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/ErrorType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ErrorType;",
        "",
        "()V",
        "Companion",
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
.field public static final AOAPDenied:I = 0x4

.field public static final Companion:Lcom/kelocube/mirrorclient/ErrorType$Companion;

.field public static final Disconnected:I = 0x1

.field public static final DriverError:I = 0x5

.field public static final GPUDriverError:I = 0xc

.field public static final HostError:I = 0xa

.field public static final LicenseError:I = 0x6

.field public static final NoEncoder:I = 0xd

.field public static final OutOfMemory:I = 0xb

.field public static final TimedOut:I = 0x8

.field public static final TrialExpired:I = 0x7

.field public static final Unknown:I = 0x0

.field public static final UpdateClient:I = 0x3

.field public static final UpdateHost:I = 0x2

.field public static final WarnBadResolution:I = 0x9

.field public static final WarnSoftwareEncoder:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/ErrorType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/ErrorType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/ErrorType;->Companion:Lcom/kelocube/mirrorclient/ErrorType$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
