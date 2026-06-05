.class final Lcom/kelocube/mirrorclient/MirrorSession$Config;
.super Ljava/lang/Object;
.source "MirrorSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/MirrorSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorSession$Config;",
        "",
        "width",
        "",
        "height",
        "hWidth",
        "hHeight",
        "encoderId",
        "(IIIII)V",
        "getEncoderId",
        "()I",
        "getHHeight",
        "getHWidth",
        "getHeight",
        "getWidth",
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


# instance fields
.field private final encoderId:I

.field private final hHeight:I

.field private final hWidth:I

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->width:I

    .line 50
    iput p2, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->height:I

    .line 51
    iput p3, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->hWidth:I

    .line 52
    iput p4, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->hHeight:I

    .line 53
    iput p5, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->encoderId:I

    return-void
.end method


# virtual methods
.method public final getEncoderId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->encoderId:I

    return v0
.end method

.method public final getHHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->hHeight:I

    return v0
.end method

.method public final getHWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->hWidth:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$Config;->width:I

    return v0
.end method
