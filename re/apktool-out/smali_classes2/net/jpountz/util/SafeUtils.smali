.class public final enum Lnet/jpountz/util/SafeUtils;
.super Ljava/lang/Enum;
.source "SafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/util/SafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/util/SafeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Lnet/jpountz/util/SafeUtils;

    sput-object v0, Lnet/jpountz/util/SafeUtils;->$VALUES:[Lnet/jpountz/util/SafeUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkLength(I)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lengths must be >= 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkRange([BI)V
    .locals 0

    if-ltz p1, :cond_0

    .line 23
    array-length p0, p0

    if-ge p1, p0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public static checkRange([BII)V
    .locals 0

    .line 29
    invoke-static {p2}, Lnet/jpountz/util/SafeUtils;->checkLength(I)V

    if-lez p2, :cond_0

    .line 31
    invoke-static {p0, p1}, Lnet/jpountz/util/SafeUtils;->checkRange([BI)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 32
    invoke-static {p0, p1}, Lnet/jpountz/util/SafeUtils;->checkRange([BI)V

    :cond_0
    return-void
.end method

.method public static readByte([BI)B
    .locals 0

    .line 43
    aget-byte p0, p0, p1

    return p0
.end method

.method public static readInt([BI)I
    .locals 2

    .line 55
    sget-object v0, Lnet/jpountz/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {p0, p1}, Lnet/jpountz/util/SafeUtils;->readIntBE([BI)I

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lnet/jpountz/util/SafeUtils;->readIntLE([BI)I

    move-result p0

    return p0
.end method

.method public static readInt([II)I
    .locals 0

    .line 77
    aget p0, p0, p1

    return p0
.end method

.method public static readIntBE([BI)I
    .locals 2

    .line 47
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readIntLE([BI)I
    .locals 2

    .line 51
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

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static readLongLE([BI)J
    .locals 7

    .line 63
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readShort([SI)I
    .locals 0

    .line 93
    aget-short p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static readShortLE([BI)I
    .locals 1

    .line 89
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/util/SafeUtils;
    .locals 1

    .line 19
    const-class v0, Lnet/jpountz/util/SafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/util/SafeUtils;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/util/SafeUtils;
    .locals 1

    .line 19
    sget-object v0, Lnet/jpountz/util/SafeUtils;->$VALUES:[Lnet/jpountz/util/SafeUtils;

    invoke-virtual {v0}, [Lnet/jpountz/util/SafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/util/SafeUtils;

    return-object v0
.end method

.method public static writeByte([BII)V
    .locals 0

    int-to-byte p2, p2

    .line 81
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeInt([III)V
    .locals 0

    .line 73
    aput p2, p0, p1

    return-void
.end method

.method public static writeShort([SII)V
    .locals 0

    int-to-short p2, p2

    .line 85
    aput-short p2, p0, p1

    return-void
.end method

.method public static writeShortLE([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    .line 68
    aput-byte v1, p0, p1

    ushr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    .line 69
    aput-byte p1, p0, v0

    return-void
.end method
