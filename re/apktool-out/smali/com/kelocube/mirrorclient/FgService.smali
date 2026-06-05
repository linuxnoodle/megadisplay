.class public final Lcom/kelocube/mirrorclient/FgService;
.super Landroid/app/Service;
.source "FgService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/FgService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/FgService;",
        "Landroid/app/Service;",
        "()V",
        "mediaProjection",
        "Landroid/media/projection/MediaProjection;",
        "started",
        "",
        "createNotificationChannel",
        "",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "onTimeout",
        "fgServiceType",
        "showTimeoutNotification",
        "Companion",
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


# static fields
.field public static final ACTION_DISCONNECT:Ljava/lang/String; = "com.kelocube.mirrorclient.ACTION_DISCONNECT"

.field public static final BROADCAST_ID:I = 0x1

.field public static final CHANNEL_ID:Ljava/lang/String; = "FgServiceChannel"

.field public static final Companion:Lcom/kelocube/mirrorclient/FgService$Companion;

.field private static running:I


# instance fields
.field private mediaProjection:Landroid/media/projection/MediaProjection;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/FgService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/FgService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/FgService;->Companion:Lcom/kelocube/mirrorclient/FgService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRunning$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/kelocube/mirrorclient/FgService;->running:I

    return v0
.end method

.method private final createNotificationChannel()V
    .locals 3

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m()V

    .line 36
    sget v0, Lcom/kelocube/mirrorclient/R$string;->service_channel_name:I

    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x3

    .line 34
    const-string v2, "FgServiceChannel"

    invoke-static {v2, v0, v1}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 39
    const-class v1, Landroid/app/NotificationManager;

    invoke-static {p0, v1}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Lcom/kelocube/mirrorclient/FgService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 42
    invoke-static {v1, v0}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/FgService;->stopForeground(Z)V

    return-void
.end method

.method private final showTimeoutNotification()V
    .locals 4

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 129
    const-class v0, Landroid/app/NotificationManager;

    invoke-static {p0, v0}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Lcom/kelocube/mirrorclient/FgService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/FgService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 134
    :goto_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-string v3, "FgServiceChannel"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    sget v2, Lcom/kelocube/mirrorclient/R$string;->service_timeout_title:I

    invoke-virtual {p0, v2}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 136
    sget v2, Lcom/kelocube/mirrorclient/R$string;->service_timeout_text:I

    invoke-virtual {p0, v2}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 137
    sget v2, Lcom/kelocube/mirrorclient/R$drawable;->ic_info_outline_32dp:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 110
    sget v0, Lcom/kelocube/mirrorclient/FgService;->running:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kelocube/mirrorclient/FgService;->running:I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string p2, "media_projection_result_code"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "media_projection_result_data"

    if-lt v0, v1, :cond_0

    .line 52
    const-class v0, Landroid/content/Intent;

    invoke-static {p1, v2, v0}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    :goto_0
    const/4 v0, -0x1

    .line 57
    const-string v1, "FgService"

    const/4 v2, 0x2

    if-ne p2, v0, :cond_5

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 64
    :cond_1
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/FgService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.media.projection.MediaProjectionManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 65
    invoke-virtual {v0, p2, p1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/FgService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-nez p1, :cond_2

    .line 69
    const-string p1, "Failed to get media projection"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/FgService;->stopSelf()V

    return v2

    .line 74
    :cond_2
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/FgService;->createNotificationChannel()V

    .line 75
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/kelocube/mirrorclient/MirrorActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 76
    invoke-static {p2, p3, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 80
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "FgServiceChannel"

    invoke-direct {v1, p2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    sget v3, Lcom/kelocube/mirrorclient/R$string;->service_running:I

    invoke-virtual {p0, v3}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 82
    sget v3, Lcom/kelocube/mirrorclient/R$string;->service_running_text:I

    invoke-virtual {p0, v3}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 83
    sget v3, Lcom/kelocube/mirrorclient/R$drawable;->ic_info_outline_32dp:I

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 86
    sget v3, Lcom/kelocube/mirrorclient/R$color;->colorAccent:I

    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 88
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 90
    sget v4, Lcom/kelocube/mirrorclient/R$string;->service_exit:I

    invoke-virtual {p0, v4}, Lcom/kelocube/mirrorclient/FgService;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 91
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {p2, v1, v5, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 88
    invoke-direct {v3, p3, v4, p2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 93
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_3

    const/16 p2, 0x20

    .line 97
    invoke-static {p0, v1, p1, p2}, Lcom/kelocube/mirrorclient/FgService$$ExternalSyntheticApiModelOutline0;->m(Lcom/kelocube/mirrorclient/FgService;ILandroid/app/Notification;I)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/kelocube/mirrorclient/FgService;->startForeground(ILandroid/app/Notification;)V

    .line 101
    :goto_1
    iget-boolean p1, p0, Lcom/kelocube/mirrorclient/FgService;->started:Z

    if-nez p1, :cond_4

    .line 102
    iput-boolean v1, p0, Lcom/kelocube/mirrorclient/FgService;->started:Z

    .line 103
    sget p1, Lcom/kelocube/mirrorclient/FgService;->running:I

    add-int/2addr p1, v1

    sput p1, Lcom/kelocube/mirrorclient/FgService;->running:I

    :cond_4
    return v2

    .line 58
    :cond_5
    :goto_2
    const-string p1, "Media projection permission not granted"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/FgService;->stopSelf()V

    return v2
.end method

.method public onTimeout(II)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Foreground service timeout reached for startId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FgService"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/FgService;->showTimeoutNotification()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/FgService;->stopSelf(I)V

    return-void
.end method
