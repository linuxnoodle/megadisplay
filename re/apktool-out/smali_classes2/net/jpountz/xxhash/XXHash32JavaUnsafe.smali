.class final Lnet/jpountz/xxhash/XXHash32JavaUnsafe;
.super Lnet/jpountz/xxhash/XXHash32;
.source "XXHash32JavaUnsafe.java"


# static fields
.field public static final INSTANCE:Lnet/jpountz/xxhash/XXHash32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lnet/jpountz/xxhash/XXHash32JavaUnsafe;

    invoke-direct {v0}, Lnet/jpountz/xxhash/XXHash32JavaUnsafe;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/XXHash32JavaUnsafe;->INSTANCE:Lnet/jpountz/xxhash/XXHash32;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lnet/jpountz/xxhash/XXHash32;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;III)I
    .locals 11

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/jpountz/xxhash/XXHash32JavaUnsafe;->hash([BIII)I

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-static {p1, p2, p3}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 91
    invoke-static {p1}, Lnet/jpountz/util/ByteBufferUtils;->inLittleEndianOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int v0, p2, p3

    const v1, 0x165667b1

    const/16 v2, 0x10

    const v3, -0x61c8864f

    const v4, -0x7a143589

    if-lt p3, v2, :cond_2

    add-int/lit8 v5, v0, -0x10

    const v6, 0x24234428

    add-int/2addr v6, p4

    add-int v7, p4, v4

    sub-int v8, p4, v3

    .line 103
    :cond_1
    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v6, v9

    const/16 v9, 0xd

    .line 104
    invoke-static {v6, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    mul-int v6, v6, v3

    add-int/lit8 v10, p2, 0x4

    .line 108
    invoke-static {p1, v10}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int v10, v10, v4

    add-int/2addr v7, v10

    .line 109
    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    mul-int v7, v7, v3

    add-int/lit8 v10, p2, 0x8

    .line 113
    invoke-static {p1, v10}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int v10, v10, v4

    add-int/2addr p4, v10

    .line 114
    invoke-static {p4, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    mul-int p4, p4, v3

    add-int/lit8 v10, p2, 0xc

    .line 118
    invoke-static {p1, v10}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int v10, v10, v4

    add-int/2addr v8, v10

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    mul-int v8, v8, v3

    add-int/2addr p2, v2

    if-le p2, v5, :cond_1

    const/4 v2, 0x1

    .line 124
    invoke-static {v6, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    const/4 v5, 0x7

    invoke-static {v7, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v2, v5

    const/16 v5, 0xc

    invoke-static {p4, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    add-int/2addr v2, p4

    const/16 p4, 0x12

    invoke-static {v8, p4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    add-int/2addr v2, p4

    goto :goto_0

    :cond_2
    add-int v2, p4, v1

    :goto_0
    add-int/2addr v2, p3

    :goto_1
    add-int/lit8 p3, v0, -0x4

    const p4, -0x3d4d51c3

    if-gt p2, p3, :cond_3

    .line 132
    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result p3

    mul-int p3, p3, p4

    add-int/2addr v2, p3

    const/16 p3, 0x11

    .line 133
    invoke-static {v2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p3

    const p4, 0x27d4eb2f

    mul-int v2, p3, p4

    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    :cond_3
    :goto_2
    if-ge p2, v0, :cond_4

    .line 138
    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result p3

    and-int/lit16 p3, p3, 0xff

    mul-int p3, p3, v1

    add-int/2addr v2, p3

    const/16 p3, 0xb

    .line 139
    invoke-static {v2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p3

    mul-int v2, p3, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    ushr-int/lit8 p1, v2, 0xf

    xor-int/2addr p1, v2

    mul-int p1, p1, v4

    ushr-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    mul-int p1, p1, p4

    ushr-int/lit8 p2, p1, 0x10

    xor-int/2addr p1, p2

    return p1
.end method

.method public hash([BIII)I
    .locals 11

    .line 23
    invoke-static {p1, p2, p3}, Lnet/jpountz/util/UnsafeUtils;->checkRange([BII)V

    add-int v0, p2, p3

    const v1, 0x165667b1

    const v2, -0x61c8864f

    const v3, -0x7a143589

    const/16 v4, 0x10

    if-lt p3, v4, :cond_1

    add-int/lit8 v5, v0, -0x10

    const v6, 0x24234428

    add-int/2addr v6, p4

    add-int v7, p4, v3

    sub-int v8, p4, v2

    .line 35
    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int v9, v9, v3

    add-int/2addr v6, v9

    const/16 v9, 0xd

    .line 36
    invoke-static {v6, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    mul-int v6, v6, v2

    add-int/lit8 v10, p2, 0x4

    .line 40
    invoke-static {p1, v10}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int v10, v10, v3

    add-int/2addr v7, v10

    .line 41
    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    mul-int v7, v7, v2

    add-int/lit8 v10, p2, 0x8

    .line 45
    invoke-static {p1, v10}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int v10, v10, v3

    add-int/2addr p4, v10

    .line 46
    invoke-static {p4, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    mul-int p4, p4, v2

    add-int/lit8 v10, p2, 0xc

    .line 50
    invoke-static {p1, v10}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int v10, v10, v3

    add-int/2addr v8, v10

    .line 51
    invoke-static {v8, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    mul-int v8, v8, v2

    add-int/2addr p2, v4

    if-le p2, v5, :cond_0

    const/4 v4, 0x1

    .line 56
    invoke-static {v6, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    const/4 v5, 0x7

    invoke-static {v7, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xc

    invoke-static {p4, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    add-int/2addr v4, p4

    const/16 p4, 0x12

    invoke-static {v8, p4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p4

    add-int/2addr v4, p4

    goto :goto_0

    :cond_1
    add-int v4, p4, v1

    :goto_0
    add-int/2addr v4, p3

    :goto_1
    add-int/lit8 p3, v0, -0x4

    const p4, -0x3d4d51c3

    if-gt p2, p3, :cond_2

    .line 64
    invoke-static {p1, p2}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result p3

    mul-int p3, p3, p4

    add-int/2addr v4, p3

    const/16 p3, 0x11

    .line 65
    invoke-static {v4, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p3

    const p4, 0x27d4eb2f

    mul-int v4, p3, p4

    add-int/lit8 p2, p2, 0x4

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p2, v0, :cond_3

    .line 70
    invoke-static {p1, p2}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result p3

    and-int/lit16 p3, p3, 0xff

    mul-int p3, p3, v1

    add-int/2addr v4, p3

    const/16 p3, 0xb

    .line 71
    invoke-static {v4, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p3

    mul-int v4, p3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    ushr-int/lit8 p1, v4, 0xf

    xor-int/2addr p1, v4

    mul-int p1, p1, v3

    ushr-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    mul-int p1, p1, p4

    ushr-int/lit8 p2, p1, 0x10

    xor-int/2addr p1, p2

    return p1
.end method
