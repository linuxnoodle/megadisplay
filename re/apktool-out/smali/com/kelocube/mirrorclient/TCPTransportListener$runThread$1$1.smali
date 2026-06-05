.class final Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TCPTransportListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TCPTransportListener;->runThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $transport:Lcom/kelocube/mirrorclient/TCPTransport;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/TCPTransportListener;Lcom/kelocube/mirrorclient/TCPTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setError(Lcom/kelocube/mirrorclient/AppException;)V

    .line 69
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    check-cast v1, Lcom/kelocube/mirrorclient/Transport;

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setTransport(Lcom/kelocube/mirrorclient/Transport;)V

    .line 70
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/TCPTransportListener;)Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransport;->close()V

    .line 73
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setTransport(Lcom/kelocube/mirrorclient/Transport;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$1;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/TCPTransportListener;)Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
