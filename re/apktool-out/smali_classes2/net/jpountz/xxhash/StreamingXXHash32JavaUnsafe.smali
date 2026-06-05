.class final Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;
.super Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;
.source "StreamingXXHash32JavaUnsafe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe$Factory;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 6

    .line 33
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->totalLen:J

    const-wide/16 v2, 0x10

    const v4, 0x165667b1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 34
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    const/16 v2, 0xc

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    const/16 v2, 0x12

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->seed:I

    add-int/2addr v0, v4

    :goto_0
    int-to-long v0, v0

    .line 39
    iget-wide v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->totalLen:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 42
    :goto_1
    iget v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    add-int/lit8 v2, v2, -0x4

    const v3, -0x3d4d51c3

    if-gt v0, v2, :cond_1

    .line 43
    iget-object v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    invoke-static {v2, v0}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v2

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    const/16 v2, 0x11

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    const v2, 0x27d4eb2f

    mul-int v1, v1, v2

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 48
    :cond_1
    :goto_2
    iget v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    if-ge v0, v2, :cond_2

    .line 49
    iget-object v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    invoke-static {v2, v0}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    mul-int v2, v2, v4

    add-int/2addr v1, v2

    const/16 v2, 0xb

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    const v2, -0x61c8864f

    mul-int v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    ushr-int/lit8 v0, v1, 0xf

    xor-int/2addr v0, v1

    const v1, -0x7a143589

    mul-int v0, v0, v1

    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method public update([BII)V
    .locals 10

    .line 65
    invoke-static {p1, p2, p3}, Lnet/jpountz/util/SafeUtils;->checkRange([BII)V

    .line 67
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->totalLen:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->totalLen:J

    .line 69
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    iget v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget p1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    return-void

    :cond_0
    add-int/2addr p3, p2

    .line 77
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    const/4 v2, 0x0

    const v3, -0x61c8864f

    const/16 v4, 0xd

    const v5, -0x7a143589

    if-lez v0, :cond_1

    .line 78
    iget-object v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    iget v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    iget v7, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    rsub-int/lit8 v7, v7, 0x10

    invoke-static {p1, p2, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    iget-object v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    invoke-static {v6, v2}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    .line 81
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    .line 82
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    mul-int v0, v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    .line 84
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    iget-object v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    .line 85
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    .line 86
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    mul-int v0, v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    .line 88
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    iget-object v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    .line 89
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    .line 90
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    mul-int v0, v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    .line 92
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    iget-object v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    const/16 v7, 0xc

    invoke-static {v6, v7}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v0, v6

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    .line 93
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    invoke-static {v0, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    .line 94
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    mul-int v0, v0, v3

    iput v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    .line 96
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    sub-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 97
    iput v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    :cond_1
    add-int/lit8 v0, p3, -0x10

    .line 102
    iget v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    .line 103
    iget v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    .line 104
    iget v7, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    .line 105
    iget v8, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    :goto_0
    if-gt p2, v0, :cond_2

    .line 108
    invoke-static {p1, p2}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int v9, v9, v5

    add-int/2addr v1, v9

    .line 109
    invoke-static {v1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int v1, v1, v3

    add-int/lit8 v9, p2, 0x4

    .line 113
    invoke-static {p1, v9}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int v9, v9, v5

    add-int/2addr v6, v9

    .line 114
    invoke-static {v6, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    mul-int v6, v6, v3

    add-int/lit8 v9, p2, 0x8

    .line 118
    invoke-static {p1, v9}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int v9, v9, v5

    add-int/2addr v7, v9

    .line 119
    invoke-static {v7, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    mul-int v7, v7, v3

    add-int/lit8 v9, p2, 0xc

    .line 123
    invoke-static {p1, v9}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int v9, v9, v5

    add-int/2addr v8, v9

    .line 124
    invoke-static {v8, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    mul-int v8, v8, v3

    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 129
    :cond_2
    iput v1, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v1:I

    .line 130
    iput v6, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v2:I

    .line 131
    iput v7, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v3:I

    .line 132
    iput v8, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->v4:I

    if-ge p2, p3, :cond_3

    .line 136
    iget-object v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memory:[B

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iput p3, p0, Lnet/jpountz/xxhash/StreamingXXHash32JavaUnsafe;->memSize:I

    :cond_3
    return-void
.end method
