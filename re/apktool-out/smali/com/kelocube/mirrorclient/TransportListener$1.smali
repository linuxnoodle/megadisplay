.class public final Lcom/kelocube/mirrorclient/TransportListener$1;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kelocube/mirrorclient/TransportListener$1",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TransportListener$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 86
    const-string p1, "plugged"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/kelocube/mirrorclient/TransportListener$1;->this$0:Lcom/kelocube/mirrorclient/TransportListener;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 87
    :goto_0
    invoke-static {p2, p1}, Lcom/kelocube/mirrorclient/TransportListener;->access$setBatteryState$p(Lcom/kelocube/mirrorclient/TransportListener;I)V

    .line 93
    invoke-static {p2}, Lcom/kelocube/mirrorclient/TransportListener;->access$update(Lcom/kelocube/mirrorclient/TransportListener;)V

    :cond_2
    return-void
.end method
