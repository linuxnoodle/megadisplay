.class public final Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;
.super Ljava/lang/Object;
.source "TransportListener.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TransportListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/kelocube/mirrorclient/TransportListener$clientStateObserver$1",
        "Landroidx/lifecycle/Observer;",
        "Lcom/kelocube/mirrorclient/MirrorClient$State;",
        "onChanged",
        "",
        "state",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/TransportListener;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/TransportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/kelocube/mirrorclient/MirrorClient$State;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TransportListener;->isSessionActive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$State;->Active:Lcom/kelocube/mirrorclient/MirrorClient$State;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/TransportListener$clientStateObserver$1;->onChanged(Lcom/kelocube/mirrorclient/MirrorClient$State;)V

    return-void
.end method
