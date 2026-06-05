.class public final Lcom/kelocube/mirrorclient/YUVVideoStream;
.super Lcom/kelocube/mirrorclient/VideoStream;
.source "YUVVideoStream.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u0003\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0008\u0010\u001a\u001a\u00020\u0012H\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0002J\u0008\u0010\u001c\u001a\u00020\u0012H\u0016J(\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000cH\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/YUVVideoStream;",
        "Lcom/kelocube/mirrorclient/VideoStream;",
        "Landroid/view/SurfaceHolder$Callback;",
        "layout",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "decoder",
        "Lcom/kelocube/mirrorclient/Decoder;",
        "haveConfig",
        "",
        "haveSurface",
        "height",
        "",
        "lowLatency",
        "view",
        "Landroid/view/SurfaceView;",
        "width",
        "configure",
        "",
        "activeArea",
        "Landroid/graphics/Rect;",
        "processInput",
        "data",
        "",
        "offset",
        "length",
        "release",
        "start",
        "stop",
        "surfaceChanged",
        "p0",
        "Landroid/view/SurfaceHolder;",
        "p1",
        "p2",
        "p3",
        "surfaceCreated",
        "surfaceDestroyed",
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
.field private final decoder:Lcom/kelocube/mirrorclient/Decoder;

.field private haveConfig:Z

.field private haveSurface:Z

.field private height:I

.field private final layout:Landroid/view/ViewGroup;

.field private lowLatency:Z

.field private final view:Landroid/view/SurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/VideoStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->layout:Landroid/view/ViewGroup;

    .line 17
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    .line 18
    sget-object v1, Lcom/kelocube/mirrorclient/App;->Companion:Lcom/kelocube/mirrorclient/App$Companion;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/App$Companion;->getInstance()Lcom/kelocube/mirrorclient/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/App;->getTestId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/kelocube/mirrorclient/AsyncDecoder;

    invoke-direct {v1}, Lcom/kelocube/mirrorclient/AsyncDecoder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/kelocube/mirrorclient/SyncDecoder;

    invoke-direct {v1}, Lcom/kelocube/mirrorclient/SyncDecoder;-><init>()V

    :goto_0
    check-cast v1, Lcom/kelocube/mirrorclient/Decoder;

    iput-object v1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    .line 27
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 28
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    new-instance p1, Lcom/kelocube/mirrorclient/YUVVideoStream$1;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/YUVVideoStream$1;-><init>(Lcom/kelocube/mirrorclient/YUVVideoStream;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, p1}, Lcom/kelocube/mirrorclient/Decoder;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 34
    new-instance p1, Lcom/kelocube/mirrorclient/YUVVideoStream$2;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/YUVVideoStream$2;-><init>(Lcom/kelocube/mirrorclient/YUVVideoStream;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, p1}, Lcom/kelocube/mirrorclient/Decoder;->setOnFrame(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final start()V
    .locals 4

    .line 67
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->haveSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->haveConfig:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const-string v2, "getSurface(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->width:I

    iget v3, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/kelocube/mirrorclient/Decoder;->start(Landroid/view/Surface;II)V

    .line 69
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Decoder;->getUnsupportedResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kelocube/mirrorclient/R$string;->session_unsupported_decoder_resolution:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public configure(IIZ)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->width:I

    .line 54
    iput p2, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->height:I

    .line 55
    iput-boolean p3, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->lowLatency:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->haveConfig:Z

    .line 58
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/YUVVideoStream;->start()V

    return-void
.end method

.method public layout(Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "activeArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 63
    iget-object p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->bringToFront()V

    return-void
.end method

.method public processInput([BII)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kelocube/mirrorclient/Decoder;->processInput([BII)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Decoder;->release()V

    .line 41
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->decoder:Lcom/kelocube/mirrorclient/Decoder;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Decoder;->stop()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->view:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapInterval(Landroid/opengl/EGLDisplay;I)Z

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->haveSurface:Z

    .line 84
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/YUVVideoStream;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/YUVVideoStream;->stop()V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/YUVVideoStream;->haveSurface:Z

    return-void
.end method
