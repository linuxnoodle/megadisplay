.class public final Lcom/kelocube/mirrorclient/TransportKt;
.super Ljava/lang/Object;
.source "Transport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\t\"\u000e\u0010\n\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000*@\u0010\u000c\"\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\r2\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\r*\u0098\u0001\u0010\u0013\"2\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u0011`\u0016\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00120\u00142`\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012A\u0012?\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\rj\u0011`\u0016\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00120\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "HANDSHAKE_BASE",
        "",
        "HANDSHAKE_VERSION_LENGTH",
        "",
        "READ_BUFFER_SIZE_0",
        "READ_BUFFER_SIZE_1",
        "SEND_BUFFER_SIZE",
        "SUPPORTED_HOST_VERSIONS",
        "",
        "[Ljava/lang/Integer;",
        "TIMEOUT_TICKS",
        "TIMEOUT_TICK_MS",
        "DataCallback",
        "Lkotlin/Function1;",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "to",
        "",
        "OnDataHandler",
        "Lkotlin/Function2;",
        "maxLength",
        "Lcom/kelocube/mirrorclient/DataCallback;",
        "callback",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HANDSHAKE_BASE:Ljava/lang/String; = "KELOCUBE_MIRR_"

.field private static final HANDSHAKE_VERSION_LENGTH:I = 0x3

.field private static final READ_BUFFER_SIZE_0:I = 0x186a0

.field private static final READ_BUFFER_SIZE_1:I = 0x989680

.field private static final SEND_BUFFER_SIZE:I = 0x2710

.field private static final SUPPORTED_HOST_VERSIONS:[Ljava/lang/Integer;

.field private static final TIMEOUT_TICKS:I = 0xa

.field private static final TIMEOUT_TICK_MS:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/kelocube/mirrorclient/TransportKt;->SUPPORTED_HOST_VERSIONS:[Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$getHANDSHAKE_BASE$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kelocube/mirrorclient/TransportKt;->HANDSHAKE_BASE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHANDSHAKE_VERSION_LENGTH$p()I
    .locals 1

    .line 1
    sget v0, Lcom/kelocube/mirrorclient/TransportKt;->HANDSHAKE_VERSION_LENGTH:I

    return v0
.end method

.method public static final synthetic access$getSUPPORTED_HOST_VERSIONS$p()[Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/kelocube/mirrorclient/TransportKt;->SUPPORTED_HOST_VERSIONS:[Ljava/lang/Integer;

    return-object v0
.end method
