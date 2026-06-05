.class Lcom/woxthebox/draglistview/BoardView$4;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/BoardView;->addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/BoardView;

.field final synthetic val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iput-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnded(I)V
    .locals 5

    .line 963
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/woxthebox/draglistview/BoardView;->access$1202(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 964
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0, v1}, Lcom/woxthebox/draglistview/BoardView;->access$1302(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 965
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$900(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v2}, Lcom/woxthebox/draglistview/BoardView;->access$1000(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v2

    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object v4, p0, Lcom/woxthebox/draglistview/BoardView$4;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v3, v4}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onItemDragEnded(IIII)V

    :cond_0
    return-void
.end method

.method public onDragStarted(IFF)V
    .locals 0

    .line 940
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p2, p3}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/woxthebox/draglistview/BoardView;->access$902(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 941
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p2, p1}, Lcom/woxthebox/draglistview/BoardView;->access$1002(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 942
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p1, p2}, Lcom/woxthebox/draglistview/BoardView;->access$602(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 943
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$1100(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;

    move-result-object p1

    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p2}, Lcom/woxthebox/draglistview/BoardView;->access$600(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/BoardView;->access$600(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/woxthebox/draglistview/DragItem;->setOffset(FF)V

    .line 944
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 945
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object p1

    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p2}, Lcom/woxthebox/draglistview/BoardView;->access$900(Lcom/woxthebox/draglistview/BoardView;)I

    move-result p2

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/BoardView;->access$1000(Lcom/woxthebox/draglistview/BoardView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onItemDragStarted(II)V

    .line 947
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/BoardView;->invalidate()V

    return-void
.end method

.method public onDragging(IFF)V
    .locals 2

    .line 952
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p2, p3}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p2

    .line 953
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/BoardView;->access$1200(Lcom/woxthebox/draglistview/BoardView;)I

    move-result p3

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/BoardView;->access$1300(Lcom/woxthebox/draglistview/BoardView;)I

    move-result p3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 954
    :goto_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 955
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3, p2}, Lcom/woxthebox/draglistview/BoardView;->access$1202(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 956
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3, p1}, Lcom/woxthebox/draglistview/BoardView;->access$1302(Lcom/woxthebox/draglistview/BoardView;I)I

    .line 957
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/BoardView;->access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;

    move-result-object p3

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/BoardView;->access$900(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v0

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$4;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$1000(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v1

    invoke-interface {p3, v0, v1, p2, p1}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onItemChangedPosition(IIII)V

    :cond_2
    return-void
.end method
