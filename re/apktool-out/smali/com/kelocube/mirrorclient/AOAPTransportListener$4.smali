.class public final Lcom/kelocube/mirrorclient/AOAPTransportListener$4;
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
        "com/kelocube/mirrorclient/AOAPTransportListener$4",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/AOAPTransportListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$4;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    .line 213
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 216
    const-string p2, "ACTION_USB_ACCESSORY_DETACHED"

    invoke-static {p1, p2}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/kelocube/mirrorclient/AOAPTransportListener$4;->this$0:Lcom/kelocube/mirrorclient/AOAPTransportListener;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/AOAPTransportListener;->reset()V

    :cond_0
    return-void
.end method
