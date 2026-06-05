.class public abstract Lcom/kelocube/mirrorclient/Decoder;
.super Ljava/lang/Object;
.source "Decoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00182\u0006\u0010,\u001a\u00020\u0018H$J\u001e\u0010-\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u0018J\u0008\u0010.\u001a\u00020\u000bH&J \u0010/\u001a\u00020\u000b2\u0006\u00100\u001a\u0002012\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0008\u00102\u001a\u00020\u000bH&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R5\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R_\u0010\u0016\u001aG\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u001a\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u000b0\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00063"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Decoder;",
        "",
        "()V",
        "configured",
        "",
        "onError",
        "Lkotlin/Function1;",
        "Lcom/kelocube/mirrorclient/AppException;",
        "Lkotlin/ParameterName;",
        "name",
        "e",
        "",
        "getOnError",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnError",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onFrame",
        "Lkotlin/Function0;",
        "getOnFrame",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnFrame",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onNewFormat",
        "Lkotlin/Function3;",
        "",
        "width",
        "height",
        "Landroid/graphics/Rect;",
        "crop",
        "getOnNewFormat",
        "()Lkotlin/jvm/functions/Function3;",
        "setOnNewFormat",
        "(Lkotlin/jvm/functions/Function3;)V",
        "<set-?>",
        "unsupportedResolution",
        "getUnsupportedResolution",
        "()Z",
        "setUnsupportedResolution",
        "(Z)V",
        "doProcessInput",
        "data",
        "",
        "offset",
        "length",
        "flags",
        "processInput",
        "release",
        "start",
        "surface",
        "Landroid/view/Surface;",
        "stop",
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
.field private configured:Z

.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onFrame:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onNewFormat:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedResolution:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/kelocube/mirrorclient/Decoder$onError$1;->INSTANCE:Lcom/kelocube/mirrorclient/Decoder$onError$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onError:Lkotlin/jvm/functions/Function1;

    .line 87
    sget-object v0, Lcom/kelocube/mirrorclient/Decoder$onFrame$1;->INSTANCE:Lcom/kelocube/mirrorclient/Decoder$onFrame$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onFrame:Lkotlin/jvm/functions/Function0;

    .line 88
    sget-object v0, Lcom/kelocube/mirrorclient/Decoder$onNewFormat$1;->INSTANCE:Lcom/kelocube/mirrorclient/Decoder$onNewFormat$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onNewFormat:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method protected abstract doProcessInput([BIII)V
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnFrame()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onFrame:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnNewFormat()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Decoder;->onNewFormat:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getUnsupportedResolution()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Decoder;->unsupportedResolution:Z

    return v0
.end method

.method public final processInput([BII)V
    .locals 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Decoder;->configured:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    add-int v0, p2, p3

    const/4 v2, -0x1

    move v6, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    :goto_0
    const/4 v8, 0x1

    if-eqz v3, :cond_0

    if-nez v4, :cond_5

    :cond_0
    add-int/lit8 v9, v6, 0x4

    if-ge v9, v0, :cond_5

    .line 50
    :try_start_0
    aget-byte v10, p1, v6

    if-nez v10, :cond_4

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, p1, v10

    if-nez v10, :cond_4

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, p1, v10

    if-nez v10, :cond_4

    add-int/lit8 v10, v6, 0x3

    aget-byte v10, p1, v10

    if-ne v10, v8, :cond_4

    if-ne v5, v2, :cond_1

    .line 53
    aget-byte v10, p1, v9

    const/16 v11, 0x67

    if-ne v10, v11, :cond_2

    move v5, v6

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    sub-int v3, v6, v5

    :cond_2
    :goto_1
    if-ne v7, v2, :cond_3

    .line 59
    aget-byte v8, p1, v9

    const/16 v9, 0x68

    if-ne v8, v9, :cond_4

    move v7, v6

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    sub-int v4, v6, v7

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    if-eq v5, v2, :cond_8

    if-eq v7, v2, :cond_8

    if-eqz v3, :cond_7

    if-nez v4, :cond_6

    sub-int v4, v0, v7

    :cond_6
    add-int v0, v3, v4

    .line 71
    new-array v2, v0, [B

    add-int v6, v5, v3

    .line 72
    invoke-static {p1, v2, v1, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    add-int/2addr v4, v7

    .line 73
    invoke-static {p1, v2, v3, v7, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    const/4 v3, 0x2

    .line 74
    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/kelocube/mirrorclient/Decoder;->doProcessInput([BIII)V

    goto :goto_4

    .line 68
    :cond_7
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_8
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No SPS/PPS found in stream"

    invoke-static {v0, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 79
    :goto_3
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_4
    iput-boolean v8, p0, Lcom/kelocube/mirrorclient/Decoder;->configured:Z

    .line 83
    :cond_9
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/kelocube/mirrorclient/Decoder;->doProcessInput([BIII)V

    return-void
.end method

.method public abstract release()V
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Decoder;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnFrame(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Decoder;->onFrame:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnNewFormat(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/graphics/Rect;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Decoder;->onNewFormat:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method protected final setUnsupportedResolution(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Decoder;->unsupportedResolution:Z

    return-void
.end method

.method public start(Landroid/view/Surface;II)V
    .locals 2

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting decoding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/Decoder;->configured:Z

    return-void
.end method

.method public abstract stop()V
.end method
