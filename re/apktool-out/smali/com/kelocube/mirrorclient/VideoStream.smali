.class public abstract Lcom/kelocube/mirrorclient/VideoStream;
.super Ljava/lang/Object;
.source "VideoStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH&J \u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H&J\u0008\u0010\"\u001a\u00020\tH&J\u0008\u0010#\u001a\u00020\tH&R5\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/VideoStream;",
        "",
        "()V",
        "onError",
        "Lkotlin/Function1;",
        "Lcom/kelocube/mirrorclient/AppException;",
        "Lkotlin/ParameterName;",
        "name",
        "e",
        "",
        "getOnError",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnError",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onFrameDone",
        "Lkotlin/Function0;",
        "getOnFrameDone",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnFrameDone",
        "(Lkotlin/jvm/functions/Function0;)V",
        "configure",
        "width",
        "",
        "height",
        "lowLatency",
        "",
        "layout",
        "activeArea",
        "Landroid/graphics/Rect;",
        "processInput",
        "data",
        "",
        "offset",
        "length",
        "release",
        "stop",
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
.field private onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onFrameDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/kelocube/mirrorclient/VideoStream$onError$1;->INSTANCE:Lcom/kelocube/mirrorclient/VideoStream$onError$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/VideoStream;->onError:Lkotlin/jvm/functions/Function1;

    .line 14
    sget-object v0, Lcom/kelocube/mirrorclient/VideoStream$onFrameDone$1;->INSTANCE:Lcom/kelocube/mirrorclient/VideoStream$onFrameDone$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/kelocube/mirrorclient/VideoStream;->onFrameDone:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public abstract configure(IIZ)V
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/kelocube/mirrorclient/VideoStream;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnFrameDone()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/kelocube/mirrorclient/VideoStream;->onFrameDone:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public abstract layout(Landroid/graphics/Rect;)V
.end method

.method public abstract processInput([BII)V
.end method

.method public abstract release()V
.end method

.method public final setOnError(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kelocube/mirrorclient/AppException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/kelocube/mirrorclient/VideoStream;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnFrameDone(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/kelocube/mirrorclient/VideoStream;->onFrameDone:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public abstract stop()V
.end method
