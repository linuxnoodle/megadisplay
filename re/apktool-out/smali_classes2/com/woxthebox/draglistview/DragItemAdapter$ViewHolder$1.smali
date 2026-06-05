.class Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "DragItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    iput-object p2, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->access$000(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->access$000(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    iget-wide v3, v3, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mItemId:J

    invoke-interface {v0, v2, v3, v4}, Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;->startDrag(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->val$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    iget-object v2, v2, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-ne v0, v2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;->this$0:Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->onItemLongClicked(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method
