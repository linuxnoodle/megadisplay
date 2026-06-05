.class final Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AOAPTransportListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/AOAPTransportListener;->tryConnect()V
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
.field final synthetic $connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/AOAPTransport;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-virtual {v0, v2}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->setTransport(Lcom/kelocube/mirrorclient/AOAPTransport;)V

    .line 108
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$getConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransport;

    move-result-object v0

    iget-object v2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$setConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->setError(Lcom/kelocube/mirrorclient/AppException;)V

    .line 111
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransport;->close()V

    .line 115
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$getConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransport;

    move-result-object v0

    iget-object v2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$setConnectingTransport$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;Lcom/kelocube/mirrorclient/AOAPTransport;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->getTransport()Lcom/kelocube/mirrorclient/AOAPTransport;

    move-result-object v0

    iget-object v2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->$connectingTransport:Lcom/kelocube/mirrorclient/AOAPTransport;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->setTransport(Lcom/kelocube/mirrorclient/AOAPTransport;)V

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$tryConnect$1$1$1;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
