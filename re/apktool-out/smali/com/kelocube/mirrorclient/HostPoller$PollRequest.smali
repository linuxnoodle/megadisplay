.class public final Lcom/kelocube/mirrorclient/HostPoller$PollRequest;
.super Ljava/lang/Object;
.source "HostPoller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/HostPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PollRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/HostPoller$PollRequest;",
        "",
        "address",
        "Ljava/net/InetSocketAddress;",
        "userData",
        "(Ljava/net/InetSocketAddress;Ljava/lang/Object;)V",
        "getAddress",
        "()Ljava/net/InetSocketAddress;",
        "getUserData",
        "()Ljava/lang/Object;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private final userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->address:Ljava/net/InetSocketAddress;

    .line 20
    iput-object p2, p0, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->userData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getUserData()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller$PollRequest;->userData:Ljava/lang/Object;

    return-object v0
.end method
