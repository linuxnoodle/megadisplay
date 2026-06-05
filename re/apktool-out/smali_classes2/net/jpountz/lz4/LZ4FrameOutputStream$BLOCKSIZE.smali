.class public final enum Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;
.super Ljava/lang/Enum;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/LZ4FrameOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLOCKSIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_1MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_256KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_4MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

.field public static final enum SIZE_64KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;


# instance fields
.field private final indicator:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 61
    new-instance v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const-string v1, "SIZE_64KB"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_64KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const/4 v4, 0x5

    const-string v5, "SIZE_256KB"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_256KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v4, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const/4 v5, 0x6

    const-string v7, "SIZE_1MB"

    const/4 v8, 0x2

    invoke-direct {v4, v7, v8, v5}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_1MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    new-instance v5, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    const/4 v7, 0x7

    const-string v9, "SIZE_4MB"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7}, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_4MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    .line 60
    new-array v3, v3, [Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    aput-object v0, v3, v2

    aput-object v1, v3, v6

    aput-object v4, v3, v8

    aput-object v5, v3, v10

    sput-object v3, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->$VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->indicator:I

    return-void
.end method

.method public static valueOf(I)Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .locals 4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 71
    sget-object p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_4MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Block size must be 4-7. Cannot use value of [%d]"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    sget-object p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_1MB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object p0

    .line 73
    :cond_2
    sget-object p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_256KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object p0

    .line 74
    :cond_3
    sget-object p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->SIZE_64KB:Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .locals 1

    .line 60
    const-class v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;
    .locals 1

    .line 60
    sget-object v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->$VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    invoke-virtual {v0}, [Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;

    return-object v0
.end method


# virtual methods
.method public getIndicator()I
    .locals 1

    .line 67
    iget v0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$BLOCKSIZE;->indicator:I

    return v0
.end method
