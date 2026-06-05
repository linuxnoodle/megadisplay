.class public final Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;
.super Ljava/lang/Object;
.source "IntentReceiverActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "NS_START_COOLDOWN",
        "",
        "intentSent",
        "",
        "lastStartTime",
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
.field private static final NS_START_COOLDOWN:J = 0xb2d05e00L

.field private static intentSent:I

.field private static lastStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getIntentSent$p()I
    .locals 1

    .line 1
    sget v0, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->intentSent:I

    return v0
.end method

.method public static final synthetic access$getLastStartTime$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->lastStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$setIntentSent$p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->intentSent:I

    return-void
.end method

.method public static final synthetic access$setLastStartTime$p(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->lastStartTime:J

    return-void
.end method
