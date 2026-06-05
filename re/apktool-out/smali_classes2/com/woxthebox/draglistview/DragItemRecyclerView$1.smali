.class Lcom/woxthebox/draglistview/DragItemRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DragItemRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/DragItemRecyclerView;->init()V
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

    .line 91
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method private drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$200(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$200(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemAdapter;->getDropTargetId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 110
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v2, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$200(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$200(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woxthebox/draglistview/DragItemAdapter;->getDropTargetId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 95
    iget-object p3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$000(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 101
    iget-object p3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->this$0:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-static {p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->access$100(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;->drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
