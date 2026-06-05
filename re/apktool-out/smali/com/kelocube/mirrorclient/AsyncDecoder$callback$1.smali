.class public final Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;
.super Landroid/media/MediaCodec$Callback;
.source "Decoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/AsyncDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/kelocube/mirrorclient/AsyncDecoder$callback$1",
        "Landroid/media/MediaCodec$Callback;",
        "onError",
        "",
        "codec",
        "Landroid/media/MediaCodec;",
        "e",
        "Landroid/media/MediaCodec$CodecException;",
        "onInputBufferAvailable",
        "id",
        "",
        "onOutputBufferAvailable",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "onOutputFormatChanged",
        "format",
        "Landroid/media/MediaFormat;",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/AsyncDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    .line 225
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 7

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AsyncDecoder;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    new-instance v6, Lcom/kelocube/mirrorclient/AppException;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Codec error"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/AsyncDecoder;->access$getAcceptBuffers$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/AsyncDecoder;->access$getBufferLock$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 229
    :try_start_0
    invoke-static {v0}, Lcom/kelocube/mirrorclient/AsyncDecoder;->access$getBuffers$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/Queue;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {v0}, Lcom/kelocube/mirrorclient/AsyncDecoder;->access$getBufferCondition$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 231
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object p3, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-static {p3}, Lcom/kelocube/mirrorclient/AsyncDecoder;->access$getAcceptBuffers$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 238
    invoke-virtual {p1, p2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 239
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AsyncDecoder;->getOnFrame()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "format"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    const-string p1, "width"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 245
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 246
    new-instance v1, Landroid/graphics/Rect;

    .line 247
    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 248
    const-string v3, "crop-top"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 249
    const-string v4, "crop-right"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 250
    const-string v5, "crop-bottom"

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 246
    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New video format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", crop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;->this$0:Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/AsyncDecoder;->getOnNewFormat()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
