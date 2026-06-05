.class final Lnet/jpountz/xxhash/StreamingXXHash32JNI;
.super Lnet/jpountz/xxhash/StreamingXXHash32;
.source "StreamingXXHash32JNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/xxhash/StreamingXXHash32JNI$Factory;
    }
.end annotation


# instance fields
.field private state:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lnet/jpountz/xxhash/StreamingXXHash32;-><init>(I)V

    .line 42
    invoke-static {p1}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    return-void
.end method

.method private checkState()V
    .locals 5

    .line 46
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Already finalized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 73
    invoke-super {p0}, Lnet/jpountz/xxhash/StreamingXXHash32;->close()V

    .line 74
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 75
    iput-wide v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 84
    invoke-static {v0, v1}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 85
    iput-wide v2, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue()I
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 61
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_digest(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 54
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_free(J)V

    .line 55
    iget v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->seed:I

    invoke-static {v0}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update([BII)V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->checkState()V

    .line 67
    iget-wide v0, p0, Lnet/jpountz/xxhash/StreamingXXHash32JNI;->state:J

    invoke-static {v0, v1, p1, p2, p3}, Lnet/jpountz/xxhash/XXHashJNI;->XXH32_update(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
