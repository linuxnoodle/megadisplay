.class public Lnet/jpountz/lz4/LZ4FrameInputStream;
.super Ljava/io/FilterInputStream;
.source "LZ4FrameInputStream.java"


# static fields
.field static final BLOCK_HASH_MISMATCH:Ljava/lang/String; = "Block checksum mismatch"

.field static final DESCRIPTOR_HASH_MISMATCH:Ljava/lang/String; = "Stream frame descriptor corrupted"

.field static final MAGIC_SKIPPABLE_BASE:I = 0x184d2a50

.field static final NOT_SUPPORTED:Ljava/lang/String; = "Stream unsupported"

.field static final PREMATURE_EOS:Ljava/lang/String; = "Stream ended prematurely"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final checksum:Lnet/jpountz/xxhash/XXHash32;

.field private compressedBuffer:[B

.field private final decompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

.field private expectedContentSize:J

.field private frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

.field private final headerArray:[B

.field private final headerBuffer:Ljava/nio/ByteBuffer;

.field private maxBlockSize:I

.field private rawBuffer:[B

.field private final readNumberBuff:Ljava/nio/ByteBuffer;

.field private final readSingleFrame:Z

.field private totalContentSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor()Lnet/jpountz/lz4/LZ4SafeDecompressor;

    move-result-object v0

    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/xxhash/XXHashFactory;->hash32()Lnet/jpountz/xxhash/XXHash32;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/jpountz/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/LZ4SafeDecompressor;Lnet/jpountz/xxhash/XXHash32;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/jpountz/lz4/LZ4SafeDecompressor;Lnet/jpountz/xxhash/XXHash32;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/LZ4SafeDecompressor;Lnet/jpountz/xxhash/XXHash32;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/jpountz/lz4/LZ4SafeDecompressor;Lnet/jpountz/xxhash/XXHash32;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xf

    .line 49
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerArray:[B

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 54
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->rawBuffer:[B

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->maxBlockSize:I

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->expectedContentSize:J

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 59
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    const/16 p1, 0x8

    .line 214
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    .line 117
    iput-object p2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->decompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

    .line 118
    iput-object p3, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->checksum:Lnet/jpountz/xxhash/XXHash32;

    .line 119
    iput-boolean p4, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    .line 120
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor()Lnet/jpountz/lz4/LZ4SafeDecompressor;

    move-result-object v0

    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/xxhash/XXHashFactory;->hash32()Lnet/jpountz/xxhash/XXHash32;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/jpountz/lz4/LZ4FrameInputStream;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/LZ4SafeDecompressor;Lnet/jpountz/xxhash/XXHash32;Z)V

    return-void
.end method

.method private nextFrameInfo()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    rsub-int/lit8 v4, v1, 0x4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x184d2204

    if-ne v0, v1, :cond_2

    .line 142
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readHeader()V

    const/4 v0, 0x1

    return v0

    :cond_2
    ushr-int/lit8 v0, v0, 0x4

    const v1, 0x184d2a5

    if-ne v0, v1, :cond_3

    .line 145
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->skippableFrame()V

    goto :goto_0

    .line 147
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBlock()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7fffffff

    and-int v8, v0, v4

    if-nez v8, :cond_5

    .line 253
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 255
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->currentStreamHash()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->expectedContentSize:J

    iget-wide v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->totalContentSize:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    goto :goto_2

    .line 260
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Size check mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_4
    :goto_2
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->finish()V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    .line 268
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->compressedBuffer:[B

    goto :goto_3

    .line 270
    :cond_6
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->rawBuffer:[B

    :goto_3
    move-object v6, v0

    .line 272
    iget v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->maxBlockSize:I

    if-gt v8, v0, :cond_d

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_8

    .line 278
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    sub-int v4, v8, v0

    invoke-virtual {v2, v6, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_7

    add-int/2addr v0, v2

    goto :goto_4

    .line 280
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_8
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v2, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 288
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->checksum:Lnet/jpountz/xxhash/XXHash32;

    invoke-virtual {v2, v6, v3, v8, v3}, Lnet/jpountz/xxhash/XXHash32;->hash([BIII)I

    move-result v2

    if-ne v0, v2, :cond_9

    goto :goto_5

    .line 289
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Block checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 296
    :try_start_0
    iget-object v5, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->decompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

    iget-object v9, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->rawBuffer:[B

    array-length v11, v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lnet/jpountz/lz4/LZ4SafeDecompressor;->decompress([BII[BII)I

    move-result v8
    :try_end_0
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 303
    :cond_b
    :goto_6
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 304
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    iget-object v1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->rawBuffer:[B

    invoke-virtual {v0, v1, v3, v8}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->updateStreamHash([BII)V

    .line 306
    :cond_c
    iget-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->totalContentSize:J

    int-to-long v2, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 307
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 308
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void

    .line 273
    :cond_d
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->maxBlockSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v5, v6, v2

    const-string v2, "Block size %s exceeded max: %s"

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 172
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 173
    const-string v1, "Stream ended prematurely"

    if-ltz v0, :cond_4

    .line 176
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 182
    invoke-static {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->fromByte(B)Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;

    move-result-object v3

    .line 183
    iget-object v4, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    .line 185
    invoke-static {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BD;->fromByte(B)Lnet/jpountz/lz4/LZ4FrameOutputStream$BD;

    move-result-object v2

    .line 186
    iget-object v4, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    new-instance v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-direct {v0, v3, v2}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;-><init>(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;Lnet/jpountz/lz4/LZ4FrameOutputStream$BD;)V

    iput-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    .line 190
    sget-object v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v3, v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->expectedContentSize:J

    .line 192
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_0
    const-wide/16 v2, 0x0

    .line 194
    iput-wide v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->totalContentSize:J

    .line 197
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->checksum:Lnet/jpountz/xxhash/XXHash32;

    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerArray:[B

    iget-object v3, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->headerBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Lnet/jpountz/xxhash/XXHash32;->hash([BIII)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 198
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_2

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->getBD()Lnet/jpountz/lz4/LZ4FrameOutputStream$BD;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BD;->getBlockMaximumSize()I

    move-result v0

    iput v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->maxBlockSize:I

    .line 208
    new-array v1, v0, [B

    iput-object v1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->compressedBuffer:[B

    .line 209
    new-array v0, v0, [B

    iput-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->rawBuffer:[B

    .line 210
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void

    .line 204
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream frame descriptor corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    rsub-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 237
    iget-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1

    .line 233
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream ended prematurely"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readLong(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    rsub-int/lit8 v3, v1, 0x8

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 225
    iget-object p1, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readNumberBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 221
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream ended prematurely"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skippableFrame()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x400

    .line 154
    new-array v2, v1, [B

    :goto_0
    if-lez v0, :cond_1

    .line 156
    iget-object v3, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->in:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    sub-int/2addr v0, v3

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public getExpectedContentSize()J
    .locals 2

    .line 404
    iget-boolean v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    if-eqz v0, :cond_0

    .line 407
    iget-wide v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->expectedContentSize:J

    return-wide v0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not permitted when multiple frames can be read"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExpectedContentSizeDefined()Z
    .locals 6

    .line 416
    iget-boolean v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    iget-wide v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->expectedContentSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 381
    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "mark not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    :goto_0
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-boolean v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 322
    :cond_1
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 329
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 332
    :goto_0
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-boolean v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 341
    :cond_1
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 344
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 330
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 386
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 353
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_3

    .line 354
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->frameInfo:Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;

    invoke-virtual {v2}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FrameInfo;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    iget-boolean v2, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->readSingleFrame:Z

    if-eqz v2, :cond_1

    return-wide v0

    .line 358
    :cond_1
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->nextFrameInfo()Z

    move-result v2

    if-nez v2, :cond_2

    return-wide v0

    .line 362
    :cond_2
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameInputStream;->readBlock()V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 365
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-wide p1
.end method
