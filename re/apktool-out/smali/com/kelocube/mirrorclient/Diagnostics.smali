.class public final Lcom/kelocube/mirrorclient/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u001c\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Diagnostics;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "context",
        "Landroid/content/Context;",
        "userId",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "<set-?>",
        "",
        "enabled",
        "getEnabled",
        "()Z",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "captureUserReport",
        "",
        "email",
        "configureSentry",
        "onSharedPreferenceChanged",
        "p0",
        "key",
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
.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private final prefs:Landroid/content/SharedPreferences;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Diagnostics;->context:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/kelocube/mirrorclient/Diagnostics;->userId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "getDefaultSharedPreferences(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Diagnostics;->prefs:Landroid/content/SharedPreferences;

    .line 45
    move-object p2, p0

    check-cast p2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 46
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Diagnostics;->configureSentry()V

    return-void
.end method

.method private final configureSentry()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Diagnostics;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "allow_error_reports"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kelocube/mirrorclient/Diagnostics;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error reporting enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lio/sentry/android/AndroidSentryClientFactory;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Diagnostics;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/sentry/android/AndroidSentryClientFactory;-><init>(Landroid/content/Context;)V

    new-instance v2, Lio/sentry/dsn/Dsn;

    const-string v3, "https://5cf60100fc334b3bac984f96d9f6538e@o265553.ingest.sentry.io/1469104"

    invoke-direct {v2, v3}, Lio/sentry/dsn/Dsn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/sentry/android/AndroidSentryClientFactory;->createSentryClient(Lio/sentry/dsn/Dsn;)Lio/sentry/SentryClient;

    move-result-object v0

    .line 33
    const-string v2, "release"

    invoke-virtual {v0, v2}, Lio/sentry/SentryClient;->setEnvironment(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lio/sentry/SentryClient;->getContext()Lio/sentry/context/Context;

    move-result-object v2

    new-instance v3, Lio/sentry/event/User;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Diagnostics;->userId:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v1, v1}, Lio/sentry/event/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/sentry/context/Context;->setUser(Lio/sentry/event/User;)V

    .line 35
    invoke-static {v0}, Lio/sentry/Sentry;->setStoredClient(Lio/sentry/SentryClient;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error reporting disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lio/sentry/android/AndroidSentryClientFactory;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Diagnostics;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lio/sentry/android/AndroidSentryClientFactory;-><init>(Landroid/content/Context;)V

    check-cast v0, Lio/sentry/SentryClientFactory;

    invoke-static {v1, v0}, Lio/sentry/Sentry;->init(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    :goto_0
    return-void
.end method


# virtual methods
.method public final captureUserReport(Ljava/lang/String;)V
    .locals 4

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lio/sentry/Sentry;->getContext()Lio/sentry/context/Context;

    move-result-object v0

    new-instance v1, Lio/sentry/event/User;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/Diagnostics;->userId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, p1}, Lio/sentry/event/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/sentry/context/Context;->setUser(Lio/sentry/event/User;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android error report by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/Sentry;->capture(Ljava/lang/String;)V

    return-void
.end method

.method public final getEnabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Diagnostics;->enabled:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 24
    const-string p1, "allow_error_reports"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Diagnostics;->configureSentry()V

    :cond_0
    return-void
.end method
