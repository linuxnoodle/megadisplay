.class final Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CanvasScaler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/CanvasScaler;->sendState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/nio/ByteBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cancel:Z

.field final synthetic $p0:Landroid/graphics/PointF;

.field final synthetic $p1:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/CanvasScaler;


# direct methods
.method constructor <init>(ZLcom/kelocube/mirrorclient/CanvasScaler;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$cancel:Z

    iput-object p2, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p0:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p1:Landroid/graphics/PointF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$cancel:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$getPointers$p(Lcom/kelocube/mirrorclient/CanvasScaler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p0:Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p0:Landroid/graphics/PointF;

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p1:Landroid/graphics/PointF;

    if-eqz v1, :cond_3

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$sendState$1;->$p1:Landroid/graphics/PointF;

    if-eqz v1, :cond_4

    iget v2, v1, Landroid/graphics/PointF;->y:F

    :cond_4
    invoke-static {v0, v2}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
