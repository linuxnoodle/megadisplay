.class Lde/mrapp/android/dialog/view/DialogRootView$4;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/DialogRootView;->createListViewScrollListener()Landroid/widget/AbsListView$OnScrollListener;
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

    .line 884
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$4;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 894
    iget-object p2, p0, Lde/mrapp/android/dialog/view/DialogRootView$4;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-static {p2, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$300(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/widget/AbsListView;)Z

    move-result p3

    iget-object p4, p0, Lde/mrapp/android/dialog/view/DialogRootView$4;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 895
    invoke-static {p4, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$400(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/widget/AbsListView;)Z

    move-result p1

    const/4 p4, 0x1

    .line 894
    invoke-static {p2, p3, p1, p4}, Lde/mrapp/android/dialog/view/DialogRootView;->access$200(Lde/mrapp/android/dialog/view/DialogRootView;ZZZ)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
