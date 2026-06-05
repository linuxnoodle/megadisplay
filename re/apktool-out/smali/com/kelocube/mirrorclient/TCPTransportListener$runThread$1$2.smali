.class final Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TCPTransportListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kelocube/mirrorclient/AppException;",
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
        "Lcom/kelocube/mirrorclient/AppException;",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lcom/kelocube/mirrorclient/AppException;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->invoke(Lcom/kelocube/mirrorclient/AppException;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object v0

    if-nez v0, :cond_3

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AppException;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setError(Lcom/kelocube/mirrorclient/AppException;)V

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/TCPTransport;->close()V

    .line 83
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/Transport;

    move-result-object p1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->$transport:Lcom/kelocube/mirrorclient/TCPTransport;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kelocube/mirrorclient/TCPTransportListener;->setTransport(Lcom/kelocube/mirrorclient/Transport;)V

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$runThread$1$2;->this$0:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/TCPTransportListener;)Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/TCPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method
