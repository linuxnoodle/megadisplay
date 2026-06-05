.class public final Lcom/kelocube/mirrorclient/AsyncDecoder;
.super Lcom/kelocube/mirrorclient/Decoder;
.source "Decoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000cH\u0014J\u0008\u0010\u001d\u001a\u00020\u0017H\u0016J \u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000cH\u0016J\u0008\u0010#\u001a\u00020\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/AsyncDecoder;",
        "Lcom/kelocube/mirrorclient/Decoder;",
        "()V",
        "acceptBuffers",
        "",
        "bufferCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "bufferLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "buffers",
        "Ljava/util/Queue;",
        "",
        "callback",
        "Landroid/media/MediaCodec$Callback;",
        "getCallback",
        "()Landroid/media/MediaCodec$Callback;",
        "codec",
        "Landroid/media/MediaCodec;",
        "handler",
        "Landroid/os/Handler;",
        "running",
        "doProcessInput",
        "",
        "data",
        "",
        "offset",
        "length",
        "flags",
        "release",
        "start",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "height",
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
.field private acceptBuffers:Z

.field private final bufferCondition:Ljava/util/concurrent/locks/Condition;

.field private final bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Landroid/media/MediaCodec$Callback;

.field private final codec:Landroid/media/MediaCodec;

.field private final handler:Landroid/os/Handler;

.field private running:Z


# direct methods
.method public static synthetic $r8$lambda$sCaHtT5kUXtvBts6Wbr9SXb2Yyc(Lcom/kelocube/mirrorclient/AsyncDecoder;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/AsyncDecoder;->start$lambda$1$lambda$0(Lcom/kelocube/mirrorclient/AsyncDecoder;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Decoder;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->buffers:Ljava/util/Queue;

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->handler:Landroid/os/Handler;

    .line 104
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string v1, "createDecoderByType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    .line 225
    new-instance v0, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/AsyncDecoder$callback$1;-><init>(Lcom/kelocube/mirrorclient/AsyncDecoder;)V

    check-cast v0, Landroid/media/MediaCodec$Callback;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->callback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method public static final synthetic access$getAcceptBuffers$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->acceptBuffers:Z

    return p0
.end method

.method public static final synthetic access$getBufferCondition$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static final synthetic access$getBufferLock$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getBuffers$p(Lcom/kelocube/mirrorclient/AsyncDecoder;)Ljava/util/Queue;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->buffers:Ljava/util/Queue;

    return-object p0
.end method

.method private static final start$lambda$1$lambda$0(Lcom/kelocube/mirrorclient/AsyncDecoder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->acceptBuffers:Z

    return-void
.end method


# virtual methods
.method protected doProcessInput([BIII)V
    .locals 10

    const-string p4, "data"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p4, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 203
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    iget-object v3, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 220
    :catch_0
    :try_start_4
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v1, "Decoder error"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 199
    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getCallback()Landroid/media/MediaCodec$Callback;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->callback:Landroid/media/MediaCodec$Callback;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AsyncDecoder;->stop()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start(Landroid/view/Surface;II)V
    .locals 11

    const-string v0, "low-latency"

    const-string v1, "video/avc"

    const-string v2, "Max Operating Rate = "

    const-string v3, "Failed to get max operating rate: "

    const-string v4, "surface"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AsyncDecoder;->stop()V

    .line 110
    iget-object v4, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v4, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Decoder;->start(Landroid/view/Surface;II)V

    .line 114
    invoke-static {v1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "createVideoFormat(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v7, 0x17

    if-lt v6, v7, :cond_0

    .line 124
    :try_start_1
    iget-object v6, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 125
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v2, "operating-rate"

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 128
    :try_start_2
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    const-string v2, "max-input-size"

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v6, 0x1e

    const/4 v7, 0x1

    if-lt v2, v6, :cond_1

    .line 135
    :try_start_3
    iget-object v2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v5, v0, v7}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 138
    :try_start_4
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 143
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/kelocube/mirrorclient/AsyncDecoder;->setUnsupportedResolution(Z)V

    .line 144
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 145
    invoke-virtual {p0, v7}, Lcom/kelocube/mirrorclient/AsyncDecoder;->setUnsupportedResolution(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 147
    :try_start_6
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    iget-object p3, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->callback:Landroid/media/MediaCodec$Callback;

    invoke-virtual {p2, p3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 151
    iget-object p2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    invoke-virtual {p2, v5, p1, p3, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 154
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/kelocube/mirrorclient/AsyncDecoder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/AsyncDecoder$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/AsyncDecoder;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 158
    iput-boolean v7, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->running:Z
    :try_end_6
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 162
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 110
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 160
    :try_start_8
    new-instance p2, Lcom/kelocube/mirrorclient/AppException;

    const-string v6, "Codec error"

    move-object v7, p1

    check-cast v7, Ljava/lang/Throwable;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 110
    :goto_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->running:Z

    if-eqz v1, :cond_0

    .line 168
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping decoding"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :catchall_0
    :try_start_2
    iget-object v2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :catchall_1
    :try_start_3
    iget-object v2, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 180
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/AsyncDecoder;->acceptBuffers:Z

    .line 182
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
