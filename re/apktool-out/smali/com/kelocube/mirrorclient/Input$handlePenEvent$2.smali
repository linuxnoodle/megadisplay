.class final Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Input.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Input;->handlePenEvent(Landroid/view/MotionEvent;Z)V
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
        "to",
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
.field final synthetic $contactIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $e:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/Input;


# direct methods
.method constructor <init>(Landroid/view/MotionEvent;Lkotlin/jvm/internal/Ref$IntRef;Lcom/kelocube/mirrorclient/Input;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$contactIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 232
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 7

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$contactIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/Input;->access$getArea$p(Lcom/kelocube/mirrorclient/Input;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "area"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/Input;->access$getArea$p(Lcom/kelocube/mirrorclient/Input;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 234
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$contactIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v4}, Lcom/kelocube/mirrorclient/Input;->access$getArea$p(Lcom/kelocube/mirrorclient/Input;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v4}, Lcom/kelocube/mirrorclient/Input;->access$getArea$p(Lcom/kelocube/mirrorclient/Input;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 235
    invoke-static {v0}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v0

    const/16 v2, 0x7fff

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-short v0, v0

    .line 236
    invoke-static {v1}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    .line 241
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/Input;->getMode()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 242
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Input;->access$getSonarPen$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/SonarPenInput;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 243
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Input;->access$getSonarPen$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/SonarPenInput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/SonarPenInput;->getPressure()F

    move-result v3

    invoke-static {v3}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-short v2, v2

    .line 244
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Input;->access$getSonarPen$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/SonarPenInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kelocube/mirrorclient/SonarPenInput;->getButtonDown()Z

    move-result v6

    invoke-static {v3, v6}, Lcom/kelocube/mirrorclient/Input;->access$setButtonDown$p(Lcom/kelocube/mirrorclient/Input;Z)V

    .line 245
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Input;->access$getSonarPen$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/SonarPenInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kelocube/mirrorclient/SonarPenInput;->getPenID()I

    move-result v6

    if-eq v6, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v4}, Lcom/kelocube/mirrorclient/Input;->access$setPenContact$p(Lcom/kelocube/mirrorclient/Input;Z)V

    goto :goto_2

    .line 249
    :cond_5
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/Input;->access$getPenEmulator$p(Lcom/kelocube/mirrorclient/Input;)Lcom/kelocube/mirrorclient/PenEmulator;

    move-result-object v3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getSize()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kelocube/mirrorclient/PenEmulator;->getPressure(F)F

    move-result v3

    invoke-static {v3}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-short v2, v2

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    .line 254
    :cond_6
    iget-object v3, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-static {v3}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-short v3, v3

    .line 255
    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 256
    iget-object v5, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->$e:Landroid/view/MotionEvent;

    const/16 v6, 0x19

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const v6, 0x40c90fdb

    div-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    .line 258
    invoke-static {v4}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    int-to-short v4, v4

    const v6, 0x3fc90fdb

    div-float/2addr v5, v6

    .line 259
    invoke-static {v5}, Lcom/kelocube/mirrorclient/UtilKt;->saturate(F)F

    move-result v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    int-to-short v5, v2

    move v2, v3

    move v3, v5

    move v5, v4

    .line 264
    :goto_3
    iget-object v4, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v4}, Lcom/kelocube/mirrorclient/Input;->access$getPenContact$p(Lcom/kelocube/mirrorclient/Input;)Z

    move-result v4

    .line 266
    iget-object v6, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v6}, Lcom/kelocube/mirrorclient/Input;->access$getPenHover$p(Lcom/kelocube/mirrorclient/Input;)Z

    move-result v6

    if-eqz v6, :cond_7

    or-int/lit8 v4, v4, 0x2

    .line 268
    :cond_7
    iget-object v6, p0, Lcom/kelocube/mirrorclient/Input$handlePenEvent$2;->this$0:Lcom/kelocube/mirrorclient/Input;

    invoke-static {v6}, Lcom/kelocube/mirrorclient/Input;->access$getButtonDown$p(Lcom/kelocube/mirrorclient/Input;)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v4, v4, 0x4

    :cond_8
    int-to-byte v4, v4

    .line 273
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 277
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
