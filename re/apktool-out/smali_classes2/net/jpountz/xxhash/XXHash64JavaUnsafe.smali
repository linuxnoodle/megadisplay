.class final Lnet/jpountz/xxhash/XXHash64JavaUnsafe;
.super Lnet/jpountz/xxhash/XXHash64;
.source "XXHash64JavaUnsafe.java"


# static fields
.field public static final INSTANCE:Lnet/jpountz/xxhash/XXHash64;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lnet/jpountz/xxhash/XXHash64JavaUnsafe;

    invoke-direct {v0}, Lnet/jpountz/xxhash/XXHash64JavaUnsafe;-><init>()V

    sput-object v0, Lnet/jpountz/xxhash/XXHash64JavaUnsafe;->INSTANCE:Lnet/jpountz/xxhash/XXHash64;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lnet/jpountz/xxhash/XXHash64;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;IIJ)J
    .locals 31

    move/from16 v3, p3

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v2, p2, v0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/xxhash/XXHash64JavaUnsafe;->hash([BIIJ)J

    move-result-wide v0

    return-wide v0

    .line 109
    :cond_0
    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 110
    invoke-static/range {p1 .. p1}, Lnet/jpountz/util/ByteBufferUtils;->inLittleEndianOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int v1, p2, v3

    const/16 v2, 0x20

    const-wide v8, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const/16 v10, 0x1f

    const-wide v11, -0x61c8864e7a143579L

    if-lt v3, v2, :cond_2

    add-int/lit8 v13, v1, -0x20

    const-wide v14, 0x60ea27eeadc0b5d6L    # 7.182221976795547E158

    add-long v14, p4, v14

    add-long v16, p4, v8

    sub-long v18, p4, v11

    move-wide/from16 v21, v18

    move-wide/from16 v19, v16

    move-wide/from16 v17, v14

    move/from16 v14, p2

    move-wide/from16 v15, p4

    .line 122
    :goto_0
    invoke-static {v0, v14}, Lnet/jpountz/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v23

    mul-long v23, v23, v8

    add-long v4, v17, v23

    .line 123
    invoke-static {v4, v5, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    mul-long v6, v4, v11

    add-int/lit8 v2, v14, 0x8

    .line 127
    invoke-static {v0, v2}, Lnet/jpountz/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v23

    mul-long v23, v23, v8

    add-long v8, v19, v23

    .line 128
    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    move/from16 v19, v1

    mul-long v1, v8, v11

    add-int/lit8 v11, v14, 0x10

    .line 132
    invoke-static {v0, v11}, Lnet/jpountz/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v11

    const-wide v25, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v11, v11, v25

    add-long/2addr v11, v15

    .line 133
    invoke-static {v11, v12, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    move-wide/from16 p4, v8

    const-wide v15, -0x61c8864e7a143579L

    mul-long v8, v11, v15

    add-int/lit8 v15, v14, 0x18

    .line 137
    invoke-static {v0, v15}, Lnet/jpountz/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v15

    mul-long v15, v15, v25

    move-wide/from16 v27, v11

    add-long v11, v21, v15

    .line 138
    invoke-static {v11, v12, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    move-wide/from16 v20, v4

    const-wide v15, -0x61c8864e7a143579L

    mul-long v3, v11, v15

    const/16 v5, 0x20

    add-int/2addr v14, v5

    if-le v14, v13, :cond_1

    const/4 v5, 0x1

    .line 143
    invoke-static {v6, v7, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const/4 v7, 0x7

    invoke-static {v1, v2, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const/16 v1, 0xc

    invoke-static {v8, v9, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const/16 v1, 0x12

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const-wide v1, -0x210ca4fef0869357L    # -2.4749243197201745E149

    mul-long v3, v20, v1

    .line 145
    invoke-static {v3, v4, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v7, -0x61c8864e7a143579L

    mul-long v3, v3, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    move-wide/from16 v15, p4

    mul-long v5, v15, v1

    .line 148
    invoke-static {v5, v6, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    mul-long v5, v27, v1

    .line 151
    invoke-static {v5, v6, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    mul-long v11, v11, v1

    .line 154
    invoke-static {v11, v12, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v7

    xor-long/2addr v1, v3

    mul-long v1, v1, v7

    add-long/2addr v1, v5

    goto :goto_1

    :cond_1
    move-wide/from16 v21, v3

    move-wide/from16 v17, v6

    move-wide v15, v8

    const-wide v8, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v11, -0x61c8864e7a143579L

    move/from16 v3, p3

    move-wide/from16 v29, v1

    move/from16 v1, v19

    move-wide/from16 v19, v29

    const/16 v2, 0x20

    goto/16 :goto_0

    :cond_2
    move/from16 v19, v1

    const-wide v1, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long v3, p4, v1

    move/from16 v14, p2

    move-wide v1, v3

    :goto_1
    move/from16 v3, p3

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_2
    add-int/lit8 v3, v19, -0x8

    if-gt v14, v3, :cond_3

    .line 163
    invoke-static {v0, v14}, Lnet/jpountz/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v3

    const-wide v5, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v3, v3, v5

    .line 164
    invoke-static {v3, v4, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v5, -0x61c8864e7a143579L

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v3, 0x1b

    .line 165
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v5

    const-wide v3, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v1, v3

    add-int/lit8 v14, v14, 0x8

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v19, -0x4

    const-wide v4, 0x165667b19e3779f9L    # 4.573502279054734E-201

    if-gt v14, v3, :cond_4

    .line 170
    invoke-static {v0, v14}, Lnet/jpountz/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide v8, -0x61c8864e7a143579L

    mul-long v6, v6, v8

    xor-long/2addr v1, v6

    const/16 v3, 0x17

    .line 171
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    const-wide v6, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v1, v1, v6

    add-long/2addr v1, v4

    add-int/lit8 v14, v14, 0x4

    :cond_4
    move/from16 v3, v19

    :goto_3
    if-ge v14, v3, :cond_5

    .line 176
    invoke-static {v0, v14}, Lnet/jpountz/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const-wide v8, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long v6, v6, v8

    xor-long/2addr v1, v6

    const/16 v6, 0xb

    .line 177
    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    const-wide v6, -0x61c8864e7a143579L

    mul-long v1, v1, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    const/16 v0, 0x21

    ushr-long v6, v1, v0

    xor-long v0, v1, v6

    const-wide v2, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v0, v0, v2

    const/16 v2, 0x1d

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    mul-long v0, v0, v4

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public hash([BIIJ)J
    .locals 27

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 23
    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/UnsafeUtils;->checkRange([BII)V

    add-int v2, p2, v1

    const-wide v7, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const/16 v9, 0x1f

    const-wide v10, -0x61c8864e7a143579L

    const/16 v12, 0x20

    if-lt v1, v12, :cond_1

    add-int/lit8 v13, v2, -0x20

    const-wide v14, 0x60ea27eeadc0b5d6L    # 7.182221976795547E158

    add-long v14, p4, v14

    add-long v16, p4, v7

    sub-long v18, p4, v10

    move-wide/from16 v21, v18

    move-wide/from16 v19, v16

    move-wide/from16 v17, v14

    move/from16 v14, p2

    move-wide/from16 v15, p4

    .line 35
    :goto_0
    invoke-static {v0, v14}, Lnet/jpountz/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v23

    mul-long v23, v23, v7

    add-long v3, v17, v23

    .line 36
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    mul-long v5, v3, v10

    add-int/lit8 v12, v14, 0x8

    .line 40
    invoke-static {v0, v12}, Lnet/jpountz/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v25

    mul-long v25, v25, v7

    add-long v7, v19, v25

    .line 41
    invoke-static {v7, v8, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    move v12, v2

    mul-long v1, v7, v10

    add-int/lit8 v10, v14, 0x10

    .line 45
    invoke-static {v0, v10}, Lnet/jpountz/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v10

    const-wide v25, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v10, v10, v25

    add-long/2addr v10, v15

    .line 46
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    move-wide/from16 p4, v7

    const-wide v15, -0x61c8864e7a143579L

    mul-long v7, v10, v15

    add-int/lit8 v15, v14, 0x18

    .line 50
    invoke-static {v0, v15}, Lnet/jpountz/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v15

    mul-long v15, v15, v25

    move-wide/from16 v25, v10

    add-long v10, v21, v15

    .line 51
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    move-wide/from16 v21, v3

    const-wide v15, -0x61c8864e7a143579L

    mul-long v3, v10, v15

    const/16 v15, 0x20

    add-int/2addr v14, v15

    if-le v14, v13, :cond_0

    const/4 v13, 0x1

    .line 56
    invoke-static {v5, v6, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const/4 v13, 0x7

    invoke-static {v1, v2, v13}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const/16 v1, 0xc

    invoke-static {v7, v8, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const/16 v1, 0x12

    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    add-long/2addr v5, v1

    const-wide v1, -0x210ca4fef0869357L    # -2.4749243197201745E149

    mul-long v3, v21, v1

    .line 58
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v7, -0x61c8864e7a143579L

    mul-long v3, v3, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    move-wide/from16 v15, p4

    mul-long v5, v15, v1

    .line 61
    invoke-static {v5, v6, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    mul-long v5, v25, v1

    .line 64
    invoke-static {v5, v6, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    mul-long v3, v3, v7

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v3, v5

    mul-long v10, v10, v1

    .line 67
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v7

    xor-long/2addr v1, v3

    mul-long v1, v1, v7

    add-long/2addr v1, v5

    goto :goto_1

    :cond_0
    move-wide/from16 v19, v1

    move-wide/from16 v21, v3

    move-wide/from16 v17, v5

    move-wide v15, v7

    move v2, v12

    const-wide v7, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v10, -0x61c8864e7a143579L

    const/16 v12, 0x20

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_1
    move v12, v2

    const-wide v1, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long v3, p4, v1

    move/from16 v14, p2

    move-wide v1, v3

    :goto_1
    move/from16 v3, p3

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_2
    add-int/lit8 v3, v12, -0x8

    if-gt v14, v3, :cond_2

    .line 76
    invoke-static {v0, v14}, Lnet/jpountz/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v3

    const-wide v5, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v3, v3, v5

    .line 77
    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v5, -0x61c8864e7a143579L

    mul-long v3, v3, v5

    xor-long/2addr v1, v3

    const/16 v3, 0x1b

    .line 78
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    mul-long v1, v1, v5

    const-wide v3, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long/2addr v1, v3

    add-int/lit8 v14, v14, 0x8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v12, -0x4

    const-wide v4, 0x165667b19e3779f9L    # 4.573502279054734E-201

    if-gt v14, v3, :cond_3

    .line 83
    invoke-static {v0, v14}, Lnet/jpountz/util/UnsafeUtils;->readIntLE([BI)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide v8, -0x61c8864e7a143579L

    mul-long v6, v6, v8

    xor-long/2addr v1, v6

    const/16 v3, 0x17

    .line 84
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    const-wide v6, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v1, v1, v6

    add-long/2addr v1, v4

    add-int/lit8 v14, v14, 0x4

    :cond_3
    move v3, v12

    :goto_3
    if-ge v14, v3, :cond_4

    .line 89
    invoke-static {v0, v14}, Lnet/jpountz/util/UnsafeUtils;->readByte([BI)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const-wide v8, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long v6, v6, v8

    xor-long/2addr v1, v6

    const/16 v6, 0xb

    .line 90
    invoke-static {v1, v2, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    const-wide v6, -0x61c8864e7a143579L

    mul-long v1, v1, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x21

    ushr-long v6, v1, v0

    xor-long v0, v1, v6

    const-wide v2, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v0, v0, v2

    const/16 v2, 0x1d

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    mul-long v0, v0, v4

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method
