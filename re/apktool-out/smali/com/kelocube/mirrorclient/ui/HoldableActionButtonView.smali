.class public final Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;
.super Lcom/kelocube/mirrorclient/ui/ActionButtonView;
.source "ActionButtonView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;",
        "Lcom/kelocube/mirrorclient/ui/ActionButtonView;",
        "context",
        "Landroid/content/Context;",
        "layout",
        "",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "touchFilter",
        "(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V",
        "onHeld",
        "Lkotlin/Function0;",
        "",
        "getOnHeld",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnHeld",
        "(Lkotlin/jvm/functions/Function0;)V",
        "releaseHold",
        "Ljava/lang/Runnable;",
        "onButtonTouch",
        "",
        "view",
        "Landroid/view/View;",
        "e",
        "Landroid/view/MotionEvent;",
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
.field private onHeld:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private releaseHold:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$vovQfQDo9PEONMKLpTHO-mDgR5E(Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold$lambda$0(Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V

    .line 118
    sget-object p1, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView$onHeld$1;->INSTANCE:Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView$onHeld$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->onHeld:Lkotlin/jvm/functions/Function0;

    .line 120
    new-instance p1, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold:Ljava/lang/Runnable;

    return-void
.end method

.method private static final releaseHold$lambda$0(Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setButtonDown(Z)V

    .line 122
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->onHeld:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getOnHeld()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->onHeld:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public onButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getOnTouch()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getButtonDown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setButtonDown(Z)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getButtonDown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p0, v0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setButtonDown(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->releaseHold:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    invoke-virtual {p0, p2}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setButtonDown(Z)V

    :cond_3
    :goto_0
    return p2
.end method

.method public final setOnHeld(Lkotlin/jvm/functions/Function0;)V
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

    .line 118
    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->onHeld:Lkotlin/jvm/functions/Function0;

    return-void
.end method
