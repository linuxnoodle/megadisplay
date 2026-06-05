.class public final Lcom/kelocube/mirrorclient/TransportListener$6;
.super Landroid/content/BroadcastReceiver;
.source "TransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TransportListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kelocube/mirrorclient/TransportListener$6",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$6;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    .line 130
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x147b62d9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    const-string p2, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {p1, p2}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$6;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/TransportListener;->access$update(Lcom/kelocube/mirrorclient/TransportListener;)V

    :cond_1
    :goto_0
    return-void
.end method
