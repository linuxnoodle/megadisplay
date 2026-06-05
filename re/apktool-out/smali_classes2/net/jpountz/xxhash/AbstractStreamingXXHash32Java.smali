.class abstract Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;
.super Lnet/jpountz/xxhash/StreamingXXHash32;
.source "AbstractStreamingXXHash32Java.java"


# instance fields
.field memSize:I

.field final memory:[B

.field totalLen:J

.field v1:I

.field v2:I

.field v3:I

.field v4:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lnet/jpountz/xxhash/StreamingXXHash32;-><init>(I)V

    const/16 p1, 0x10

    .line 28
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->memory:[B

    .line 29
    invoke-virtual {p0}, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 34
    iget v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->seed:I

    const v1, 0x24234428

    add-int/2addr v0, v1

    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->v1:I

    .line 35
    iget v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->seed:I

    const v1, -0x7a143589

    add-int/2addr v0, v1

    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->v2:I

    .line 36
    iget v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->seed:I

    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->v3:I

    .line 37
    iget v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->seed:I

    const v1, -0x61c8864f

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->v4:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->totalLen:J

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash32Java;->memSize:I

    return-void
.end method
