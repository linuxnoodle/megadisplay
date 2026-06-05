.class public Lcom/maltaisn/icondialog/pack/IconDrawableLoader;
.super Ljava/lang/Object;
.source "IconDrawableLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u0016\u0010\u0002\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/pack/IconDrawableLoader;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "kotlin.jvm.PlatformType",
        "loadDrawable",
        "",
        "icon",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "Companion",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final BIN_XML_END:[S

.field private static final BIN_XML_START:[S

.field public static final Companion:Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->Companion:Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;

    .line 90
    const-string v0, "IconDrawableLoader::class.java.simpleName"

    const-string v1, "IconDrawableLoader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->TAG:Ljava/lang/String;

    const/16 v0, 0xd2

    .line 110
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    .line 92
    sput-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->BIN_XML_START:[S

    const/16 v0, 0x110

    .line 135
    new-array v0, v0, [S

    fill-array-data v0, :array_1

    .line 112
    sput-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->BIN_XML_END:[S

    return-void

    :array_0
    .array-data 2
        0x3s
        0x0s
        0x8s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x0s
        0x1cs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xas
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x0s
        0x0s
        0x44s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x9s
        0x0s
        0x0s
        0x0s
        0x11s
        0x0s
        0x0s
        0x0s
        0x21s
        0x0s
        0x0s
        0x0s
        0x32s
        0x0s
        0x0s
        0x0s
        0x3es
        0x0s
        0x0s
        0x0s
        0x49s
        0x0s
        0x0s
        0x0s
        0x76s
        0x0s
        0x0s
        0x0s
        0x7ds
        0x0s
        0x0s
        0x0s
        0x86s
        0x0s
        0x0s
        0x0s
        0x6s
        0x6s
        0x68s
        0x65s
        0x69s
        0x67s
        0x68s
        0x74s
        0x0s
        0x5s
        0x5s
        0x77s
        0x69s
        0x64s
        0x74s
        0x68s
        0x0s
        0xds
        0xds
        0x76s
        0x69s
        0x65s
        0x77s
        0x70s
        0x6fs
        0x72s
        0x74s
        0x57s
        0x69s
        0x64s
        0x74s
        0x68s
        0x0s
        0xes
        0xes
        0x76s
        0x69s
        0x65s
        0x77s
        0x70s
        0x6fs
        0x72s
        0x74s
        0x48s
        0x65s
        0x69s
        0x67s
        0x68s
        0x74s
        0x0s
        0x9s
        0x9s
        0x66s
        0x69s
        0x6cs
        0x6cs
        0x43s
        0x6fs
        0x6cs
        0x6fs
        0x72s
        0x0s
        0x8s
        0x8s
        0x70s
        0x61s
        0x74s
        0x68s
        0x44s
        0x61s
        0x74s
        0x61s
        0x0s
        0x2as
        0x2as
        0x68s
        0x74s
        0x74s
        0x70s
        0x3as
        0x2fs
        0x2fs
        0x73s
        0x63s
        0x68s
        0x65s
        0x6ds
        0x61s
        0x73s
        0x2es
        0x61s
        0x6es
        0x64s
        0x72s
        0x6fs
        0x69s
        0x64s
        0x2es
        0x63s
        0x6fs
        0x6ds
        0x2fs
        0x61s
        0x70s
        0x6bs
        0x2fs
        0x72s
        0x65s
        0x73s
        0x2fs
        0x61s
        0x6es
        0x64s
        0x72s
        0x6fs
        0x69s
        0x64s
        0x0s
        0x4s
        0x4s
        0x70s
        0x61s
        0x74s
        0x68s
        0x0s
        0x6s
        0x6s
        0x76s
        0x65s
        0x63s
        0x74s
        0x6fs
        0x72s
        0x0s
    .end array-data

    :array_1
    .array-data 2
        0x80s
        0x1s
        0x8s
        0x0s
        0x20s
        0x0s
        0x0s
        0x0s
        0x55s
        0x1s
        0x1s
        0x1s
        0x59s
        0x1s
        0x1s
        0x1s
        0x2s
        0x4s
        0x1s
        0x1s
        0x3s
        0x4s
        0x1s
        0x1s
        0x4s
        0x4s
        0x1s
        0x1s
        0x5s
        0x4s
        0x1s
        0x1s
        0x2s
        0x1s
        0x10s
        0x0s
        0x74s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x0s
        0x14s
        0x0s
        0x14s
        0x0s
        0x4s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x6s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x5s
        0x1s
        0x18s
        0x0s
        0x0s
        0x6s
        0x0s
        0x0s
        0x0s
        0x1s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x5s
        0x1s
        0x18s
        0x0s
        0x0s
        0x6s
        0x0s
        0x0s
        0x0s
        0x2s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x4s
        0x0s
        0x0s
        0x0s
        0x0s
        0x6s
        0x0s
        0x0s
        0x0s
        0x3s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x4s
        0x0s
        0x0s
        0x0s
        0x0s
        0x2s
        0x1s
        0x10s
        0x0s
        0x4cs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0x7s
        0x0s
        0x0s
        0x0s
        0x14s
        0x0s
        0x14s
        0x0s
        0x2s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x6s
        0x0s
        0x0s
        0x0s
        0x4s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x1ds
        0x0s
        0x0s
        0x0s
        0xffs
        0x6s
        0x0s
        0x0s
        0x0s
        0x5s
        0x0s
        0x0s
        0x0s
        0x9s
        0x0s
        0x0s
        0x0s
        0x8s
        0x0s
        0x0s
        0x3s
        0x9s
        0x0s
        0x0s
        0x0s
        0x3s
        0x1s
        0x10s
        0x0s
        0x18s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0x7s
        0x0s
        0x0s
        0x0s
        0x3s
        0x1s
        0x10s
        0x0s
        0x18s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0xffs
        0x8s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getBIN_XML_END$cp()[S
    .locals 1

    .line 37
    sget-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->BIN_XML_END:[S

    return-object v0
.end method

.method public static final synthetic access$getBIN_XML_START$cp()[S
    .locals 1

    .line 37
    sget-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->BIN_XML_START:[S

    return-object v0
.end method


# virtual methods
.method public final loadDrawable(Lcom/maltaisn/icondialog/data/Icon;)V
    .locals 9

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getSrcId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "context"

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getSrcId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 56
    :cond_1
    sget-object v0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->Companion:Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getPathData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getHeight()I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;->access$createDrawableBinaryXml(Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;Ljava/lang/String;II)[B

    move-result-object v0

    .line 60
    :try_start_0
    const-string v3, "android.content.res.XmlBlock"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Class.forName(\"android.content.res.XmlBlock\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 61
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [B

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v6, "xmlBlock.getConstructor(ByteArray::class.java)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v6, "newParser"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v6, "xmlBlock.getDeclaredMethod(\"newParser\")"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 67
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    .line 68
    iget-object v1, p0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 72
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    :goto_0
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 74
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 76
    :cond_3
    iget-object v4, p0, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v3, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-virtual {p1, v0}, Lcom/maltaisn/icondialog/data/Icon;->setDrawable$lib_release(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 65
    :cond_4
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.xmlpull.v1.XmlPullParser"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create vector drawable for icon ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
