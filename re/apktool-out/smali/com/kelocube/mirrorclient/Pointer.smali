.class public final Lcom/kelocube/mirrorclient/Pointer;
.super Ljava/lang/Object;
.source "Pointer.kt"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/Pointer$PointerShape;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pointer.kt\ncom/kelocube/mirrorclient/Pointer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,332:1\n1#2:333\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001NB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u00109\u001a\u00020 2\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008J\u000e\u0010:\u001a\u00020 2\u0006\u0010;\u001a\u00020<J\u000e\u0010;\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010=\u001a\u00020 2\u0006\u0010>\u001a\u00020?J\u0012\u0010@\u001a\u00020 2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u000e\u0010C\u001a\u00020 2\u0006\u0010D\u001a\u00020EJ\u000e\u0010F\u001a\u00020 2\u0006\u0010D\u001a\u00020EJ \u0010G\u001a\u00020 2\u0006\u0010H\u001a\u00020B2\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u0008H\u0016J\u001c\u0010K\u001a\u00020 2\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0012*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R5\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 0\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u000e\u0010%\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u00102\u001a\u000203\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u000e\u00106\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Pointer;",
        "Landroid/opengl/GLSurfaceView$Renderer;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "activeArea",
        "Landroid/graphics/Rect;",
        "attrVertex",
        "",
        "cHeight",
        "cWidth",
        "frag",
        "h2w",
        "",
        "hHeight",
        "hWidth",
        "imageData",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "lz4",
        "Lnet/jpountz/lz4/LZ4FastDecompressor;",
        "m1",
        "m2",
        "mTransform",
        "newShape",
        "Lcom/kelocube/mirrorclient/Pointer$PointerShape;",
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
        "program",
        "shape",
        "shapeLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "texHeight",
        "texWidth",
        "textureId",
        "updateTexture",
        "",
        "vert",
        "vertData",
        "vertexBuffer",
        "Ljava/nio/FloatBuffer;",
        "view",
        "Landroid/opengl/GLSurfaceView;",
        "getView",
        "()Landroid/opengl/GLSurfaceView;",
        "w2c",
        "x",
        "y",
        "configure",
        "inflate",
        "layout",
        "Landroid/view/ViewGroup;",
        "onCropChanged",
        "crop",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;",
        "onDrawFrame",
        "p0",
        "Ljavax/microedition/khronos/opengles/GL10;",
        "onMoveData",
        "data",
        "Lcom/kelocube/mirrorclient/Transport$Data;",
        "onShapeData",
        "onSurfaceChanged",
        "unused",
        "width",
        "height",
        "onSurfaceCreated",
        "p1",
        "Ljavax/microedition/khronos/egl/EGLConfig;",
        "PointerShape",
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
.field private activeArea:Landroid/graphics/Rect;

.field private attrVertex:I

.field private cHeight:I

.field private cWidth:I

.field private frag:I

