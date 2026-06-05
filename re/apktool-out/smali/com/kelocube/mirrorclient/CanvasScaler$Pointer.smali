.class final Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;
.super Ljava/lang/Object;
.source "CanvasScaler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/CanvasScaler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pointer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;",
        "",
        "id",
        "",
        "(I)V",
        "getId",
        "()I",
        "point",
        "Landroid/graphics/PointF;",
        "getPoint",
        "()Landroid/graphics/PointF;",
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
.field private final id:I

.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->id:I

    .line 48
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->id:I

    return v0
.end method

.method public final getPoint()Landroid/graphics/PointF;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->point:Landroid/graphics/PointF;

    return-object v0
.end method
