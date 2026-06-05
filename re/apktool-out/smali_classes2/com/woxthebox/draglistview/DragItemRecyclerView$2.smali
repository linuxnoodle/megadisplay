.class Lcom/woxthebox/draglistview/DragItemRecyclerView$2;
.super Ljava/lang/Object;
.source "DragItemRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$300(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$500(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItem;

    move-result-object v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/woxthebox/draglistview/DragItemRecyclerView$2$1;

    invoke-direct {v3, p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView$2$1;-><init>(Lcom/woxthebox/draglistview/DragItemRecyclerView$2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/woxthebox/draglistview/DragItem;->endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$400(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    :goto_0
    return-void
.end method
