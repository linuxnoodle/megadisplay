.class public final enum Lnet/jpountz/util/UnsafeUtils;
.super Ljava/lang/Enum;
.source "UnsafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/util/UnsafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/util/UnsafeUtils;

.field private static final BYTE_ARRAY_OFFSET:J

.field private static final BYTE_ARRAY_SCALE:I

.field private static final INT_ARRAY_OFFSET:J

.field private static final INT_ARRAY_SCALE:I

.field private static final SHORT_ARRAY_OFFSET:J

.field private static final SHORT_ARRAY_SCALE:I

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    const-class v0, [S

    const-class v1, [I

    const-class v2, [B

    const-string v3, "Cannot access Unsafe"

    const/4 v4, 0x0

    new-array v4, v4, [Lnet/jpountz/util/UnsafeUtils;

    sput-object v4, Lnet/jpountz/util/UnsafeUtils;->$VALUES:[Lnet/jpountz/util/UnsafeUtils;

    .line 37
    :try_start_0
    const-class v4, Lsun/misc/Unsafe;

    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/misc/Unsafe;

    sput-object v4, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 40
    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    .line 41
    invoke-virtual {v4, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    .line 42
    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v5, v2

    sput-wide v5, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    .line 43
    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    .line 44
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    .line 45
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 51
    :catch_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catch_1
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catch_2
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkLength(I)V
    .locals 0

    .line 64
    invoke-static {p0}, Lnet/jpountz/util/SafeUtils;->checkLength(I)V

    return-void
.end method

.method public static checkRange([BI)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lnet/jpountz/util/SafeUtils;->checkRange([BI)V

    return-void
.end method

.method public static checkRange([BII)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lnet/jpountz/util/SafeUtils;->checkRange([BII)V

    return-void
.end method

.method public static readByte([BI)B
    .locals 5

    .line 68
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static readInt([BI)I
    .locals 5

    .line 96
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static readInt([II)I
    .locals 5

    .line 133
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static readIntLE([BI)I
    .locals 1

    .line 100
    invoke-static {p0, p1}, Lnet/jpountz/util/UnsafeUtils;->readInt([BI)I

    move-result p0

    .line 101
    sget-object p1, Lnet/jpountz/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static readLong([BI)J
    .locals 5

    .line 80
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static readLongLE([BI)J
    .locals 2

    .line 84
    invoke-static {p0, p1}, Lnet/jpountz/util/UnsafeUtils;->readLong([BI)J

    move-result-wide p0

    .line 85
    sget-object v0, Lnet/jpountz/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static readShort([SI)I
    .locals 5

    .line 141
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static readShort([BI)S
    .locals 5

    .line 112
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public static readShortLE([BI)I
    .locals 1

    .line 116
    invoke-static {p0, p1}, Lnet/jpountz/util/UnsafeUtils;->readShort([BI)S

    move-result p0

    .line 117
    sget-object p1, Lnet/jpountz/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    .line 118
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :cond_0
    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/util/UnsafeUtils;
    .locals 1

    .line 24
    const-class v0, Lnet/jpountz/util/UnsafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/util/UnsafeUtils;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/util/UnsafeUtils;
    .locals 1

    .line 24
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->$VALUES:[Lnet/jpountz/util/UnsafeUtils;

    invoke-virtual {v0}, [Lnet/jpountz/util/UnsafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/util/UnsafeUtils;

    return-object v0
.end method

.method public static writeByte([BIB)V
    .locals 5

    .line 72
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static writeByte([BII)V
    .locals 0

    int-to-byte p2, p2

    .line 76
    invoke-static {p0, p1, p2}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BIB)V

    return-void
.end method

.method public static writeInt([BII)V
    .locals 5

    .line 108
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static writeInt([III)V
    .locals 5

    .line 137
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static writeLong([BIJ)V
    .locals 6

    .line 92
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static writeShort([BIS)V
    .locals 5

    .line 124
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static writeShort([SII)V
    .locals 5

    .line 145
    sget-object v0, Lnet/jpountz/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    sget v3, Lnet/jpountz/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-short p1, p2

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static writeShortLE([BII)V
    .locals 1

    int-to-byte v0, p2

    .line 128
    invoke-static {p0, p1, v0}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BIB)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 129
    invoke-static {p0, p1, p2}, Lnet/jpountz/util/UnsafeUtils;->writeByte([BIB)V

    return-void
.end method
