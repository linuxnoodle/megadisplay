.class Lde/mrapp/android/dialog/view/DialogRootView$3;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewScrollListener()Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;
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

    .line 865
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$3;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(ZZ)V
    .locals 2

    .line 869
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$3;->this$0:Lde/mrapp/android/dialog/view/DialogRootView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->access$200(Lde/mrapp/android/dialog/view/DialogRootView;ZZZ)V

    return-void
.end method
