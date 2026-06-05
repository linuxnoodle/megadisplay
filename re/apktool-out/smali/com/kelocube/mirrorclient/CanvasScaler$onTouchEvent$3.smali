.class final Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;
.super Lkotlin/jvm/internal/Lambda;
.source "CanvasScaler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/CanvasScaler;->onTouchEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;",
        "invoke",
        "(Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)Ljava/lang/Boolean;"
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
.field final synthetic $id:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;->$id:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;->getId()I

    move-result p1

    iget v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;->$id:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$onTouchEvent$3;->invoke(Lcom/kelocube/mirrorclient/CanvasScaler$Pointer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
