.class Lcom/woxthebox/draglistview/BoardView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/BoardView;->endDragColumn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/BoardView;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/BoardView;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 794
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$300(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItem;->getRealDragView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 795
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$300(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItem;->hide()V

    .line 796
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$400(Lcom/woxthebox/draglistview/BoardView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$300(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 798
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 799
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object p1

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$2;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$600(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onColumnDragEnded(I)V

    :cond_0
    return-void
.end method
