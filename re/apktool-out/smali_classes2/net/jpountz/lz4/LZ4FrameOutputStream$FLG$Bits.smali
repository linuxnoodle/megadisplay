.class public final enum Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;
.super Ljava/lang/Enum;
.source "LZ4FrameOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum BLOCK_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum CONTENT_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum CONTENT_SIZE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum RESERVED_0:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

.field public static final enum RESERVED_1:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;


# instance fields
.field private final position:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 320
    new-instance v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v1, "RESERVED_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_0:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 321
    new-instance v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v3, "RESERVED_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->RESERVED_1:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 322
    new-instance v3, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v5, "CONTENT_CHECKSUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 323
    new-instance v5, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v7, "CONTENT_SIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->CONTENT_SIZE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 324
    new-instance v7, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v9, "BLOCK_CHECKSUM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_CHECKSUM:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    .line 325
    new-instance v9, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const-string v11, "BLOCK_INDEPENDENCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    const/4 v11, 0x6

    .line 319
    new-array v11, v11, [Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->$VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I

    return-void
.end method

.method static synthetic access$100(Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;)I
    .locals 0

    .line 319
    iget p0, p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->position:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;
    .locals 1

    .line 319
    const-class v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;
    .locals 1

    .line 319
    sget-object v0, Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->$VALUES:[Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    invoke-virtual {v0}, [Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/lz4/LZ4FrameOutputStream$FLG$Bits;

    return-object v0
.end method
