.class public final Lcom/kelocube/mirrorclient/Transport$Data;
.super Ljava/lang/Object;
.source "Transport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "length",
        "",
        "(Ljava/nio/ByteBuffer;I)V",
        "getBuffer",
        "()Ljava/nio/ByteBuffer;",
        "getLength",
        "()I",
        "setLength",
        "(I)V",
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
.field private final buffer:Ljava/nio/ByteBuffer;

.field private length:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport$Data;->buffer:Ljava/nio/ByteBuffer;

    .line 41
    iput p2, p0, Lcom/kelocube/mirrorclient/Transport$Data;->length:I

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$Data;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/kelocube/mirrorclient/Transport$Data;->length:I

    return v0
.end method

.method public final setLength(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/kelocube/mirrorclient/Transport$Data;->length:I

    return-void
.end method
