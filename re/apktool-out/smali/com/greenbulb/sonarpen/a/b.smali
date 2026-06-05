.class public Lcom/greenbulb/sonarpen/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/greenbulb/sonarpen/a/c;

.field private b:[D

.field private c:[D

.field private d:[D

.field private e:[D

.field private f:[D

.field private g:[D

.field private h:[D

.field private i:[[D

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/greenbulb/sonarpen/a/b;->l:I

    iput v0, p0, Lcom/greenbulb/sonarpen/a/b;->m:I

    invoke-direct {p0, p1}, Lcom/greenbulb/sonarpen/a/b;->b(I)V

    return-void
.end method

.method private a(I)S
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->n:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, v0, v1

    int-to-short v1, v1

    aget-byte p1, v0, p1

    int-to-short p1, p1

    and-int/lit16 v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private a([D[D)V
    .locals 11

    array-length v0, p2

    array-length v1, p2

    mul-int v0, v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v0, v2, v0

    const/4 v4, 0x0

    aget-wide v5, p2, v4

    mul-double v5, v5, v5

    mul-double v5, v5, v0

    div-double/2addr v5, v2

    aput-wide v5, p1, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    array-length v7, p2

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_0

    aget-wide v7, p2, v5

    mul-double v7, v7, v7

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p2, v9

    mul-double v9, v9, v9

    add-double/2addr v7, v9

    mul-double v7, v7, v0

    aput-wide v7, p1, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p2

    sub-int/2addr v5, v4

    aget-wide v7, p2, v5

    array-length v5, p2

    sub-int/2addr v5, v4

    aget-wide v4, p2, v5

    mul-double v7, v7, v4

    mul-double v7, v7, v0

    div-double/2addr v7, v2

    aput-wide v7, p1, v6

    return-void
.end method

.method private b(I)V
    .locals 7

    iput p1, p0, Lcom/greenbulb/sonarpen/a/b;->j:I

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->b:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->c:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->d:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->e:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->f:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->g:[D

    new-instance v0, Lcom/greenbulb/sonarpen/a/c;

    invoke-direct {v0, p1}, Lcom/greenbulb/sonarpen/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->a:Lcom/greenbulb/sonarpen/a/c;

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [[D

    iput-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->i:[[D

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->i:[[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-array v3, p1, [D

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/greenbulb/sonarpen/a/b;->h:[D

    :goto_1
    iget-object p1, p0, Lcom/greenbulb/sonarpen/a/b;->h:[D

    array-length v1, p1

    if-ge v0, v1, :cond_1

    int-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v3

    array-length v5, p1

    int-to-double v5, v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()D
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/greenbulb/sonarpen/a/b;->m:I

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/greenbulb/sonarpen/a/b;->d:[D

    array-length v1, v1

    iget-object v4, v0, Lcom/greenbulb/sonarpen/a/b;->b:[D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-wide v7, v4, v6

    iget v9, v0, Lcom/greenbulb/sonarpen/a/b;->m:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/greenbulb/sonarpen/a/b;->d:[D

    invoke-static {v4, v5, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    iput v5, v0, Lcom/greenbulb/sonarpen/a/b;->m:I

    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v4, v0, Lcom/greenbulb/sonarpen/a/b;->e:[D

    iget-object v6, v0, Lcom/greenbulb/sonarpen/a/b;->d:[D

    aget-wide v7, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v8

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x3ed0000000000000L    # 3.814697265625E-6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double v4, v4, v6

    const/4 v1, 0x1

    move-wide v7, v2

    const/4 v6, 0x1

    :goto_2
    iget-object v9, v0, Lcom/greenbulb/sonarpen/a/b;->e:[D

    array-length v10, v9

    if-ge v6, v10, :cond_3

    aget-wide v10, v9, v6

    cmpl-double v9, v10, v4

    if-lez v9, :cond_2

    int-to-double v7, v6

    move-wide v4, v10

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const v4, 0xac44

    int-to-double v5, v4

    mul-double v7, v7, v5

    iget v9, v0, Lcom/greenbulb/sonarpen/a/b;->j:I

    int-to-double v10, v9

    div-double/2addr v7, v10

    div-int/2addr v4, v9

    int-to-double v12, v4

    cmpg-double v9, v12, v7

    if-gez v9, :cond_4

    rsub-int v4, v4, 0x5622

    int-to-double v12, v4

    cmpg-double v4, v7, v12

    if-gez v4, :cond_4

    div-double v12, v7, v5

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v4, v9

    iget-object v9, v0, Lcom/greenbulb/sonarpen/a/b;->e:[D

    add-int/lit8 v10, v4, -0x1

    aget-wide v10, v9, v10

    aget-wide v12, v9, v4

    add-int/2addr v4, v1

    aget-wide v14, v9, v4

    add-double v16, v14, v10

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    sub-double v16, v16, v12

    sub-double/2addr v14, v10

    div-double v14, v14, v18

    cmpg-double v1, v16, v2

    if-gez v1, :cond_4

    neg-double v1, v14

    mul-double v16, v16, v18

    div-double v1, v1, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v3, v9

    if-gez v11, :cond_4

    mul-double v1, v1, v5

    iget v3, v0, Lcom/greenbulb/sonarpen/a/b;->j:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    add-double/2addr v7, v1

    :cond_4
    return-wide v7
.end method

.method public a([BI)V
    .locals 8

    iput-object p1, p0, Lcom/greenbulb/sonarpen/a/b;->n:[B

    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    :goto_1
    iget v1, p0, Lcom/greenbulb/sonarpen/a/b;->k:I

    iget v2, p0, Lcom/greenbulb/sonarpen/a/b;->j:I

    if-ge v1, v2, :cond_1

    if-ge v0, p2, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/a/b;->a(I)S

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x40e0000000000000L    # 32768.0

    div-double/2addr v2, v4

    iget-object v0, p0, Lcom/greenbulb/sonarpen/a/b;->f:[D

    iget v4, p0, Lcom/greenbulb/sonarpen/a/b;->k:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/greenbulb/sonarpen/a/b;->k:I

    aput-wide v2, v0, v4

    move v0, v1

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/greenbulb/sonarpen/a/b;->j:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->g:[D

    iget-object v3, p0, Lcom/greenbulb/sonarpen/a/b;->f:[D

    aget-wide v4, v3, v1

    iget-object v3, p0, Lcom/greenbulb/sonarpen/a/b;->h:[D

    aget-wide v6, v3, v1

    mul-double v4, v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/greenbulb/sonarpen/a/b;->a:Lcom/greenbulb/sonarpen/a/c;

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->g:[D

    invoke-virtual {v1, v2}, Lcom/greenbulb/sonarpen/a/c;->a([D)V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/a/b;->c:[D

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->g:[D

    invoke-direct {p0, v1, v2}, Lcom/greenbulb/sonarpen/a/b;->a([D[D)V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/a/b;->c:[D

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->i:[[D

    iget v3, p0, Lcom/greenbulb/sonarpen/a/b;->l:I

    aget-object v2, v2, v3

    array-length v3, v1

    invoke-static {v1, p1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/greenbulb/sonarpen/a/b;->l:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->i:[[D

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/greenbulb/sonarpen/a/b;->l:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/greenbulb/sonarpen/a/b;->j:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/greenbulb/sonarpen/a/b;->b:[D

    aget-wide v3, v2, v1

    iget-object v5, p0, Lcom/greenbulb/sonarpen/a/b;->c:[D

    aget-wide v6, v5, v1

    add-double/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/greenbulb/sonarpen/a/b;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/greenbulb/sonarpen/a/b;->m:I

    iget-object v1, p0, Lcom/greenbulb/sonarpen/a/b;->f:[D

    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/greenbulb/sonarpen/a/b;->k:I

    goto :goto_0

    :cond_4
    return-void
.end method
