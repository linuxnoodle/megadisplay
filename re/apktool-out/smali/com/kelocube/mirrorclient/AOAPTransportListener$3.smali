.class public final Lcom/kelocube/mirrorclient/AOAPTransportListener$3;
.super Landroid/content/BroadcastReceiver;
.source "AOAPTransportListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/AOAPTransportListener;-><init>(Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;Landroid/content/Context;)V
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
        "com/kelocube/mirrorclient/AOAPTransportListener$3",
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
.field final synthetic $TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kelocube/mirrorclient/AOAPTransportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->$TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    .line 194
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.example.USB_PERMISSION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    const-string p1, "permission"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->$TAG:Ljava/lang/String;

    const-string v0, "Accessory permission granted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->openFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->$TAG:Ljava/lang/String;

    const-string p2, "Accessory permission denied"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    new-instance v0, Lcom/kelocube/mirrorclient/AppException;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, p2, v1, v2}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->setError(Lcom/kelocube/mirrorclient/AppException;)V

    .line 207
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$3;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/AOAPTransportListener;)Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener$Callbacks;->getOnUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