.field private h2w:[F

.field private hHeight:I

.field private hWidth:I

.field private imageData:Ljava/nio/ByteBuffer;

.field private final lz4:Lnet/jpountz/lz4/LZ4FastDecompressor;

.field private m1:[F

.field private m2:[F

.field private volatile mTransform:[F

.field private newShape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

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

.field private program:I

.field private shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

.field private shapeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private texHeight:I

.field private texWidth:I

.field private textureId:I

.field private updateTexture:Z

.field private vert:I

.field private vertData:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final view:Landroid/opengl/GLSurfaceView;

.field private w2c:[F

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    .line 50
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestJavaInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor()Lnet/jpountz/lz4/LZ4FastDecompressor;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->lz4:Lnet/jpountz/lz4/LZ4FastDecompressor;

    const/4 p1, 0x0

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    .line 53
    new-instance v1, Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    .line 56
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->shapeLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v1, 0x10

    .line 57
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->mTransform:[F

    .line 58
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->h2w:[F

    .line 59
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->w2c:[F

    .line 60
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    .line 61
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->m2:[F

    const/16 v1, 0x14

    .line 62
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    .line 72
    sget-object v1, Lcom/kelocube/mirrorclient/Pointer$onError$1;->INSTANCE:Lcom/kelocube/mirrorclient/Pointer$onError$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->onError:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, v0

    .line 91
    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 92
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 109
    move-object v1, p0

    check-cast v1, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public final configure(IIII)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 134
    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer;->cWidth:I

    .line 135
    iput p2, p0, Lcom/kelocube/mirrorclient/Pointer;->cHeight:I

    .line 136
    iput p3, p0, Lcom/kelocube/mirrorclient/Pointer;->hWidth:I

    .line 137
    iput p4, p0, Lcom/kelocube/mirrorclient/Pointer;->hHeight:I

    .line 140
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    int-to-float v2, p4

    div-float v3, v1, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v4, p1, p2

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    div-float/2addr v2, v0

    div-float/2addr v2, p2

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    div-float v2, v1, p1

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->h2w:[F

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 150
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->h2w:[F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    invoke-static {v1, v3, v0, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 151
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->h2w:[F

    neg-int p3, p3

    int-to-float p3, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    neg-int p4, p4

    int-to-float p4, p4

    div-float/2addr p4, v1

    const/4 v5, 0x0

    invoke-static {v0, v3, p3, p4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 153
    iget-object p3, p0, Lcom/kelocube/mirrorclient/Pointer;->w2c:[F

    invoke-static {p3, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 155
    iget-object p3, p0, Lcom/kelocube/mirrorclient/Pointer;->w2c:[F

    mul-float p1, p1, v2

    div-float/2addr v1, p1

    const/high16 p1, -0x40000000    # -2.0f

    mul-float p2, p2, v2

    div-float/2addr p1, p2

    invoke-static {p3, v3, v1, p1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 157
    new-instance p1, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-direct {p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/Pointer;->onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V

    return-void
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

    .line 72
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public final inflate(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final layout(Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "activeArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->activeArea:Landroid/graphics/Rect;

    .line 122
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/opengl/GLSurfaceView;->layout(IIII)V

    .line 123
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->bringToFront()V

    return-void
.end method

.method public final onCropChanged(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "crop"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 163
    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    invoke-virtual/range {p1 .. p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getY()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 164
    iget-object v7, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    invoke-virtual/range {p1 .. p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getT()F

    move-result v1

    const/high16 v4, 0x43340000    # 180.0f

    mul-float v1, v1, v4

    const v4, 0x40490fdb    # (float)Math.PI

    div-float v9, v1, v4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 165
    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    invoke-virtual/range {p1 .. p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getA()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getA()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 167
    iget-object v6, v0, Lcom/kelocube/mirrorclient/Pointer;->m2:[F

    iget-object v8, v0, Lcom/kelocube/mirrorclient/Pointer;->w2c:[F

    iget-object v10, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 168
    iget-object v12, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    iget-object v14, v0, Lcom/kelocube/mirrorclient/Pointer;->m2:[F

    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->h2w:[F

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 171
    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    iget-object v2, v0, Lcom/kelocube/mirrorclient/Pointer;->mTransform:[F

    iput-object v2, v0, Lcom/kelocube/mirrorclient/Pointer;->m1:[F

    iput-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->mTransform:[F

    .line 172
    iget-object v1, v0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 245
    :try_start_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->shapeLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->newShape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    const/4 v1, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    .line 248
    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->newShape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    const/4 v4, 0x1

    .line 250
    iput-boolean v4, p0, Lcom/kelocube/mirrorclient/Pointer;->updateTexture:Z

    .line 252
    iget v5, p0, Lcom/kelocube/mirrorclient/Pointer;->texWidth:I

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v0

    if-lt v5, v0, :cond_0

    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer;->texHeight:I

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 254
    :cond_0
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 256
    iget v5, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 258
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 260
    iput v3, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    .line 263
    :cond_1
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 264
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iput v0, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    .line 266
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/kelocube/mirrorclient/Pointer;->texWidth:I

    .line 267
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/kelocube/mirrorclient/Pointer;->texHeight:I

    .line 269
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 270
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 271
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v4, 0x2600

    .line 272
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 273
    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 275
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget v7, p0, Lcom/kelocube/mirrorclient/Pointer;->texWidth:I

    iget v8, p0, Lcom/kelocube/mirrorclient/Pointer;->texHeight:I

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/Pointer;->updateTexture:Z

    if-eqz v0, :cond_3

    .line 281
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer;->textureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 282
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v9

    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    move-object v12, v0

    check-cast v12, Ljava/nio/Buffer;

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 285
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/16 p1, 0x4000

    .line 291
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 293
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->x:I

    const/16 v0, -0x8000

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    const/4 v2, 0x4

    if-ge p1, v2, :cond_4

    .line 296
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    iget v4, p0, Lcom/kelocube/mirrorclient/Pointer;->x:I

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHotSpotX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v5

    rem-int/lit8 v6, p1, 0x2

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v0

    .line 297
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    iget v2, p0, Lcom/kelocube/mirrorclient/Pointer;->y:I

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHotSpotY()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/16 v4, 0x11

    aput v2, v0, v4

    .line 298
    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    const/16 v0, 0x12

    const/4 v2, 0x0

    aput v2, v5, v0

    const/16 v0, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    .line 299
    aput v2, v5, v0

    mul-int/lit8 v0, p1, 0x4

    .line 301
    iget-object v7, p0, Lcom/kelocube/mirrorclient/Pointer;->mTransform:[F

    iget-object v9, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    const/16 v10, 0x10

    const/4 v8, 0x0

    move v6, v0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 303
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    add-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v5

    rem-int/lit8 v6, p1, 0x2

    mul-int v5, v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/kelocube/mirrorclient/Pointer;->texWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v2, v4

    .line 304
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    add-int/lit8 v0, v0, 0x3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/Pointer;->shape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    mul-int v4, v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/kelocube/mirrorclient/Pointer;->texHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 308
    :cond_4
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->vertexBuffer:Ljava/nio/FloatBuffer;
    :try_end_2
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "vertexBuffer"

    if-nez p1, :cond_5

    :try_start_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->vertData:[F

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 309
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 314
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->attrVertex:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 315
    iget v5, p0, Lcom/kelocube/mirrorclient/Pointer;->attrVertex:I

    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, p1

    :goto_1
    move-object v10, v1

    check-cast v10, Ljava/nio/Buffer;

    const/4 v6, 0x4

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x5

    .line 318
    invoke-static {p1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 322
    :cond_8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    .line 323
    invoke-static {p1, v3}, Landroid/opengl/EGL14;->eglSwapInterval(Landroid/opengl/EGLDisplay;I)Z

    const/16 v0, 0x3059

    .line 324
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 245
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_3
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 328
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final onMoveData(Lcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/kelocube/mirrorclient/Pointer;->x:I

    .line 128
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer;->y:I

    .line 129
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final onShapeData(Lcom/kelocube/mirrorclient/Transport$Data;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    .line 177
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 178
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 179
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 180
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 176
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;-><init>(IIII)V

    .line 183
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v8, v1, 0x4

    .line 184
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v8, :cond_0

    mul-int/lit8 v1, v1, 0x8

    .line 185
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    .line 186
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/Pointer;->shapeLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/kelocube/mirrorclient/Pointer;->lz4:Lnet/jpountz/lz4/LZ4FastDecompressor;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v2
    :try_end_0
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 200
    :try_start_1
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/Transport$Data;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, v8

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->imageData:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iput-object v0, p0, Lcom/kelocube/mirrorclient/Pointer;->newShape:Lcom/kelocube/mirrorclient/Pointer$PointerShape;

    .line 205
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    .line 195
    :cond_1
    :try_start_2
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Invalid pointer shape data"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_2
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 197
    :catch_0
    :try_start_3
    new-instance p1, Lcom/kelocube/mirrorclient/AppException;

    const-string v3, "Invalid pointer shape data"

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/kelocube/mirrorclient/AppException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const-string v0, "unused"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 211
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 215
    const-string p1, "openRawResource(...)"

    .line 217
    :try_start_0
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/kelocube/mirrorclient/R$raw;->preview_vert:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x8b31

    invoke-static {v0, p2}, Lcom/kelocube/mirrorclient/UtilKt;->loadShader(ILjava/io/InputStream;)I

    move-result p2

    iput p2, p0, Lcom/kelocube/mirrorclient/Pointer;->vert:I

    .line 218
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Pointer;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p2}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/kelocube/mirrorclient/R$raw;->preview_frag:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x8b30

    invoke-static {p1, p2}, Lcom/kelocube/mirrorclient/UtilKt;->loadShader(ILjava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer;->frag:I

    .line 220
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer;->program:I

    .line 221
    iget p2, p0, Lcom/kelocube/mirrorclient/Pointer;->vert:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 222
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->program:I

    iget p2, p0, Lcom/kelocube/mirrorclient/Pointer;->frag:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 223
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 226
    iget p1, p0, Lcom/kelocube/mirrorclient/Pointer;->program:I

    const-string p2, "vertex"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer;->attrVertex:I

    const/16 p1, 0x40

    .line 229
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 230
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    const-string p2, "asFloatBuffer(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 234
    iget-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->shapeLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    .line 235
    :try_start_1
    iput-boolean p2, p0, Lcom/kelocube/mirrorclient/Pointer;->updateTexture:Z

    .line 236
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2
    :try_end_2
    .catch Lcom/kelocube/mirrorclient/AppException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 238
    iget-object p2, p0, Lcom/kelocube/mirrorclient/Pointer;->onError:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
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

    .line 72
    iput-object p1, p0, Lcom/kelocube/mirrorclient/Pointer;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method
