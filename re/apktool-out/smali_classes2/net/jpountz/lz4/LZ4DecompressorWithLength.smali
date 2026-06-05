.class public Lnet/jpountz/lz4/LZ4DecompressorWithLength;
.super Ljava/lang/Object;
.source "LZ4DecompressorWithLength.java"


# instance fields
.field private final decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;


# direct methods
.method public constructor <init>(Lnet/jpountz/lz4/LZ4FastDecompressor;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    return-void
.end method

.method public static getDecompressedLength(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p0, v0}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static getDecompressedLength(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static getDecompressedLength([B)I
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result p0

    return p0
.end method

.method public static getDecompressedLength([BI)I
    .locals 2

    .line 50
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
    .locals 6

    .line 161
    invoke-static {p1, p2}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 162
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public decompress([BI[BI)I
    .locals 6

    .line 106
    invoke-static {p1, p2}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result v5

    .line 107
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public decompress([B[B)I
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0, p2, v0}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompress([BI[BI)I

    move-result p1

    return p1
.end method

.method public decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    move-object v2, p1

    move-object v4, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v1

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-void
.end method

.method public decompress([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompress([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public decompress([BI)[B
    .locals 2

    .line 133
    invoke-static {p1, p2}, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->getDecompressedLength([BI)I

    move-result v0

    .line 134
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4DecompressorWithLength;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {v1, p1, p2, v0}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress([BII)[B

    move-result-object p1

    return-object p1
.end method
