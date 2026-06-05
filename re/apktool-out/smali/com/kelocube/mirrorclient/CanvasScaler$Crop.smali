.class public final Lcom/kelocube/mirrorclient/CanvasScaler$Crop;
.super Ljava/lang/Object;
.source "CanvasScaler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/CanvasScaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crop"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;",
        "",
        "()V",
        "a",
        "",
        "getA",
        "()F",
        "setA",
        "(F)V",
        "t",
        "getT",
        "setT",
        "x",
        "getX",
        "setX",
        "y",
        "getY",
        "setY",
        "set",
        "",
        "crop",
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
.field private a:F

.field private t:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->a:F

    return-void
.end method


# virtual methods
.method public final getA()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->a:F

    return v0
.end method

.method public final getT()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->t:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->y:F

    return v0
.end method

.method public final set(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 1

    const-string v0, "crop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v0, p1, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->x:F

    iput v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->x:F

    .line 24
    iget v0, p1, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->y:F

    iput v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->y:F

    .line 25
    iget v0, p1, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->a:F

    iput v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->a:F

    .line 26
    iget p1, p1, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->t:F

    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->t:F

    return-void
.end method

.method public final setA(F)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->a:F

    return-void
.end method

.method public final setT(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->t:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->y:F

    return-void
.end method
