.class public Lde/mrapp/android/util/gesture/DragHelper;
.super Ljava/lang/Object;
.source "DragHelper.java"


# instance fields
.field private distance:F

.field private dragStartPosition:F

.field private dragStartTime:J

.field private maxDragDistance:F

.field private minDragDistance:F

.field private reachedThreshold:Z

.field private reset:Z

.field private threshold:I

.field private thresholdReachedPosition:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The threshold must be at least 0"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 96
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->distance:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 98
    iput v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    .line 99
    iput v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartPosition:F

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartTime:J

    .line 101
    iput-boolean v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold:Z

    .line 102
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->minDragDistance:F

    .line 103
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->maxDragDistance:F

    .line 104
    invoke-virtual {p0}, Lde/mrapp/android/util/gesture/DragHelper;->reset()V

    return-void
.end method

.method private reachedThreshold(F)Z
    .locals 1

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getDragDistance()F
    .locals 1

    .line 266
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->distance:F

    return v0
.end method

.method public final getDragSpeed()F
    .locals 4

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/util/gesture/DragHelper;->hasThresholdBeenReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartTime:J

    sub-long/2addr v0, v2

    .line 288
    invoke-virtual {p0}, Lde/mrapp/android/util/gesture/DragHelper;->getDragDistance()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    return v2

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getDragStartPosition()F
    .locals 1

    .line 276
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartPosition:F

    return v0
.end method

.method public final getMaxDragDistance()F
    .locals 1

    .line 205
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->maxDragDistance:F

    return v0
.end method

.method public final getMinDragDistance()F
    .locals 1

    .line 231
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->minDragDistance:F

    return v0
.end method

.method public final getThreshold()I
    .locals 1

    .line 114
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    return v0
.end method

.method public final hasThresholdBeenReached()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold:Z

    return v0
.end method

.method public final isReset()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reset:Z

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reset:Z

    return-void
.end method

.method public final reset(I)V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lde/mrapp/android/util/gesture/DragHelper;->reset()V

    .line 142
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    return-void
.end method

.method public final setMaxDragDistance(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget v1, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    int-to-float v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The maximum drag distance must be greater than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureGreater(FFLjava/lang/String;)V

    .line 221
    :cond_0
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->maxDragDistance:F

    return-void
.end method

.method public final setMinDragDistance(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget v1, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    neg-int v1, v1

    int-to-float v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The minimum drag distance must be smaller than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lde/mrapp/android/util/gesture/DragHelper;->threshold:I

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureSmaller(FFLjava/lang/String;)V

    .line 247
    :cond_0
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->minDragDistance:F

    return-void
.end method

.method public final update(F)V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reset:Z

    .line 166
    iput v1, p0, Lde/mrapp/android/util/gesture/DragHelper;->distance:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 167
    iput v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    const-wide/16 v2, -0x1

    .line 168
    iput-wide v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartTime:J

    .line 169
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartPosition:F

    .line 170
    iput-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold:Z

    .line 171
    iput v1, p0, Lde/mrapp/android/util/gesture/DragHelper;->minDragDistance:F

    .line 172
    iput v1, p0, Lde/mrapp/android/util/gesture/DragHelper;->maxDragDistance:F

    .line 175
    :cond_0
    iget-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold:Z

    if-nez v0, :cond_1

    .line 176
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartPosition:F

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->dragStartTime:J

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->reachedThreshold:Z

    .line 179
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    goto :goto_0

    .line 182
    :cond_1
    iget v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    sub-float v0, p1, v0

    .line 184
    iget v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->minDragDistance:F

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    sub-float v0, p1, v2

    .line 186
    iput v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    move v0, v2

    .line 189
    :cond_2
    iget v2, p0, Lde/mrapp/android/util/gesture/DragHelper;->maxDragDistance:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    cmpg-float v1, v2, v0

    if-gez v1, :cond_3

    sub-float/2addr p1, v2

    .line 191
    iput p1, p0, Lde/mrapp/android/util/gesture/DragHelper;->thresholdReachedPosition:F

    move v0, v2

    .line 194
    :cond_3
    iput v0, p0, Lde/mrapp/android/util/gesture/DragHelper;->distance:F

    :cond_4
    :goto_0
    return-void
.end method
