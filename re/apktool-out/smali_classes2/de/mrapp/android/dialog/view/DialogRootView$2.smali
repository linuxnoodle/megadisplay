.class Lde/mrapp/android/dialog/view/DialogRootView$2;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewChildLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/view/DialogRootView;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/view/DialogRootView;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 837
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {v0}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 839
    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {v2}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/dialog/view/ScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {v3}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 840
    invoke-static {v3}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_0

    .line 843
    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 844
    invoke-static {v2}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/dialog/view/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 845
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 846
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 847
    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView$2;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {v1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/dialog/view/ScrollView;->requestLayout()V

    .line 850
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lde/mrapp/android/util/ViewUtil;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
