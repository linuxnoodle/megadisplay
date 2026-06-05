.class Lcom/woxthebox/draglistview/BoardView$5;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;


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

    .line 970
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iput-object p2, p0, Lcom/woxthebox/draglistview/BoardView$5;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDragItemAtPosition(I)Z
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0, v1}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v0

    .line 974
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$1400(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$1400(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/woxthebox/draglistview/BoardView$BoardCallback;->canDragItemAtPosition(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public canDropItemAtPosition(I)Z
    .locals 4

    .line 979
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0, v1}, Lcom/woxthebox/draglistview/BoardView;->access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$1400(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/BoardView;->access$1400(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v2}, Lcom/woxthebox/draglistview/BoardView;->access$900(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v2

    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView$5;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v3}, Lcom/woxthebox/draglistview/BoardView;->access$1000(Lcom/woxthebox/draglistview/BoardView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/woxthebox/draglistview/BoardView$BoardCallback;->canDropItemAtPosition(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
