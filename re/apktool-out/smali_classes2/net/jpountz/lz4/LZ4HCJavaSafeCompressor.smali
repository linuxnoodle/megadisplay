.class final Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;
.super Lnet/jpountz/lz4/LZ4Compressor;
.source "LZ4HCJavaSafeCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lnet/jpountz/lz4/LZ4Compressor;


# instance fields
.field final compressionLevel:I

.field private final maxAttempts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-direct {v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->INSTANCE:Lnet/jpountz/lz4/LZ4Compressor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    .line 25
    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4Compressor;-><init>()V

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 27
    iput v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I

    .line 28
    iput p1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->compressionLevel:I

    return-void
.end method

.method static synthetic access$000(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;)I
    .locals 0

    .line 18
    iget p0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->maxAttempts:I

    return p0
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 21

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v1, p5

    move/from16 v6, p6

    .line 405
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v7, v1, v0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v4

    move/from16 v3, p3

    move-object v4, v5

    move v5, v7

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->compress([BII[BII)I

    move-result v0

    return v0

    .line 408
    :cond_0
    invoke-static/range {p1 .. p1}, Lnet/jpountz/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 409
    invoke-static/range {p4 .. p4}, Lnet/jpountz/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 411
    invoke-static {v10, v0, v3}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 412
    invoke-static {v11, v1, v6}, Lnet/jpountz/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    add-int v12, v0, v3

    add-int v13, v1, v6

    add-int/lit8 v14, v12, -0xc

    add-int/lit8 v15, v12, -0x5

    add-int/lit8 v2, v0, 0x1

    .line 423
    new-instance v9, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;

    move-object/from16 v8, p0

    invoke-direct {v9, v8, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;-><init>(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;I)V

    .line 424
    new-instance v7, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v7}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 425
    new-instance v6, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v6}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 426
    new-instance v5, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v5}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 427
    new-instance v4, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v4}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v2, v14, :cond_13

    .line 431
    invoke-virtual {v9, v10, v2, v15, v6}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindBestMatch(Ljava/nio/ByteBuffer;IILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v16

    if-nez v16, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {v6, v7}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move/from16 v16, v0

    move v0, v3

    .line 442
    :goto_1
    invoke-virtual {v6}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    if-ge v2, v14, :cond_12

    .line 443
    invoke-virtual {v6}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v17, v2, -0x2

    iget v2, v6, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    add-int/lit8 v18, v2, 0x1

    iget v3, v6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v9

    move/from16 v19, v3

    move-object v3, v10

    move-object/from16 p1, v4

    move/from16 v4, v17

    move-object/from16 p2, v5

    move/from16 v5, v18

    move-object v1, v6

    move v6, v15

    move/from16 p3, v12

    move-object v12, v7

    move/from16 v7, v19

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v17, p1

    move-object/from16 v20, v9

    move/from16 p1, v14

    move-object/from16 v14, p2

    goto/16 :goto_6

    .line 450
    :cond_2
    iget v2, v12, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    move-object/from16 v8, p2

    if-ge v2, v3, :cond_3

    .line 451
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v4, v12, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 452
    invoke-static {v12, v1}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 457
    :cond_3
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/4 v7, 0x3

    if-ge v2, v7, :cond_4

    .line 458
    invoke-static {v8, v1}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object/from16 v4, p1

    move-object v6, v1

    move-object v5, v8

    move-object v7, v12

    move-object/from16 v8, p0

    :goto_2
    move/from16 v12, p3

    move/from16 v1, p5

    goto :goto_1

    .line 464
    :cond_4
    :goto_3
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/4 v6, 0x4

    const/16 v5, 0x12

    if-ge v2, v5, :cond_7

    .line 465
    iget v2, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v2, v5, :cond_5

    const/16 v2, 0x12

    .line 469
    :cond_5
    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    add-int/2addr v3, v2

    invoke-virtual {v8}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v4

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_6

    .line 470
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    .line 472
    :cond_6
    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v4, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lez v2, :cond_7

    .line 474
    invoke-virtual {v8, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    .line 478
    :cond_7
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v2, v3

    if-ge v2, v14, :cond_10

    .line 479
    invoke-virtual {v8}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move/from16 v17, v2

    move-object v2, v9

    move/from16 v18, v3

    move-object v3, v10

    move-object/from16 p4, v9

    const/16 v9, 0x12

    move/from16 v5, v18

    const/4 v9, 0x4

    move v6, v15

    const/16 v19, 0x3

    move/from16 v7, v17

    move-object v9, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v17, p1

    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    goto/16 :goto_5

    :cond_8
    move-object/from16 v8, p1

    .line 493
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_b

    .line 494
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 495
    iget v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 496
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 497
    invoke-virtual {v9, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    .line 498
    iget v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    .line 499
    invoke-static {v8, v9}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 503
    :cond_9
    iget v4, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move-object v0, v8

    move/from16 v8, v16

    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v16

    .line 504
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    .line 506
    invoke-static {v0, v1}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 507
    invoke-static {v14, v12}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object/from16 v8, p0

    move-object v4, v0

    move-object v6, v1

    move v0, v2

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v9, v20

    move/from16 v14, p1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move-object v9, v8

    .line 512
    invoke-static {v9, v14}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object v8, v14

    const/4 v7, 0x3

    move/from16 v14, p1

    move-object/from16 p1, v9

    move-object/from16 v9, v20

    goto/16 :goto_3

    :cond_b
    move-object/from16 v20, p4

    move/from16 p1, v14

    move-object v14, v9

    move-object v9, v8

    .line 517
    iget v2, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 518
    iget v2, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/16 v3, 0xf

    if-ge v2, v3, :cond_e

    .line 519
    iget v2, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_c

    .line 520
    iput v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 522
    :cond_c
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    invoke-virtual {v14}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_d

    .line 523
    invoke-virtual {v14}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 525
    :cond_d
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 526
    invoke-virtual {v14, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    goto :goto_4

    .line 528
    :cond_e
    iget v2, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 532
    :cond_f
    :goto_4
    iget v4, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move-object v0, v9

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v16

    .line 533
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    .line 535
    invoke-static {v14, v1}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 536
    invoke-static {v0, v14}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object v8, v14

    move-object/from16 v9, v20

    const/4 v7, 0x3

    move/from16 v14, p1

    move-object/from16 p1, v0

    move v0, v2

    goto/16 :goto_3

    :cond_10
    move-object/from16 v17, p1

    move-object/from16 v20, v9

    move/from16 p1, v14

    move-object v14, v8

    .line 481
    :goto_5
    iget v2, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 482
    iget v2, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 485
    :cond_11
    iget v4, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v8

    .line 486
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    .line 488
    iget v4, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v14, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 489
    invoke-virtual {v14}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    goto :goto_7

    :cond_12
    move-object/from16 v17, v4

    move-object v1, v6

    move-object/from16 v20, v9

    move/from16 p3, v12

    move/from16 p1, v14

    move-object v14, v5

    move-object v12, v7

    .line 445
    :goto_6
    iget v4, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v1, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v10

    move v3, v0

    move-object v7, v11

    move/from16 v8, v16

    move v9, v13

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 446
    invoke-virtual {v1}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    :goto_7
    move-object/from16 v8, p0

    move-object v6, v1

    move v2, v3

    move-object v7, v12

    move-object v5, v14

    move-object/from16 v4, v17

    move-object/from16 v9, v20

    move/from16 v14, p1

    move/from16 v12, p3

    move/from16 v1, p5

    goto/16 :goto_0

    :cond_13
    move/from16 p3, v12

    sub-int v4, p3, v3

    move-object v2, v10

    move-object v5, v11

    move v6, v0

    move v7, v13

    .line 545
    invoke-static/range {v2 .. v7}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    sub-int v0, v0, p5

    return v0
.end method

.method public compress([BII[BII)I
    .locals 21

    move/from16 v0, p2

    .line 263
    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/SafeUtils;->checkRange([BII)V

    .line 264
    invoke-static/range {p4 .. p6}, Lnet/jpountz/util/SafeUtils;->checkRange([BII)V

    add-int v1, v0, p3

    add-int v10, p5, p6

    add-int/lit8 v11, v1, -0xc

    add-int/lit8 v12, v1, -0x5

    add-int/lit8 v2, v0, 0x1

    .line 275
    new-instance v13, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;-><init>(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;I)V

    .line 276
    new-instance v15, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v15}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 277
    new-instance v9, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 278
    new-instance v8, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v8}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    .line 279
    new-instance v7, Lnet/jpountz/lz4/LZ4Utils$Match;

    invoke-direct {v7}, Lnet/jpountz/lz4/LZ4Utils$Match;-><init>()V

    move/from16 v6, p5

    move v3, v0

    :goto_0
    if-ge v2, v11, :cond_12

    move-object/from16 v0, p1

    .line 283
    invoke-virtual {v13, v0, v2, v12, v9}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindBestMatch([BIILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {v9, v15}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move/from16 v16, v3

    move/from16 v17, v6

    .line 294
    :goto_1
    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    if-ge v2, v11, :cond_11

    .line 295
    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    iget v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    add-int/lit8 v5, v2, 0x1

    iget v6, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v18, v6

    move v6, v12

    move-object/from16 p2, v7

    move/from16 v7, v18

    move-object/from16 p3, v8

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindWiderMatch([BIIIILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p3

    move/from16 p3, v11

    move-object/from16 v11, p2

    goto/16 :goto_6

    .line 302
    :cond_1
    iget v2, v15, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    move-object/from16 v8, p3

    if-ge v2, v3, :cond_2

    .line 303
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v4, v15, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 304
    invoke-static {v15, v9}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 309
    :cond_2
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/4 v7, 0x3

    if-ge v2, v7, :cond_3

    .line 310
    invoke-static {v8, v9}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object/from16 v7, p2

    goto :goto_1

    .line 316
    :cond_3
    :goto_2
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/4 v6, 0x4

    const/16 v5, 0x12

    if-ge v2, v5, :cond_6

    .line 317
    iget v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v2, v5, :cond_4

    const/16 v2, 0x12

    .line 321
    :cond_4
    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    add-int/2addr v3, v2

    invoke-virtual {v8}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v4

    sub-int/2addr v4, v6

    if-le v3, v4, :cond_5

    .line 322
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    .line 324
    :cond_5
    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v4, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    .line 326
    invoke-virtual {v8, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    .line 330
    :cond_6
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    add-int/2addr v2, v3

    if-ge v2, v11, :cond_f

    .line 331
    invoke-virtual {v8}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    add-int/lit8 v4, v2, -0x3

    iget v3, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move/from16 v18, v2

    move-object v2, v13

    move/from16 v19, v3

    move-object/from16 v3, p1

    const/16 v0, 0x12

    move/from16 v5, v19

    const/4 v0, 0x4

    move v6, v12

    const/16 v20, 0x3

    move/from16 v7, v18

    move-object v0, v8

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insertAndFindWiderMatch([BIIIILnet/jpountz/lz4/LZ4Utils$Match;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_5

    :cond_7
    move-object/from16 v8, p2

    .line 345
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_a

    .line 346
    iget v2, v8, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-lt v2, v3, :cond_9

    .line 347
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 348
    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 349
    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    .line 350
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    .line 351
    invoke-static {v8, v0}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 355
    :cond_8
    iget v4, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 p3, v11

    move-object v11, v8

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4SafeUtils;->encodeSequence([BIIII[BII)I

    move-result v17

    .line 356
    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v16

    move-object/from16 v9, p2

    .line 358
    invoke-static {v11, v9}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 359
    invoke-static {v0, v15}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    move-object v8, v0

    move-object v7, v11

    move-object/from16 v0, p1

    move/from16 v11, p3

    goto/16 :goto_1

    :cond_9
    move/from16 p3, v11

    move-object v11, v8

    .line 364
    invoke-static {v11, v0}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    goto :goto_4

    :cond_a
    move/from16 p3, v11

    move-object v11, v8

    .line 369
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 370
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    const/16 v3, 0xf

    if-ge v2, v3, :cond_d

    .line 371
    iget v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_b

    .line 372
    iput v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 374
    :cond_b
    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_c

    .line 375
    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 377
    :cond_c
    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v2

    iget v3, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    .line 378
    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/LZ4Utils$Match;->fix(I)V

    goto :goto_3

    .line 380
    :cond_d
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 384
    :cond_e
    :goto_3
    iget v4, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4SafeUtils;->encodeSequence([BIIII[BII)I

    move-result v17

    .line 385
    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v16

    move-object/from16 v9, p2

    .line 387
    invoke-static {v0, v9}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    .line 388
    invoke-static {v11, v0}, Lnet/jpountz/lz4/LZ4Utils;->copyTo(Lnet/jpountz/lz4/LZ4Utils$Match;Lnet/jpountz/lz4/LZ4Utils$Match;)V

    :goto_4
    move-object v8, v0

    move-object/from16 p2, v11

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move/from16 v11, p3

    goto/16 :goto_2

    :cond_f
    move-object v0, v8

    :goto_5
    move/from16 p3, v11

    move-object/from16 v11, p2

    .line 333
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    invoke-virtual {v9}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 334
    iget v2, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v3, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    sub-int/2addr v2, v3

    iput v2, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 337
    :cond_10
    iget v4, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 p2, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4SafeUtils;->encodeSequence([BIIII[BII)I

    move-result v8

    .line 338
    invoke-virtual/range {p2 .. p2}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    .line 340
    iget v4, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v0, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4SafeUtils;->encodeSequence([BIIII[BII)I

    move-result v6

    .line 341
    invoke-virtual {v0}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    move-object/from16 v9, p2

    move-object v8, v0

    move v2, v3

    move-object v7, v11

    goto :goto_7

    :cond_11
    move-object v0, v8

    move/from16 p3, v11

    move-object v11, v7

    .line 297
    :goto_6
    iget v4, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    iget v5, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    iget v6, v9, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v7, p4

    move/from16 v8, v17

    move-object/from16 v16, v9

    move v9, v10

    invoke-static/range {v2 .. v9}, Lnet/jpountz/lz4/LZ4SafeUtils;->encodeSequence([BIIII[BII)I

    move-result v6

    .line 298
    invoke-virtual/range {v16 .. v16}, Lnet/jpountz/lz4/LZ4Utils$Match;->end()I

    move-result v3

    move-object v8, v0

    move v2, v3

    move-object v7, v11

    move-object/from16 v9, v16

    :goto_7
    move/from16 v11, p3

    goto/16 :goto_0

    :cond_12
    sub-int v4, v1, v3

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move v7, v10

    .line 397
    invoke-static/range {v2 .. v7}, Lnet/jpountz/lz4/LZ4SafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    sub-int v0, v0, p5

    return v0
.end method
