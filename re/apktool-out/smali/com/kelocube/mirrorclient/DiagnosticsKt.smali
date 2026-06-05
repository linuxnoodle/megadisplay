.class public final Lcom/kelocube/mirrorclient/DiagnosticsKt;
.super Ljava/lang/Object;
.source "Diagnostics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "SENTRY_DSN",
        "",
        "captureError",
        "",
        "e",
        "",
        "traceMessage",
        "tag",
        "msg",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final SENTRY_DSN:Ljava/lang/String; = "https://5cf60100fc334b3bac984f96d9f6538e@o265553.ingest.sentry.io/1469104"


# direct methods
.method public static final captureError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lio/sentry/Sentry;->capture(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final traceMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lio/sentry/Sentry;->getContext()Lio/sentry/context/Context;

    move-result-object v0

    .line 62
    new-instance v1, Lio/sentry/event/BreadcrumbBuilder;

    invoke-direct {v1}, Lio/sentry/event/BreadcrumbBuilder;-><init>()V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/sentry/event/BreadcrumbBuilder;->setMessage(Ljava/lang/String;)Lio/sentry/event/BreadcrumbBuilder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lio/sentry/event/BreadcrumbBuilder;->build()Lio/sentry/event/Breadcrumb;

    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lio/sentry/context/Context;->recordBreadcrumb(Lio/sentry/event/Breadcrumb;)V

    return-void
.end method
