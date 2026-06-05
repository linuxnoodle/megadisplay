.class final Lcom/kelocube/mirrorclient/Transport$runRead$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Transport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Transport;->runRead()V
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/Transport$runRead$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 304
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/Transport;->access$getReadStreams$p(Lcom/kelocube/mirrorclient/Transport;)[Lcom/kelocube/mirrorclient/Transport$Data;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "readStreams"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 306
    iget-object v5, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    const/4 v6, 0x3

    invoke-static {v5, v0, v6}, Lcom/kelocube/mirrorclient/Transport;->access$readFromSocket(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;I)V

    .line 307
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 310
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/Transport;->access$getReadStreams$p(Lcom/kelocube/mirrorclient/Transport;)[Lcom/kelocube/mirrorclient/Transport$Data;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    aget-object v0, v1, v5

    :cond_2
    :goto_1
    if-lez v6, :cond_7

    .line 317
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v1

    .line 318
    :goto_2
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 319
    const-string v4, "Check failed."

    if-lez v1, :cond_6

    .line 321
    iget-object v5, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v5, v7, v1}, Lcom/kelocube/mirrorclient/Transport;->access$readFromSocket(Lcom/kelocube/mirrorclient/Transport;Ljava/nio/ByteBuffer;I)V

    sub-int/2addr v6, v1

    .line 325
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v1

    if-nez v1, :cond_5

    .line 327
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 328
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 330
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/Transport$Data;->setLength(I)V

    .line 332
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    .line 334
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_5
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getLength()I

    move-result v1

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 338
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport$runRead$1;->this$0:Lcom/kelocube/mirrorclient/Transport;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/Transport;->getOnData()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {v0, v3}, Lcom/kelocube/mirrorclient/Transport$Data;->setLength(I)V

    .line 341
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 319
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method
