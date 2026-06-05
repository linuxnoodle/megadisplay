.class Lcom/woxthebox/draglistview/DragListView$1;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/DragListView;->createRecyclerView()Lcom/woxthebox/draglistview/DragItemRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragStartPosition:I

.field final synthetic this$0:Lcom/woxthebox/draglistview/DragListView;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/DragListView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnded(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object v0

    iget v1, p0, Lcom/woxthebox/draglistview/DragListView$1;->mDragStartPosition:I

    invoke-interface {v0, v1, p1}, Lcom/woxthebox/draglistview/DragListView$DragListListener;->onItemDragEnded(II)V

    :cond_0
    return-void
.end method

.method public onDragStarted(IFF)V
    .locals 0

    .line 144
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {p2}, Lcom/woxthebox/draglistview/DragListView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    iput p1, p0, Lcom/woxthebox/draglistview/DragListView$1;->mDragStartPosition:I

    .line 146
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {p2}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {p2}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/woxthebox/draglistview/DragListView$DragListListener;->onItemDragStarted(I)V

    :cond_0
    return-void
.end method

.method public onDragging(IFF)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView$1;->this$0:Lcom/woxthebox/draglistview/DragListView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragListView;->access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/woxthebox/draglistview/DragListView$DragListListener;->onItemDragging(IFF)V

    :cond_0
    return-void
.end method
