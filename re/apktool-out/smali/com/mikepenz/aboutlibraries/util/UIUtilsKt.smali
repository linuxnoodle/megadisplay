.class public final Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;
.super Ljava/lang/Object;
.source "UIUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a$\u0010\u0007\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0001\u001a\u001a\u0010\n\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a\u001a\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0001\u001a$\u0010\u000c\u001a\u00020\u0005*\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0001\u001a\u0018\u0010\r\u001a\u00020\u0005*\u00020\u00032\n\u0010\u000e\u001a\u00020\u000f\"\u00020\tH\u0001\u001a\u0016\u0010\u0010\u001a\u00020\t*\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\tH\u0001\u001a\u0014\u0010\u0013\u001a\u00020\t*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\tH\u0000\u001a \u0010\u0013\u001a\u00020\t*\u00020\u00112\u0008\u0008\u0001\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0003\u0010\u0015\u001a\u00020\tH\u0007\u001a\u000c\u0010\u0016\u001a\u00020\u0005*\u00020\u0003H\u0001\u001aX\u0010\u0017\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u0018*\u00020\u00112\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\t2!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u0002H\u00180\u001dH\u0000\u00a2\u0006\u0002\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "recordInitialPaddingForView",
        "Lcom/mikepenz/aboutlibraries/util/InitialPadding;",
        "view",
        "Landroid/view/View;",
        "applyDarkEdgeSystemUi",
        "",
        "Landroid/app/Activity;",
        "applyDarkSystemUi",
        "additionalFlags",
        "",
        "applyEdgeSystemUi",
        "applyLightEdgeSystemUi",
        "applyLightSystemUi",
        "doOnApplySystemWindowInsets",
        "gravities",
        "",
        "getSupportColor",
        "Landroid/content/Context;",
        "res",
        "getThemeColor",
        "attr",
        "def",
        "requestApplyInsetsWhenAttached",
        "resolveStyledValue",
        "T",
        "attrs",
        "defStyleAttr",
        "defStyleRes",
        "resolver",
        "Lkotlin/Function1;",
        "Landroid/content/res/TypedArray;",
        "Lkotlin/ParameterName;",
        "name",
        "typedArray",
        "(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "aboutlibraries"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final applyDarkEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x700

    .line 116
    invoke-static {p0, p1, v0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyDarkSystemUi(Landroid/app/Activity;Landroid/view/View;I)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "this.window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/mikepenz/aboutlibraries/R$color;->dark_immersive_bars:I

    invoke-static {v1, v2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/mikepenz/aboutlibraries/R$color;->dark_nav_bar:I

    invoke-static {v1, v2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 121
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/mikepenz/aboutlibraries/R$color;->dark_nav_bar:I

    invoke-static {v1, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public static synthetic applyDarkEdgeSystemUi$default(Landroid/app/Activity;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 113
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-static {p0, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyDarkEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static final applyDarkSystemUi(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 6

    if-eqz p0, :cond_4

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 71
    const-string v0, "window.decorView"

    const-string v1, "window"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    :goto_0
    and-int/lit16 v3, v2, -0x2001

    .line 73
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    and-int/lit16 v3, v2, -0x2011

    :cond_1
    or-int/2addr p2, v3

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    :cond_3
    new-instance p1, Landroid/view/ContextThemeWrapper;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    sget v0, Lcom/mikepenz/aboutlibraries/R$style;->Theme_MaterialComponents:I

    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "this.window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    sget v1, Lcom/mikepenz/aboutlibraries/R$attr;->colorSurface:I

    invoke-static {p1, v1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1010031

    invoke-static {p1, v1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 85
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_4

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x101042c

    invoke-static {p1, p2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_4
    return-void
.end method

.method public static synthetic applyDarkSystemUi$default(Landroid/app/Activity;Landroid/view/View;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 68
    move-object p4, p1

    check-cast p4, Landroid/view/View;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyDarkSystemUi(Landroid/app/Activity;Landroid/view/View;I)V

    return-void
.end method

.method public static final applyEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 137
    invoke-static {p0, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyLightEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {p0, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyDarkEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic applyEdgeSystemUi$default(Landroid/app/Activity;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 132
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-static {p0, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static final applyLightEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x700

    .line 99
    invoke-static {p0, p1, v0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyLightSystemUi(Landroid/app/Activity;Landroid/view/View;I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "this.window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/mikepenz/aboutlibraries/R$color;->immersive_bars:I

    invoke-static {v1, v2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/mikepenz/aboutlibraries/R$color;->nav_bar:I

    invoke-static {v1, v2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 102
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/mikepenz/aboutlibraries/R$color;->nav_bar:I

    invoke-static {v1, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_0
    return-void
.end method

.method public static synthetic applyLightEdgeSystemUi$default(Landroid/app/Activity;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 96
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-static {p0, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyLightEdgeSystemUi(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static final applyLightSystemUi(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 6

    if-eqz p0, :cond_4

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 43
    const-string v0, "window.decorView"

    const-string v1, "window"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    :goto_0
    or-int/lit16 v3, v2, 0x2000

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    or-int/lit16 v3, v2, 0x2010

    :cond_1
    or-int/2addr p2, v3

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 54
    :cond_3
    new-instance p1, Landroid/view/ContextThemeWrapper;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    sget v0, Lcom/mikepenz/aboutlibraries/R$style;->Theme_MaterialComponents_Light:I

    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "this.window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    sget v1, Lcom/mikepenz/aboutlibraries/R$attr;->colorSurface:I

    invoke-static {p1, v1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x1010031

    invoke-static {p1, v1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 57
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_4

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x101042c

    invoke-static {p1, p2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_4
    return-void
.end method

.method public static synthetic applyLightSystemUi$default(Landroid/app/Activity;Landroid/view/View;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 39
    move-object p4, p1

    check-cast p4, Landroid/view/View;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->applyLightSystemUi(Landroid/app/Activity;Landroid/view/View;I)V

    return-void
.end method

.method public static final varargs doOnApplySystemWindowInsets(Landroid/view/View;[I)V
    .locals 2

    const-string v0, "$this$doOnApplySystemWindowInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gravities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->recordInitialPaddingForView(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;

    invoke-direct {v1, p1, v0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;-><init>([ILcom/mikepenz/aboutlibraries/util/InitialPadding;)V

    check-cast v1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 193
    invoke-static {p0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    return-void
.end method

.method public static final getSupportColor(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "$this$getSupportColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final getThemeColor(Landroid/content/Context;I)I
    .locals 3

    const-string v0, "$this$getThemeColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 25
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 27
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getThemeColor(Landroid/content/Context;II)I
    .locals 3

    const-string v0, "$this$getThemeColor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, v0, Landroid/util/TypedValue;->data:I

    :cond_1
    :goto_0
    return p2
.end method

.method public static synthetic getThemeColor$default(Landroid/content/Context;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 236
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static final recordInitialPaddingForView(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/util/InitialPadding;
    .locals 4

    .line 155
    new-instance v0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mikepenz/aboutlibraries/util/InitialPadding;-><init>(IIII)V

    return-object v0
.end method

.method public static final requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .locals 1

    const-string v0, "$this$requestApplyInsetsWhenAttached"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$requestApplyInsetsWhenAttached$1;

    invoke-direct {v0}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$requestApplyInsetsWhenAttached$1;-><init>()V

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public static final resolveStyledValue(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "[III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/res/TypedArray;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$resolveStyledValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 225
    const-string p1, "a"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method public static synthetic resolveStyledValue$default(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 223
    sget-object p1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries:[I

    const-string p6, "R.styleable.AboutLibraries"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget p2, Lcom/mikepenz/aboutlibraries/R$attr;->aboutLibrariesStyle:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    sget p3, Lcom/mikepenz/aboutlibraries/R$style;->AboutLibrariesStyle:I

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->resolveStyledValue(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
