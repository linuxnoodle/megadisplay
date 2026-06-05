.class final Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "App.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/App;->runFgServiceWhenNecessary()V
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/App;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/App;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TransportListener;->isSessionActive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    const-string v2, "remain_connected"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    .line 95
    sget-object v2, Lcom/kelocube/mirrorclient/FgService;->Companion:Lcom/kelocube/mirrorclient/FgService$Companion;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/FgService$Companion;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 97
    iget-object v2, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    check-cast v2, Landroid/content/Context;

    const-string v4, "android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION"

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 98
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/kelocube/mirrorclient/FgService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_3

    .line 101
    iget-object v4, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-static {v2}, Lcom/kelocube/mirrorclient/App;->access$requestPermission(Lcom/kelocube/mirrorclient/App;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 107
    sget-object v2, Lcom/kelocube/mirrorclient/FgService;->Companion:Lcom/kelocube/mirrorclient/FgService$Companion;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/FgService$Companion;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/kelocube/mirrorclient/FgService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    iget-object v4, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-virtual {v4, v2}, Lcom/kelocube/mirrorclient/App;->stopService(Landroid/content/Intent;)Z

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 113
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/App;->isActive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/kelocube/mirrorclient/App$runFgServiceWhenNecessary$updateFgServiceStatus$1;->this$0:Lcom/kelocube/mirrorclient/App;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/App;->getListener()Lcom/kelocube/mirrorclient/TransportListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/TransportListener;->close()V

    :cond_4
    return-void
.end method
