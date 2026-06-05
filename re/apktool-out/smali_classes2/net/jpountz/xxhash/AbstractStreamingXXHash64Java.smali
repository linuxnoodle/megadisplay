.class abstract Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;
.super Lnet/jpountz/xxhash/StreamingXXHash64;
.source "AbstractStreamingXXHash64Java.java"


# instance fields
.field memSize:I

.field final memory:[B

.field totalLen:J

.field v1:J

.field v2:J

.field v3:J

.field v4:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lnet/jpountz/xxhash/StreamingXXHash64;-><init>(J)V

    const/16 p1, 0x20

    .line 29
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->memory:[B

    .line 30
    invoke-virtual {p0}, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .line 35
    iget-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->seed:J

    const-wide v2, 0x60ea27eeadc0b5d6L    # 7.182221976795547E158

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->v1:J

    .line 36
    iget-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->seed:J

    const-wide v2, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->v2:J

    .line 37
    iget-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->seed:J

    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->v3:J

    .line 38
    iget-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->seed:J

    const-wide v2, -0x61c8864e7a143579L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->v4:J

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->totalLen:J

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lnet/jpountz/xxhash/AbstractStreamingXXHash64Java;->memSize:I

    return-void
.end method
