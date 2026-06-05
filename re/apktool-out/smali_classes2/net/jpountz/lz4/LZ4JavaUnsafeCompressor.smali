.class final Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;
.super Lnet/jpountz/lz4/LZ4Compressor;
.source "LZ4JavaUnsafeCompressor.java"


# static fields
.field public static final INSTANCE:Lnet/jpountz/lz4/LZ4Compressor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;

    invoke-direct {v0}, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;->INSTANCE:Lnet/jpountz/lz4/LZ4Compressor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4Compressor;-><init>()V

    return-void
.end method

.method static compress64k(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    add-int v4, v1, v2

    add-int/lit8 v6, v4, -0x5

    add-int/lit8 v7, v4, -0xc

    const/16 v8, 0xd

    if-lt v2, v8, :cond_8

    const/16 v2, 0x2000

    .line 274
    new-array v2, v2, [S

    add-int/lit8 v8, v1, 0x1

    move/from16 v10, p4

    move v9, v1

    .line 286
    :goto_0
    sget v11, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v12, 0x1

    shl-int v11, v12, v11

    :goto_1
    add-int/2addr v12, v8

    add-int/lit8 v13, v11, 0x1

    .line 290
    sget v14, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int/2addr v11, v14

    if-le v12, v7, :cond_0

    move v1, v9

    goto/16 :goto_5

    .line 296
    :cond_0
    invoke-static {v0, v8}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v14

    invoke-static {v14}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v14

    .line 297
    invoke-static {v2, v14}, Lnet/jpountz/util/UnsafeUtils;->readShort([SI)I

    move-result v15

    add-int/2addr v15, v1

    move/from16 p2, v11

    sub-int v11, v8, v1

    .line 298
    invoke-static {v2, v14, v11}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 299
    invoke-static {v0, v15, v8}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 302
    invoke-static {v0, v15, v8, v1, v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v11

    sub-int/2addr v8, v11

    sub-int/2addr v15, v11

    sub-int v11, v8, v9

    add-int/lit8 v12, v10, 0x1

    add-int v13, v12, v11

    add-int/lit8 v13, v13, 0x8

    ushr-int/lit8 v14, v11, 0x8

    add-int/2addr v13, v14

    .line 312
    const-string v14, "maxDestLen is too small"

    if-gt v13, v5, :cond_6

    const/16 v13, 0xf

    if-lt v11, v13, :cond_1

    const/16 v13, 0xf0

    .line 317
    invoke-static {v3, v10, v13}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v13, v11, -0xf

    .line 318
    invoke-static {v13, v3, v12}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v12

    goto :goto_2

    :cond_1
    shl-int/lit8 v13, v11, 0x4

    .line 320
    invoke-static {v3, v10, v13}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 324
    :goto_2
    invoke-static {v0, v9, v3, v12, v11}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v12, v11

    :goto_3
    sub-int v9, v8, v15

    int-to-short v9, v9

    .line 329
    invoke-static {v3, v12, v9}, Lnet/jpountz/util/ByteBufferUtils;->writeShortLE(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v9, v12, 0x2

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v15, v15, 0x4

    .line 335
    invoke-static {v0, v15, v8, v6}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v11

    add-int/lit8 v12, v12, 0x8

    ushr-int/lit8 v13, v11, 0x8

    add-int/2addr v12, v13

    if-gt v12, v5, :cond_5

    add-int/2addr v8, v11

    const/16 v12, 0xf

    if-lt v11, v12, :cond_2

    .line 343
    invoke-static {v3, v10}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v3, v10, v13}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v11, v11, -0xf

    .line 344
    invoke-static {v11, v3, v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v9

    goto :goto_4

    .line 346
    :cond_2
    invoke-static {v3, v10}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v13

    or-int/2addr v11, v13

    invoke-static {v3, v10, v11}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    :goto_4
    move v10, v9

    if-le v8, v7, :cond_3

    move v1, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v8, -0x2

    .line 356
    invoke-static {v0, v9}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v11

    invoke-static {v11}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v11

    sub-int/2addr v9, v1

    invoke-static {v2, v11, v9}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 359
    invoke-static {v0, v8}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v9

    invoke-static {v9}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v9

    .line 360
    invoke-static {v2, v9}, Lnet/jpountz/util/UnsafeUtils;->readShort([SI)I

    move-result v11

    add-int v15, v1, v11

    sub-int v11, v8, v1

    .line 361
    invoke-static {v2, v9, v11}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 363
    invoke-static {v0, v8, v15}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v9, v10, 0x1

    const/4 v11, 0x0

    .line 368
    invoke-static {v3, v10, v11}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    move v12, v9

    goto :goto_3

    .line 337
    :cond_5
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v14}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_6
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v14}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v8, v12

    move v11, v13

    move/from16 v12, p2

    goto/16 :goto_1

    :cond_8
    move/from16 v10, p4

    :goto_5
    sub-int v2, v4, v1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, p5

    .line 376
    invoke-static/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    sub-int v0, v0, p4

    return v0
.end method

.method static compress64k([BII[BII)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    add-int v4, v1, v2

    add-int/lit8 v6, v4, -0x5

    add-int/lit8 v7, v4, -0xc

    const/16 v8, 0xd

    if-lt v2, v8, :cond_8

    const/16 v2, 0x2000

    .line 32
    new-array v2, v2, [S

    add-int/lit8 v8, v1, 0x1

    move/from16 v10, p4

    move v9, v1

    .line 44
    :goto_0
    sget v11, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v12, 0x1

    shl-int v11, v12, v11

    :goto_1
    add-int/2addr v12, v8

    add-int/lit8 v13, v11, 0x1

    .line 48
    sget v14, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int/2addr v11, v14

    if-le v12, v7, :cond_0

    move v1, v9

    goto/16 :goto_5

    .line 54
    :cond_0
    invoke-static {v0, v8}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v14

    invoke-static {v14}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v14

    .line 55
    invoke-static {v2, v14}, Lnet/jpountz/util/UnsafeUtils;->readShort([SI)I

    move-result v15

    add-int/2addr v15, v1

    move/from16 p2, v11

    sub-int v11, v8, v1

    .line 56
    invoke-static {v2, v14, v11}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 57
    invoke-static {v0, v15, v8}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->readIntEquals([BII)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 60
    invoke-static {v0, v15, v8, v1, v9}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->commonBytesBackward([BIIII)I

    move-result v11

    sub-int/2addr v8, v11

    sub-int/2addr v15, v11

    sub-int v11, v8, v9

    add-int/lit8 v12, v10, 0x1

    add-int v13, v12, v11

    add-int/lit8 v13, v13, 0x8

    ushr-int/lit8 v14, v11, 0x8

    add-int/2addr v13, v14

    .line 70
    const-string v14, "maxDestLen is too small"

    if-gt v13, v5, :cond_6

    const/16 v13, 0xf

    if-lt v11, v13, :cond_1

    const/16 v13, 0xf0

    .line 75
    invoke-static {v3, v10, v13}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    add-int/lit8 v13, v11, -0xf

    .line 76
    invoke-static {v13, v3, v12}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v12

    goto :goto_2

    :cond_1
    shl-int/lit8 v13, v11, 0x4

    .line 78
    invoke-static {v3, v10, v13}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    .line 82
    :goto_2
    invoke-static {v0, v9, v3, v12, v11}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    add-int/2addr v12, v11

    :goto_3
    sub-int v9, v8, v15

    int-to-short v9, v9

    .line 87
    invoke-static {v3, v12, v9}, Lnet/jpountz/util/UnsafeUtils;->writeShortLE([BII)V

    add-int/lit8 v9, v12, 0x2

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v15, v15, 0x4

    .line 93
    invoke-static {v0, v15, v8, v6}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->commonBytes([BIII)I

    move-result v11

    add-int/lit8 v12, v12, 0x8

    ushr-int/lit8 v13, v11, 0x8

    add-int/2addr v12, v13

    if-gt v12, v5, :cond_5

    add-int/2addr v8, v11

    const/16 v12, 0xf

    if-lt v11, v12, :cond_2

    .line 101
    invoke-static {v3, v10}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v3, v10, v13}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    add-int/lit8 v11, v11, -0xf

    .line 102
    invoke-static {v11, v3, v9}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v9

    goto :goto_4

    .line 104
    :cond_2
    invoke-static {v3, v10}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v13

    or-int/2addr v11, v13

    invoke-static {v3, v10, v11}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    :goto_4
    move v10, v9

    if-le v8, v7, :cond_3

    move v1, v8

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v8, -0x2

    .line 114
    invoke-static {v0, v9}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v11

    invoke-static {v11}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v11

    sub-int/2addr v9, v1

    invoke-static {v2, v11, v9}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 117
    invoke-static {v0, v8}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Lnet/jpountz/lz4/LZ4Utils;->hash64k(I)I

    move-result v9

    .line 118
    invoke-static {v2, v9}, Lnet/jpountz/util/UnsafeUtils;->readShort([SI)I

    move-result v11

    add-int v15, v1, v11

    sub-int v11, v8, v1

    .line 119
    invoke-static {v2, v9, v11}, Lnet/jpountz/util/UnsafeUtils;->writeShort([SII)V

    .line 121
    invoke-static {v0, v8, v15}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->readIntEquals([BII)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    move/from16 v16, v9

    move v9, v8

    move/from16 v8, v16

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v9, v10, 0x1

    const/4 v11, 0x0

    .line 126
    invoke-static {v3, v10, v11}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    move v12, v9

    goto :goto_3

    .line 95
    :cond_5
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v14}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_6
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v14}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v8, v12

    move v11, v13

    move/from16 v12, p2

    goto/16 :goto_1

    :cond_8
    move/from16 v10, p4

    :goto_5
    sub-int v2, v4, v1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, p5

    .line 134
    invoke-static/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    sub-int v0, v0, p4

    return v0
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 18

    move/from16 v1, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v6, p6

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v5, v1, v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v8, v4, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v5

    move/from16 v3, p3

    move-object v4, v7

    move v5, v8

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;->compress([BII[BII)I

    move-result v0

    return v0

    .line 386
    :cond_0
    invoke-static/range {p1 .. p1}, Lnet/jpountz/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 387
    invoke-static/range {p4 .. p4}, Lnet/jpountz/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 389
    invoke-static {v5, v1, v3}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 390
    invoke-static {v8, v4, v6}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    add-int v10, v4, v6

    const v0, 0x1000b

    if-ge v3, v0, :cond_1

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v8

    move/from16 v4, p5

    move v5, v10

    .line 394
    invoke-static/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;->compress64k(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    :cond_1
    add-int v0, v1, v3

    add-int/lit8 v2, v0, -0x5

    add-int/lit8 v3, v0, -0xc

    add-int/lit8 v6, v1, 0x1

    const/16 v7, 0x1000

    .line 404
    new-array v7, v7, [I

    .line 405
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    move v9, v1

    move v11, v4

    .line 415
    :goto_0
    sget v12, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v13, 0x1

    shl-int v12, v13, v12

    :goto_1
    add-int/2addr v13, v6

    add-int/lit8 v14, v12, 0x1

    .line 420
    sget v15, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int/2addr v12, v15

    if-le v13, v3, :cond_2

    move v6, v9

    :goto_2
    move v9, v11

    goto/16 :goto_6

    .line 426
    :cond_2
    invoke-static {v5, v6}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v15

    invoke-static {v15}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v15

    move/from16 p1, v12

    .line 427
    invoke-static {v7, v15}, Lnet/jpountz/util/UnsafeUtils;->readInt([II)I

    move-result v12

    move/from16 p3, v13

    sub-int v13, v6, v12

    .line 429
    invoke-static {v7, v15, v6}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    const/high16 v15, 0x10000

    if-ge v13, v15, :cond_a

    .line 430
    invoke-static {v5, v12, v6}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 433
    invoke-static {v5, v12, v6, v1, v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v14

    sub-int/2addr v6, v14

    sub-int/2addr v12, v14

    sub-int v14, v6, v9

    add-int/lit8 v15, v11, 0x1

    add-int v16, v15, v14

    add-int/lit8 v16, v16, 0x8

    ushr-int/lit8 v17, v14, 0x8

    add-int v1, v16, v17

    move/from16 p1, v6

    .line 443
    const-string v6, "maxDestLen is too small"

    if-gt v1, v10, :cond_9

    const/16 v1, 0xf

    if-lt v14, v1, :cond_3

    const/16 v1, 0xf0

    .line 448
    invoke-static {v8, v11, v1}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v1, v14, -0xf

    .line 449
    invoke-static {v1, v8, v15}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v15

    goto :goto_3

    :cond_3
    shl-int/lit8 v1, v14, 0x4

    .line 451
    invoke-static {v8, v11, v1}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 455
    :goto_3
    invoke-static {v5, v9, v8, v15, v14}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v15, v14

    move/from16 v1, p1

    .line 460
    :goto_4
    invoke-static {v8, v15, v13}, Lnet/jpountz/util/ByteBufferUtils;->writeShortLE(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v9, v15, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v12, v12, 0x4

    .line 465
    invoke-static {v5, v12, v1, v2}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v12

    add-int/lit8 v15, v15, 0x8

    ushr-int/lit8 v13, v12, 0x8

    add-int/2addr v15, v13

    if-gt v15, v10, :cond_8

    add-int/2addr v1, v12

    const/16 v13, 0xf

    if-lt v12, v13, :cond_4

    .line 473
    invoke-static {v8, v11}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v14

    or-int/2addr v14, v13

    invoke-static {v8, v11, v14}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 v12, v12, -0xf

    .line 474
    invoke-static {v12, v8, v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v9

    goto :goto_5

    .line 476
    :cond_4
    invoke-static {v8, v11}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v14

    or-int/2addr v12, v14

    invoke-static {v8, v11, v12}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    :goto_5
    move v11, v9

    if-le v1, v3, :cond_5

    move v6, v1

    goto/16 :goto_2

    :goto_6
    sub-int v7, v0, v6

    .line 506
    invoke-static/range {v5 .. v10}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    sub-int/2addr v0, v4

    return v0

    :cond_5
    add-int/lit8 v9, v1, -0x2

    .line 486
    invoke-static {v5, v9}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v12

    invoke-static {v12}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v12

    invoke-static {v7, v12, v9}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    .line 489
    invoke-static {v5, v1}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v9

    invoke-static {v9}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v9

    .line 490
    invoke-static {v7, v9}, Lnet/jpountz/util/UnsafeUtils;->readInt([II)I

    move-result v12

    .line 491
    invoke-static {v7, v9, v1}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    sub-int v9, v1, v12

    const/high16 v14, 0x10000

    if-ge v9, v14, :cond_7

    .line 494
    invoke-static {v5, v12, v1}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v15, v11, 0x1

    const/4 v13, 0x0

    .line 499
    invoke-static {v8, v11, v13}, Lnet/jpountz/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    move v13, v9

    goto :goto_4

    :cond_7
    :goto_7
    add-int/lit8 v6, v1, 0x1

    move v9, v1

    move/from16 v1, p2

    goto/16 :goto_0

    .line 467
    :cond_8
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v6}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_9
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v6}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v13, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move v12, v14

    goto/16 :goto_1
.end method

.method public compress([BII[BII)I
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 141
    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/UnsafeUtils;->checkRange([BII)V

    .line 142
    invoke-static/range {p4 .. p6}, Lnet/jpountz/util/UnsafeUtils;->checkRange([BII)V

    add-int v5, p5, p6

    const v4, 0x1000b

    if-ge v2, v4, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 146
    invoke-static/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4JavaUnsafeCompressor;->compress64k([BII[BII)I

    move-result v0

    return v0

    :cond_0
    add-int/2addr v2, v1

    add-int/lit8 v4, v2, -0x5

    add-int/lit8 v6, v2, -0xc

    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x1000

    .line 156
    new-array v8, v8, [I

    .line 157
    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([II)V

    move/from16 v10, p5

    move v9, v1

    .line 167
    :goto_0
    sget v11, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v12, 0x1

    shl-int v11, v12, v11

    :goto_1
    add-int/2addr v12, v7

    add-int/lit8 v13, v11, 0x1

    .line 172
    sget v14, Lnet/jpountz/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int/2addr v11, v14

    if-le v12, v6, :cond_1

    move v1, v9

    :goto_2
    move v4, v10

    goto/16 :goto_6

    .line 178
    :cond_1
    invoke-static {v0, v7}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v14

    invoke-static {v14}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v14

    .line 179
    invoke-static {v8, v14}, Lnet/jpountz/util/UnsafeUtils;->readInt([II)I

    move-result v15

    move/from16 p3, v11

    sub-int v11, v7, v15

    .line 181
    invoke-static {v8, v14, v7}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    const/high16 v14, 0x10000

    if-ge v11, v14, :cond_9

    .line 182
    invoke-static {v0, v15, v7}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->readIntEquals([BII)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 185
    invoke-static {v0, v15, v7, v1, v9}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->commonBytesBackward([BIIII)I

    move-result v12

    sub-int/2addr v7, v12

    sub-int/2addr v15, v12

    sub-int v12, v7, v9

    add-int/lit8 v13, v10, 0x1

    add-int v16, v13, v12

    add-int/lit8 v16, v16, 0x8

    ushr-int/lit8 v17, v12, 0x8

    add-int v14, v16, v17

    .line 195
    const-string v1, "maxDestLen is too small"

    if-gt v14, v5, :cond_8

    const/16 v14, 0xf

    if-lt v12, v14, :cond_2

    const/16 v14, 0xf0

    .line 200
    invoke-static {v3, v10, v14}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    add-int/lit8 v14, v12, -0xf

    .line 201
    invoke-static {v14, v3, v13}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v13

    goto :goto_3

    :cond_2
    shl-int/lit8 v14, v12, 0x4

    .line 203
    invoke-static {v3, v10, v14}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    .line 207
    :goto_3
    invoke-static {v0, v9, v3, v13, v12}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    add-int/2addr v13, v12

    .line 212
    :goto_4
    invoke-static {v3, v13, v11}, Lnet/jpountz/util/UnsafeUtils;->writeShortLE([BII)V

    add-int/lit8 v9, v13, 0x2

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v15, v15, 0x4

    .line 217
    invoke-static {v0, v15, v7, v4}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->commonBytes([BIII)I

    move-result v11

    add-int/lit8 v13, v13, 0x8

    ushr-int/lit8 v12, v11, 0x8

    add-int/2addr v13, v12

    if-gt v13, v5, :cond_7

    add-int/2addr v7, v11

    const/16 v12, 0xf

    if-lt v11, v12, :cond_3

    .line 225
    invoke-static {v3, v10}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v13

    or-int/2addr v13, v12

    invoke-static {v3, v10, v13}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    add-int/lit8 v11, v11, -0xf

    .line 226
    invoke-static {v11, v3, v9}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v9

    goto :goto_5

    .line 228
    :cond_3
    invoke-static {v3, v10}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v13

    or-int/2addr v11, v13

    invoke-static {v3, v10, v11}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    :goto_5
    move v10, v9

    if-le v7, v6, :cond_4

    move v1, v7

    goto/16 :goto_2

    :goto_6
    sub-int/2addr v2, v1

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    .line 258
    invoke-static/range {v0 .. v5}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    sub-int v0, v0, p5

    return v0

    :cond_4
    add-int/lit8 v9, v7, -0x2

    .line 238
    invoke-static {v0, v9}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v11

    invoke-static {v11}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v11

    invoke-static {v8, v11, v9}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    .line 241
    invoke-static {v0, v7}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result v9

    invoke-static {v9}, Lnet/jpountz/lz4/LZ4Utils;->hash(I)I

    move-result v9

    .line 242
    invoke-static {v8, v9}, Lnet/jpountz/util/UnsafeUtils;->readInt([II)I

    move-result v15

    .line 243
    invoke-static {v8, v9, v7}, Lnet/jpountz/util/UnsafeUtils;->writeInt([III)V

    sub-int v11, v7, v15

    const/high16 v9, 0x10000

    if-ge v11, v9, :cond_6

    .line 246
    invoke-static {v0, v15, v7}, Lnet/jpountz/lz4/LZ4UnsafeUtils;->readIntEquals([BII)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v13, v10, 0x1

    const/4 v14, 0x0

    .line 251
    invoke-static {v3, v10, v14}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BII)V

    goto :goto_4

    :cond_6
    :goto_7
    add-int/lit8 v1, v7, 0x1

    move v9, v7

    move v7, v1

    move/from16 v1, p2

    goto/16 :goto_0

    .line 219
    :cond_7
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v1}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_8
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v0, v1}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move/from16 v1, p2

    move v7, v12

    move v11, v13

    move/from16 v12, p3

    goto/16 :goto_1
.end method
