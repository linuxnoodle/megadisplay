.class final Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CanvasScaler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/CanvasScaler;->setCrop(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
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
.field final synthetic $crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/CanvasScaler;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->$crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->$crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getX()F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->$crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getY()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->$crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getA()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->this$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$setCrop$1;->$crop:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getT()F

    move-result v1

    const v3, 0x40c90fdb

    invoke-static {v1, v3}, Lcom/kelocube/mirrorclient/UtilKt;->wrap(FF)F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler;->access$packCoord(Lcom/kelocube/mirrorclient/CanvasScaler;F)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
