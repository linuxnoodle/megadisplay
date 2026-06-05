.class final Lcom/kelocube/mirrorclient/TransportListener$update$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransportListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TransportListener;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/kelocube/mirrorclient/MirrorClient;",
        "Lcom/kelocube/mirrorclient/AppException;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "client",
        "Lcom/kelocube/mirrorclient/MirrorClient;",
        "e",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/TransportListener;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/TransportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$update$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Lcom/kelocube/mirrorclient/MirrorClient;

    check-cast p2, Lcom/kelocube/mirrorclient/AppException;

    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/TransportListener$update$1;->invoke(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->close()V

    .line 164
    iget-object p2, p0, Lcom/kelocube/mirrorclient/TransportListener$update$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    invoke-static {p2}, Lcom/kelocube/mirrorclient/TransportListener;->access$getClients$p(Lcom/kelocube/mirrorclient/TransportListener;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$update$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/TransportListener;->access$update(Lcom/kelocube/mirrorclient/TransportListener;)V

    return-void
.end method
