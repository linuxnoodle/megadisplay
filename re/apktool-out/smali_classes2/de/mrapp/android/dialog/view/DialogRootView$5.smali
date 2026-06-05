.class Lde/mrapp/android/dialog/view/DialogRootView$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DialogRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/DialogRootView;->createRecyclerViewScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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

    .line 910
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$5;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 921
    iget-object p2, p0, Lde/mrapp/android/dialog/view/DialogRootView$5;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {p2, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$500(Lde/mrapp/android/dialog/view/DialogRootView;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p3

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$5;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 922
    invoke-static {v0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$600(Lde/mrapp/android/dialog/view/DialogRootView;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    const/4 v0, 0x1

    .line 921
    invoke-static {p2, p3, p1, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->access$200(Lde/mrapp/android/dialog/view/DialogRootView;ZZZ)V

    return-void
.end method
