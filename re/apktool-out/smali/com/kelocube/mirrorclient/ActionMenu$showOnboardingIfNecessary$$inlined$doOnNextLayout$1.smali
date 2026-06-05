.class public final Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ActionMenu;->showOnboardingIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 ActionMenu.kt\ncom/kelocube/mirrorclient/ActionMenu\n*L\n1#1,414:1\n325#2,7:415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release"
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
.field final synthetic $binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu;


# direct methods
.method public constructor <init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 49
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 415
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 416
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p2}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getRootBounds(Landroid/graphics/RectF;)V

    .line 417
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p3}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 418
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p3}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    add-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 419
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 420
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;->$binding$inlined:Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    invoke-virtual {p3}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBottom(I)V

    return-void
.end method
