.class public final Lcom/kelocube/mirrorclient/SyncDecoder;
.super Lcom/kelocube/mirrorclient/Decoder;
.source "Decoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0014J\u0018\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u0018H\u0016J\u0008\u0010\"\u001a\u00020\u0018H\u0002J \u0010#\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\nH\u0016J\u0008\u0010(\u001a\u00020\u0018H\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/SyncDecoder;",
        "Lcom/kelocube/mirrorclient/Decoder;",
        "()V",
        "bufferCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "bufferLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "buffers",
        "Ljava/util/Queue;",
        "",
        "codec",
        "Landroid/media/MediaCodec;",
        "handler",
        "Landroid/os/Handler;",
        "inputBuffers",
        "",
        "Ljava/nio/ByteBuffer;",
        "[Ljava/nio/ByteBuffer;",
        "running",
        "",
        "thread",
        "Ljava/lang/Thread;",
        "doProcessInput",
        "",
        "data",
        "",
        "offset",
        "length",
        "flags",
        "onOutputFormatChanged",
        "format",
        "Landroid/media/MediaFormat;",
        "release",
        "runThread",
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

.field private codec:Landroid/media/MediaCodec;

.field private final handler:Landroid/os/Handler;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$3wZGr-beasCw_1RtQYndiqUt83Q(Lcom/kelocube/mirrorclient/SyncDecoder;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->runThread$lambda$1(Lcom/kelocube/mirrorclient/SyncDecoder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NuSNiVaPR1orBWDdyO37oLId4cc(Lcom/kelocube/mirrorclient/SyncDecoder;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/SyncDecoder;->runThread$lambda$3(Lcom/kelocube/mirrorclient/SyncDecoder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMhstBHZ_K3kYmXW1Y0z2MkDeZY(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/SyncDecoder;->runThread$lambda$2(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YP4IcXA0SGv8gKgQOA1UkF-1wM0(Lcom/kelocube/mirrorclient/SyncDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->runThread()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 262
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Decoder;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->buffers:Ljava/util/Queue;

    .line 268
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 269
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    .line 407
    const-string p1, "width"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 408
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 409
    new-instance v1, Landroid/graphics/Rect;

    .line 410
    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 411
    const-string v3, "crop-top"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 412
    const-string v4, "crop-right"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 413
    const-string v5, "crop-bottom"

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 409
    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
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

    .line 415
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->getOnNewFormat()Lkotlin/jvm/functions/Function3;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final runThread()V
    .locals 4

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    const-wide/16 v1, 0x0

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_1

    .line 282
    iget-object v2, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    iget-object v3, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->buffers:Ljava/util/Queue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 285
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 292
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_2

    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 299
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda1;-><init>(Lcom/kelocube/mirrorclient/SyncDecoder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;-><init>(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 313
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda3;-><init>(Lcom/kelocube/mirrorclient/SyncDecoder;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private static final runThread$lambda$1(Lcom/kelocube/mirrorclient/SyncDecoder;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->getOnFrame()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final runThread$lambda$2(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "getOutputFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/kelocube/mirrorclient/SyncDecoder;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private static final runThread$lambda$3(Lcom/kelocube/mirrorclient/SyncDecoder;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    new-instance v6, Lcom/kelocube/mirrorclient/AppException;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Codec error"

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected doProcessInput([BIII)V
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 384
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    :goto_0
    if-nez v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 387
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 388
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    const-string v2, "inputBuffers"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 393
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 394
    invoke-virtual {v2, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    iget-object v4, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 401
    :catch_0
    :try_start_4
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v2, "Decoder error"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 380
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public release()V
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->stop()V

    return-void
.end method

.method public start(Landroid/view/Surface;II)V
    .locals 8

    const-string v0, "video/avc"

    const-string v1, "surface"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/SyncDecoder;->stop()V

    .line 322
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 324
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Decoder;->start(Landroid/view/Surface;II)V

    .line 326
    invoke-static {v0, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    const-string p3, "createVideoFormat(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p3, v2, :cond_0

    .line 330
    const-string p3, "operating-rate"

    const/16 v2, 0x3e8

    invoke-virtual {p2, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 331
    :cond_0
    const-string p3, "max-input-size"

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 333
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    iput-object p3, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    .line 334
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p3, p2, p1, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 337
    invoke-virtual {p3}, Landroid/media/MediaCodec;->start()V

    .line 338
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "getInputBuffers(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->running:Z

    .line 341
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/SyncDecoder;)V

    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->thread:Ljava/lang/Thread;

    .line 342
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    move-object v4, p1

    .line 344
    :try_start_2
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Codec error"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 322
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 351
    :try_start_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping decoding"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 353
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->running:Z

    .line 355
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 350
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_1
    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->thread:Ljava/lang/Thread;

    .line 362
    :try_start_1
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :catchall_0
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    :catchall_1
    :cond_3
    iput-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->codec:Landroid/media/MediaCodec;

    .line 369
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :catchall_2
    move-exception v1

    .line 350
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
