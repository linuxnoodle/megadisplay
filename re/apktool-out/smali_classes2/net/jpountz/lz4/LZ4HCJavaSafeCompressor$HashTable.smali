.class Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;
.super Ljava/lang/Object;
.source "LZ4HCJavaSafeCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HashTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final MASK:I = 0xffff


# instance fields
.field private final base:I

.field private final chainTable:[S

.field private final hashTable:[I

.field nextToUpdate:I

.field final synthetic this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    return-void
.end method

.method constructor <init>(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;I)V
    .locals 0

    .line 38
    iput-object p1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    .line 40
    iput p2, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    const p1, 0x8000

    .line 41
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    const/4 p2, -0x1

    .line 42
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    const/high16 p1, 0x10000

    .line 43
    new-array p1, p1, [S

    iput-object p1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    return-void
.end method

.method private addHash(II)V
    .locals 4

    .line 76
    invoke-static {p1}, Lnet/jpountz/lz4/LZ4Utils;->hashHC(I)I

    move-result p1

    .line 77
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    aget v1, v0, p1

    sub-int v1, p2, v1

    const/high16 v2, 0x10000

    const v3, 0xffff

    if-lt v1, v2, :cond_0

    const v1, 0xffff

    .line 82
    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int/2addr v3, p2

    int-to-short v1, v1

    aput-short v1, v2, v3

    .line 83
    aput p2, v0, p1

    return-void
.end method

.method private addHash(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 71
    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 72
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(II)V

    return-void
.end method

.method private addHash([BI)V
    .locals 0

    .line 66
    invoke-static {p1, p2}, Lnet/jpountz/util/SafeUtils;->readInt([BI)I

    move-result p1

    .line 67
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(II)V

    return-void
.end method

.method private hashPointer(I)I
    .locals 1

    .line 57
    invoke-static {p1}, Lnet/jpountz/lz4/LZ4Utils;->hashHC(I)I

    move-result p1

    .line 58
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    aget p1, v0, p1

    return p1
.end method

.method private hashPointer(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 52
    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 53
    invoke-direct {p0, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(I)I

    move-result p1

    return p1
.end method

.method private hashPointer([BI)I
    .locals 0

    .line 47
    invoke-static {p1, p2}, Lnet/jpountz/util/SafeUtils;->readInt([BI)I

    move-result p1

    .line 48
    invoke-direct {p0, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(I)I

    move-result p1

    return p1
.end method

.method private next(I)I
    .locals 3

    .line 62
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    const v1, 0xffff

    and-int v2, p1, v1

    aget-short v0, v0, v2

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method insert(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 93
    :goto_0
    iget v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    if-ge v0, p1, :cond_0

    .line 94
    invoke-direct {p0, p2, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash(Ljava/nio/ByteBuffer;I)V

    .line 93
    iget v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method insert(I[B)V
    .locals 1

    .line 87
    :goto_0
    iget v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    if-ge v0, p1, :cond_0

    .line 88
    invoke-direct {p0, p2, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->addHash([BI)V

    .line 87
    iget v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method insertAndFindBestMatch(Ljava/nio/ByteBuffer;IILnet/jpountz/lz4/LZ4Utils$Match;)Z
    .locals 8

    .line 180
    iput p2, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    const/4 v0, 0x0

    .line 181
    iput v0, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 185
    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(ILjava/nio/ByteBuffer;)V

    .line 187
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(Ljava/nio/ByteBuffer;I)I

    move-result v1

    add-int/lit8 v2, p2, -0x4

    if-lt v1, v2, :cond_1

    if-gt v1, p2, :cond_1

    .line 189
    iget v2, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    if-lt v1, v2, :cond_1

    .line 190
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 192
    invoke-static {p1, v3, v4, p3}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iput v3, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 193
    iput v1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 195
    :goto_0
    invoke-direct {p0, v1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 198
    :goto_2
    iget-object v5, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-static {v5}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->access$000(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v5

    const v6, 0xffff

    if-ge v4, v5, :cond_4

    .line 199
    iget v5, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    sub-int v7, p2, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v1, v5, :cond_4

    if-le v1, p2, :cond_2

    goto :goto_3

    .line 202
    :cond_2
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, p2, 0x4

    .line 203
    invoke-static {p1, v5, v6, p3}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 204
    iget v6, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_3

    .line 205
    iput v1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    .line 206
    iput v5, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 209
    :cond_3
    invoke-direct {p0, v1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p3, 0x1

    if-eqz v3, :cond_6

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x3

    :goto_4
    sub-int v1, v3, v2

    if-ge p2, v1, :cond_5

    .line 216
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 220
    :cond_5
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    .line 221
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    invoke-static {p1, p2}, Lnet/jpountz/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-static {v4}, Lnet/jpountz/lz4/LZ4Utils;->hashHC(I)I

    move-result v4

    aput p2, v1, v4

    add-int/2addr p2, p3

    if-lt p2, v3, :cond_5

    .line 224
    iput v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    .line 227
    :cond_6
    iget p1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method insertAndFindBestMatch([BIILnet/jpountz/lz4/LZ4Utils$Match;)Z
    .locals 8

    .line 101
    iput p2, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    const/4 v0, 0x0

    .line 102
    iput v0, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 106
    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(I[B)V

    .line 108
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer([BI)I

    move-result v1

    add-int/lit8 v2, p2, -0x4

    if-lt v1, v2, :cond_1

    if-gt v1, p2, :cond_1

    .line 110
    iget v2, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    if-lt v1, v2, :cond_1

    .line 111
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 113
    invoke-static {p1, v3, v4, p3}, Lnet/jpountz/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    iput v3, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 114
    iput v1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    :goto_0
    invoke-direct {p0, v1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 119
    :goto_2
    iget-object v5, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-static {v5}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->access$000(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v5

    const v6, 0xffff

    if-ge v4, v5, :cond_4

    .line 120
    iget v5, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    sub-int v7, p2, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lt v1, v5, :cond_4

    if-le v1, p2, :cond_2

    goto :goto_3

    .line 123
    :cond_2
    invoke-static {p1, v1, p2}, Lnet/jpountz/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, p2, 0x4

    .line 124
    invoke-static {p1, v5, v6, p3}, Lnet/jpountz/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    .line 125
    iget v6, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v5, v6, :cond_3

    .line 126
    iput v1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    .line 127
    iput v5, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 130
    :cond_3
    invoke-direct {p0, v1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/4 p3, 0x1

    if-eqz v3, :cond_6

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x3

    :goto_4
    sub-int v1, v3, v2

    if-ge p2, v1, :cond_5

    .line 137
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 141
    :cond_5
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->chainTable:[S

    and-int v4, p2, v6

    int-to-short v5, v2

    aput-short v5, v1, v4

    .line 142
    iget-object v1, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashTable:[I

    invoke-static {p1, p2}, Lnet/jpountz/util/SafeUtils;->readInt([BI)I

    move-result v4

    invoke-static {v4}, Lnet/jpountz/lz4/LZ4Utils;->hashHC(I)I

    move-result v4

    aput p2, v1, v4

    add-int/2addr p2, p3

    if-lt p2, v3, :cond_5

    .line 145
    iput v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->nextToUpdate:I

    .line 148
    :cond_6
    iget p1, p4, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method insertAndFindWiderMatch(Ljava/nio/ByteBuffer;IIIILnet/jpountz/lz4/LZ4Utils$Match;)Z
    .locals 6

    .line 231
    iput p5, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 233
    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(ILjava/nio/ByteBuffer;)V

    .line 236
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer(Ljava/nio/ByteBuffer;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 237
    :goto_0
    iget-object v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-static {v3}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->access$000(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 238
    iget v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const v4, 0xffff

    sub-int v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v0, v3, :cond_2

    if-le v0, p2, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-static {p1, v0, p2}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 242
    invoke-static {p1, v3, v4, p4}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 243
    iget v4, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    invoke-static {p1, v0, p2, v4, p3}, Lnet/jpountz/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v4

    add-int/2addr v3, v4

    .line 245
    iget v5, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v3, v5, :cond_1

    .line 246
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    sub-int v3, v0, v4

    .line 247
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    sub-int v3, p2, v4

    .line 248
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    .line 251
    :cond_1
    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_2
    :goto_1
    iget p1, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le p1, p5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method insertAndFindWiderMatch([BIIIILnet/jpountz/lz4/LZ4Utils$Match;)Z
    .locals 6

    .line 152
    iput p5, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    .line 154
    invoke-virtual {p0, p2, p1}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->insert(I[B)V

    .line 157
    invoke-direct {p0, p1, p2}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->hashPointer([BI)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    :goto_0
    iget-object v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->this$0:Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;

    invoke-static {v3}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;->access$000(Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 159
    iget v3, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    const v4, 0xffff

    sub-int v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v0, v3, :cond_2

    if-le v0, p2, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-static {p1, v0, p2}, Lnet/jpountz/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 163
    invoke-static {p1, v3, v4, p4}, Lnet/jpountz/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 164
    iget v4, p0, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->base:I

    invoke-static {p1, v0, p2, v4, p3}, Lnet/jpountz/lz4/LZ4SafeUtils;->commonBytesBackward([BIIII)I

    move-result v4

    add-int/2addr v3, v4

    .line 166
    iget v5, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le v3, v5, :cond_1

    .line 167
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    sub-int v3, v0, v4

    .line 168
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->ref:I

    sub-int v3, p2, v4

    .line 169
    iput v3, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->start:I

    .line 172
    :cond_1
    invoke-direct {p0, v0}, Lnet/jpountz/lz4/LZ4HCJavaSafeCompressor$HashTable;->next(I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    :goto_1
    iget p1, p6, Lnet/jpountz/lz4/LZ4Utils$Match;->len:I

    if-le p1, p5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
