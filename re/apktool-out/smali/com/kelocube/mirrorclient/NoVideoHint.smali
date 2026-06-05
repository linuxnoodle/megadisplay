.class public final Lcom/kelocube/mirrorclient/NoVideoHint;
.super Ljava/lang/Object;
.source "NoVideoHint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0002\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\nH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/NoVideoHint;",
        "",
        "layout",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "anim",
        "Landroid/view/animation/AlphaAnimation;",
        "handler",
        "Landroid/os/Handler;",
        "haveVideo",
        "",
        "Ljava/lang/Boolean;",
        "onTimeout",
        "Ljava/lang/Runnable;",
        "view",
        "Landroid/view/View;",
        "",
        "setHaveVideo",
        "showHint",
        "show",
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
.field private final anim:Landroid/view/animation/AlphaAnimation;

.field private final handler:Landroid/os/Handler;

.field private haveVideo:Ljava/lang/Boolean;

.field private final layout:Landroid/view/ViewGroup;

.field private final onTimeout:Ljava/lang/Runnable;

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$t6PeSOGGdFmyZ0G2-BzUic1RHso(Lcom/kelocube/mirrorclient/NoVideoHint;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/NoVideoHint;->onTimeout$lambda$1(Lcom/kelocube/mirrorclient/NoVideoHint;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->layout:Landroid/view/ViewGroup;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->handler:Landroid/os/Handler;

    .line 15
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x7d0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 15
    iput-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->anim:Landroid/view/animation/AlphaAnimation;

    .line 20
    new-instance p1, Lcom/kelocube/mirrorclient/NoVideoHint$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/NoVideoHint$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/NoVideoHint;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->onTimeout:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/NoVideoHint;->setHaveVideo(Z)V

    return-void
.end method

.method private static final onTimeout$lambda$1(Lcom/kelocube/mirrorclient/NoVideoHint;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/NoVideoHint;->showHint(Z)V

    return-void
.end method

.method private final showHint(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->view:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/kelocube/mirrorclient/R$layout;->layout_no_video:I

    iget-object v2, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->view:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->view:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 37
    iget-object v0, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->anim:Landroid/view/animation/AlphaAnimation;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->view:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final layout()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public final setHaveVideo(Z)V
    .locals 3

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->haveVideo:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->haveVideo:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/NoVideoHint;->showHint(Z)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/NoVideoHint;->onTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
