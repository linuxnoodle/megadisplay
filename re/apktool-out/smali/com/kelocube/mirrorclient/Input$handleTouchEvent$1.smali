.class final Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Input.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/Input;->handleTouchEvent(Landroid/view/MotionEvent;Z)V
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
.field final synthetic $e:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/Input;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;->this$0:Lcom/kelocube/mirrorclient/Input;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;->$e:Landroid/view/MotionEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 162
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;->this$0:Lcom/kelocube/mirrorclient/Input;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$handleTouchEvent$1;->$e:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/kelocube/mirrorclient/Input;->access$serializeTouchEvent(Lcom/kelocube/mirrorclient/Input;Ljava/nio/ByteBuffer;Landroid/view/MotionEvent;I)V

    return-void
.end method
