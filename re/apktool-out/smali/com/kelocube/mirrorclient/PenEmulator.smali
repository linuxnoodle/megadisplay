.class public final Lcom/kelocube/mirrorclient/PenEmulator;
.super Ljava/lang/Object;
.source "PenEmulator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eJ\u001e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0019\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/PenEmulator;",
        "",
        "()V",
        "count",
        "",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "head",
        "getHead",
        "setHead",
        "sizes",
        "",
        "",
        "getSizes",
        "()[Ljava/lang/Float;",
        "[Ljava/lang/Float;",
        "beginTouch",
        "",
        "getPressure",
        "size",
        "map",
        "x",
        "x0",
        "x1",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private count:I

.field private head:I

.field private final sizes:[Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 6
    new-array v1, v0, [Ljava/lang/Float;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->sizes:[Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final beginTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    .line 12
    iput v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    return v0
.end method

.method public final getHead()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    return v0
.end method

.method public final getPressure(F)F
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->sizes:[Ljava/lang/Float;

    iget v1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    .line 17
    iget p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->sizes:[Ljava/lang/Float;

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    .line 18
    iget p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 22
    iget-object v3, p0, Lcom/kelocube/mirrorclient/PenEmulator;->sizes:[Ljava/lang/Float;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iget p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    int-to-float v1, p1

    div-float/2addr v2, v1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const p1, 0x3c656042    # 0.014f

    const v0, 0x3cf5c28f    # 0.03f

    .line 28
    invoke-virtual {p0, v2, p1, v0}, Lcom/kelocube/mirrorclient/PenEmulator;->map(FFF)F

    move-result p1

    return p1
.end method

.method public final getSizes()[Ljava/lang/Float;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/kelocube/mirrorclient/PenEmulator;->sizes:[Ljava/lang/Float;

    return-object v0
.end method

.method public final map(FFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    return p1
.end method

.method public final setCount(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->count:I

    return-void
.end method

.method public final setHead(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/kelocube/mirrorclient/PenEmulator;->head:I

    return-void
.end method
