.class public Lnet/jpountz/lz4/LZ4CompressorWithLength;
.super Ljava/lang/Object;
.source "LZ4CompressorWithLength.java"


# instance fields
.field private final compressor:Lnet/jpountz/lz4/LZ4Compressor;


# direct methods
.method public constructor <init>(Lnet/jpountz/lz4/LZ4Compressor;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    return-void
.end method

.method private putOriginalLength(Ljava/nio/ByteBuffer;II)V
    .locals 2

    int-to-byte v0, p3

    .line 51
    invoke-virtual {p1, p2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 53
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 54
    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private putOriginalLength([BII)V
    .locals 2

    int-to-byte v0, p3

    .line 44
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 45
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    .line 46
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 47
    aput-byte p3, p1, p2

    return-void
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 7

    .line 195
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4Compressor;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result p1

    .line 196
    invoke-direct {p0, p4, p5, p3}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->putOriginalLength(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public compress([BII[BI)I
    .locals 8

    .line 131
    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compress([BII[BII)I

    move-result p1

    return p1
.end method

.method public compress([BII[BII)I
    .locals 7

    .line 154
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4Compressor;->compress([BII[BII)I

    move-result p1

    .line 155
    invoke-direct {p0, p4, p5, p3}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->putOriginalLength([BII)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public compress([B[B)I
    .locals 6

    .line 115
    array-length v3, p1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compress([BII[BI)I

    move-result p1

    return p1
.end method

.method public compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-void
.end method

.method public compress([B)[B
    .locals 2

    const/4 v0, 0x0

    .line 75
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compress([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public compress([BII)[B
    .locals 7

    .line 99
    invoke-virtual {p0, p3}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->maxCompressedLength(I)I

    move-result v0

    .line 100
    new-array v0, v0, [B

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    .line 101
    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compress([BII[BI)I

    move-result p1

    .line 102
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public maxCompressedLength(I)I
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4CompressorWithLength;->compressor:Lnet/jpountz/lz4/LZ4Compressor;

    invoke-virtual {v0, p1}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
