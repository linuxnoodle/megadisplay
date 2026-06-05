.class public Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;
.super Ljava/lang/Object;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FLG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION:I = 0x1


# instance fields
.field private final bitSet:Ljava/util/BitSet;

.field private final version:I


# direct methods
.method private constructor <init>(IB)V
    .locals 2

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 345
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p2

    iput-object p2, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    .line 346
    iput p1, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    .line 347
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->validate()V

    return-void
.end method

.method public varargs constructor <init>(I[Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)V
    .locals 3

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    .line 335
    iput p1, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    if-eqz p2, :cond_0

    .line 337
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 338
    iget-object v2, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->validate()V

    return-void
.end method

.method public static fromByte(B)Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;
    .locals 3

    and-int/lit16 v0, p0, 0xc0

    int-to-byte v0, v0

    .line 352
    new-instance v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;

    ushr-int/lit8 v2, v0, 0x6

    xor-int/2addr p0, v0

    int-to-byte p0, p0

    invoke-direct {v1, v2, p0}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;-><init>(IB)V

    return-object v1
.end method

.method private validate()V
    .locals 5

    .line 360
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_0:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_1:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    sget-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v3, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Version %d is unsupported"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dependent block stream is unsupported (BLOCK_INDEPENDENCE must be set)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved1 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reserved0 field must be 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getVersion()I
    .locals 1

    .line 379
    iget v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    return v0
.end method

.method public isEnabled(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    invoke-static {p1}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public toByte()B
    .locals 2

    .line 356
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iget v1, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;->version:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
