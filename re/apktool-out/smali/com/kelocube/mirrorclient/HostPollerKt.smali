.class public final Lcom/kelocube/mirrorclient/HostPollerKt;
.super Ljava/lang/Object;
.source "HostPoller.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "POLL_DELAY_FAIL",
        "",
        "POLL_DELAY_SUCCESS",
        "POLL_TIMEOUT",
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
.field private static final POLL_DELAY_FAIL:I = 0x7d0

.field private static final POLL_DELAY_SUCCESS:I = 0x2710

.field private static final POLL_TIMEOUT:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getPOLL_DELAY_FAIL$p()I
    .locals 1

    .line 1
    sget v0, Lcom/kelocube/mirrorclient/HostPollerKt;->POLL_DELAY_FAIL:I

    return v0
.end method

.method public static final synthetic access$getPOLL_DELAY_SUCCESS$p()I
    .locals 1

    .line 1
    sget v0, Lcom/kelocube/mirrorclient/HostPollerKt;->POLL_DELAY_SUCCESS:I

    return v0
.end method

.method public static final synthetic access$getPOLL_TIMEOUT$p()I
    .locals 1

    .line 1
    sget v0, Lcom/kelocube/mirrorclient/HostPollerKt;->POLL_TIMEOUT:I

    return v0
.end method
