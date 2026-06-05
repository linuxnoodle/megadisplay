.class final Lcom/kelocube/mirrorclient/Transport$runSend$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Transport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Transport;->runSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kelocube/mirrorclient/Transport;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/Transport;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Transport$runSend$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 351
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/Transport;->access$getSendLock$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 352
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "sendBuffer"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_1

    .line 354
    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendCondition$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "sendingBuffer"

    if-nez v2, :cond_2

    :try_start_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    .line 359
    :cond_2
    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_3
    invoke-static {v1, v6}, Lcom/kelocube/mirrorclient/Transport;->access$setSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;)V

    .line 360
    invoke-static {v1, v2}, Lcom/kelocube/mirrorclient/Transport;->access$setSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;)V

    .line 363
    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/Transport;->access$getSendStream$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/channels/GatheringByteChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/Transport;->access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v2}, Lcom/kelocube/mirrorclient/Transport;->access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    iget-object v3, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Transport;->access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v6, p0, Lcom/kelocube/mirrorclient/Transport$runSend$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v6}, Lcom/kelocube/mirrorclient/Transport;->access$getSendingBuffer$p(Lcom/kelocube/mirrorclient/Transport;)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, v6

    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void

    :catchall_0
    move-exception v1

    .line 351
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
