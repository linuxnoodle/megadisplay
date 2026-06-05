.class Lde/mrapp/android/dialog/view/DialogRootView$1;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewLayoutListener(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/view/DialogRootView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$1;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    iput-object p2, p0, Lde/mrapp/android/dialog/view/DialogRootView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 576
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lde/mrapp/android/util/ViewUtil;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 577
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$1;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {v0}, Lde/mrapp/android/dialog/view/DialogRootView;->access$000(Lde/mrapp/android/dialog/view/DialogRootView;)V

    return-void
.end method
