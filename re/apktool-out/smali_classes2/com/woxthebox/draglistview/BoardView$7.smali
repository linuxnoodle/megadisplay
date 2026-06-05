.class Lcom/woxthebox/draglistview/BoardView$7;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/BoardView;->setupColumnDragListener(Landroid/view/View;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V
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

    .line 1026
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView$7;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iput-object p2, p0, Lcom/woxthebox/draglistview/BoardView$7;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1029
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$7;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView$7;->val$recyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$1700(Lcom/woxthebox/draglistview/BoardView;)F

    move-result v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView$7;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {v2}, Lcom/woxthebox/draglistview/BoardView;->access$1800(Lcom/woxthebox/draglistview/BoardView;)F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/woxthebox/draglistview/BoardView;->access$1900(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;FF)V

    const/4 p1, 0x1

    return p1
.end method
