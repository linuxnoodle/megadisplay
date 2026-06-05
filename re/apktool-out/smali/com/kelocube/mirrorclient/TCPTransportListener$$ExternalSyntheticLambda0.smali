.class public final synthetic Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/nio/channels/SocketChannel;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/TCPTransportListener;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;->f$0:Ljava/nio/channels/SocketChannel;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/TCPTransportListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;->f$0:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TCPTransportListener$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/TCPTransportListener;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/TCPTransportListener;->$r8$lambda$2C-wnGSVd4mSQIL1Vsi8hWdEMW8(Ljava/nio/channels/SocketChannel;Lcom/kelocube/mirrorclient/TCPTransportListener;)V

    return-void
.end method
