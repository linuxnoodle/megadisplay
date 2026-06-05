.class public final Lcom/kelocube/mirrorclient/IntentReceiverActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "IntentReceiverActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0008\u0010\u000b\u001a\u00020\u0004H\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/IntentReceiverActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "handleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "onResume",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final handleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$getIntentSent$p()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$setIntentSent$p(I)V

    invoke-static {}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$getIntentSent$p()I

    .line 25
    :cond_0
    sget-object v0, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/TransportListener;->openIntent(Landroid/content/Intent;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$getLastStartTime$p()J

    move-result-wide v4

    const-wide v6, 0xb2d05e00L

    add-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    sget-object p1, Lcom/kelocube/mirrorclient/MirrorActivity;->Companion:Lcom/kelocube/mirrorclient/MirrorActivity$Companion;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorActivity$Companion;->getRunning()I

    move-result p1

    if-nez p1, :cond_1

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$setLastStartTime$p(J)V

    .line 33
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v2, Lcom/kelocube/mirrorclient/ui/MainActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/kelocube/mirrorclient/IntentReceiverActivityKt;->access$getIntentSent$p()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IntentReceiverActivity gIntentSent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", started="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kelocube/mirrorclient/UtilKt;->debugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->handleIntent(Landroid/content/Intent;)V

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->handleIntent(Landroid/content/Intent;)V

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/IntentReceiverActivity;->handleIntent(Landroid/content/Intent;)V

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
