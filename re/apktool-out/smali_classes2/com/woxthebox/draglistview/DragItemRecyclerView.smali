.class public Lcom/woxthebox/draglistview/DragItemRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "DragItemRecyclerView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;,
        Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;,
        Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

.field private mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

.field private mCanNotDragAboveTop:Z

.field private mCanNotDragBelowBottom:Z

.field private mClipToPadding:Z

.field private mDisableReorderWhenDragging:Z

.field private mDragCallback:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;

.field private mDragEnabled:Z

.field private mDragItem:Lcom/woxthebox/draglistview/DragItem;

.field private mDragItemId:J

.field private mDragItemPosition:I

.field private mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

.field private mDropTargetBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDropTargetForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoldChangePosition:Z

.field private mListener:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;

.field private mScrollingEnabled:Z

.field private mStartY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object p1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mScrollingEnabled:Z

    .line 70
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    .line 74
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object p1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-wide/16 p1, -0x1

    .line 60
    iput-wide p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mScrollingEnabled:Z

    .line 70
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    .line 79
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object p1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-wide/16 p1, -0x1

    .line 60
    iput-wide p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mScrollingEnabled:Z

    .line 70
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    .line 84
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDropTargetBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDropTargetForegroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragItemAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItem;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    return-object p0
.end method

.method static synthetic access$602(Lcom/woxthebox/draglistview/DragItemRecyclerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mHoldChangePosition:Z

    return p1
.end method

.method private init()V
    .locals 2

    .line 88
    new-instance v0, Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/woxthebox/draglistview/AutoScroller;-><init>(Landroid/content/Context;Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    .line 89
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mTouchSlop:I

    .line 91
    new-instance v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView$1;-><init>(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private onDragItemAnimationEnd()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragItemId(J)V

    .line 468
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDropTargetId(J)V

    .line 469
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    .line 471
    sget-object v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    .line 472
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mListener:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;

    if-eqz v0, :cond_0

    .line 473
    iget v3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-interface {v0, v3}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;->onDragEnded(I)V

    .line 476
    :cond_0
    iput-wide v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    .line 477
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->hide()V

    const/4 v0, 0x1

    .line 478
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setEnabled(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->invalidate()V

    return-void
.end method

.method private shouldChangeItemPosition(I)Z
    .locals 3

    .line 271
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mHoldChangePosition:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragAboveTop:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragBelowBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_3

    :cond_2
    return v1

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragCallback:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;->canDropItemAtPosition(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private updateDragPositionAndScroll()V
    .locals 11

    .line 286
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->findChildView(FF)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v2, :cond_3

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v2

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v6, v2

    .line 299
    iget v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 300
    iget-object v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v2}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result v2

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v2}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result v2

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 303
    :goto_1
    iget-object v6, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v6}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    if-nez v2, :cond_3

    .line 304
    iget v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 309
    invoke-direct {p0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->shouldChangeItemPosition(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 310
    iget-boolean v5, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDisableReorderWhenDragging:Z

    if-eqz v5, :cond_4

    .line 311
    iget-object v5, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v5, v1}, Lcom/woxthebox/draglistview/DragItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDropTargetId(J)V

    .line 312
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    .line 315
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 316
    iget-object v7, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget v8, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-virtual {v7, v8, v1}, Lcom/woxthebox/draglistview/DragItemAdapter;->changeItemPosition(II)V

    .line 317
    iput v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    .line 320
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 321
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 322
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 324
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 325
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 332
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getPaddingTop()I

    move-result v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 333
    :goto_3
    iget-boolean v5, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getHeight()I

    move-result v5

    .line 334
    :goto_4
    iget-boolean v6, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getPaddingLeft()I

    move-result v6

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 335
    :goto_5
    iget-boolean v7, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mClipToPadding:Z

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getWidth()I

    move-result v7

    .line 336
    :goto_6
    iget-object v8, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v8}, Lcom/woxthebox/draglistview/DragItemAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 337
    invoke-virtual {p0, v3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    .line 340
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v10

    if-ne v10, v4, :cond_c

    if-eqz v8, :cond_b

    .line 341
    iget-object v6, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v6, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    if-eqz v9, :cond_e

    .line 344
    iget-object v6, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v6, v1, :cond_e

    goto :goto_9

    :cond_c
    if-eqz v8, :cond_d

    .line 348
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-gt v1, v7, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-eqz v9, :cond_e

    .line 351
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v1, v6, :cond_e

    :goto_9
    const/4 v3, 0x1

    .line 357
    :cond_e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v4, :cond_11

    .line 358
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    if-nez v5, :cond_f

    .line 359
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->UP:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_a

    .line 360
    :cond_f
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_10

    if-nez v3, :cond_10

    .line 361
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->DOWN:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_a

    .line 363
    :cond_10
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    goto :goto_a

    .line 366
    :cond_11
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    if-nez v5, :cond_12

    .line 367
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_a

    .line 368
    :cond_12
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_13

    if-nez v3, :cond_13

    .line 369
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_a

    .line 371
    :cond_13
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    :cond_14
    :goto_a
    return-void
.end method


# virtual methods
.method addDragItemAndStart(FLjava/lang/Object;J)V
    .locals 1

    .line 502
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getDragPositionForY(F)I

    move-result p1

    .line 504
    sget-object v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    .line 505
    iput-wide p3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    .line 506
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0, p3, p4}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragItemId(J)V

    .line 507
    iget-object p3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    .line 508
    iput p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    const/4 p1, 0x1

    .line 510
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mHoldChangePosition:Z

    .line 511
    new-instance p1, Lcom/woxthebox/draglistview/DragItemRecyclerView$3;

    invoke-direct {p1, p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView$3;-><init>(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    .line 516
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    .line 511
    invoke-virtual {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->invalidate()V

    return-void
.end method

.method public findChildView(FF)Landroid/view/View;
    .locals 5

    .line 252
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 258
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getDragItemId()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    return-wide v0
.end method

.method getDragPositionForY(F)I
    .locals 1

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0, v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->findChildView(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method isDragEnabled()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    return v0
.end method

.method isDragging()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAutoScrollColumnBy(I)V
    .locals 0

    return-void
.end method

.method public onAutoScrollPositionBy(II)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->scrollBy(II)V

    .line 237
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->updateDragPositionAndScroll()V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    :goto_0
    return-void
.end method

.method onDragEnded()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    if-ne v0, v1, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setEnabled(Z)V

    .line 433
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDisableReorderWhenDragging:Z

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemAdapter;->getDropTargetId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->getPositionForItemId(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/woxthebox/draglistview/DragItemAdapter;->swapItems(II)V

    .line 437
    iput v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDropTargetId(J)V

    .line 443
    :cond_2
    new-instance v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView$2;-><init>(Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onDragging(FF)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    if-ne v0, v1, :cond_0

    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAGGING:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    .line 411
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget-wide v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->getPositionForItemId(J)I

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    .line 412
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, p1, p2}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    .line 414
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->isAutoScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->updateDragPositionAndScroll()V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mListener:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;

    if-eqz v0, :cond_2

    .line 419
    iget v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-interface {v0, v1, p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;->onDragging(IFF)V

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->invalidate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 123
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mScrollingEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mStartY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    .line 133
    iget v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mTouchSlop:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mStartY:F

    .line 139
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method removeDragItemAndEnd()Ljava/lang/Object;
    .locals 4

    .line 522
    iget v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    .line 526
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragItemId(J)V

    .line 528
    sget-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    .line 529
    iput-wide v2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    .line 531
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->invalidate()V

    return-object v0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    instance-of v0, p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Adapter must have stable ids"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Adapter must extend DragItemAdapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    check-cast p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    return-void
.end method

.method setCanNotDragAboveTopItem(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragAboveTop:Z

    return-void
.end method

.method setCanNotDragBelowBottomItem(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragBelowBottom:Z

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 194
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mClipToPadding:Z

    return-void
.end method

.method setDisableReorderWhenDragging(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDisableReorderWhenDragging:Z

    return-void
.end method

.method setDragEnabled(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    return-void
.end method

.method setDragItem(Lcom/woxthebox/draglistview/DragItem;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    return-void
.end method

.method setDragItemCallback(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragCallback:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;

    return-void
.end method

.method setDragItemListener(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mListener:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;

    return-void
.end method

.method public setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDropTargetBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iput-object p2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDropTargetForegroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 228
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Layout must be an instance of LinearLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setScrollingEnabled(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mScrollingEnabled:Z

    return-void
.end method

.method startDrag(Landroid/view/View;JFF)Z
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/woxthebox/draglistview/DragItemAdapter;->getPositionForItemId(J)I

    move-result v0

    .line 378
    iget-boolean v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragAboveTop:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mCanNotDragBelowBottom:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 379
    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragCallback:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;->canDragItemAtPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 389
    sget-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    iput-object v1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragState:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    .line 390
    iput-wide p2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    .line 391
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p2, p1, p4, p5}, Lcom/woxthebox/draglistview/DragItem;->startDrag(Landroid/view/View;FF)V

    .line 392
    iput v0, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    .line 393
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->updateDragPositionAndScroll()V

    .line 395
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget-wide p2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemId:J

    invoke-virtual {p1, p2, p3}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragItemId(J)V

    .line 396
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mListener:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;

    if-eqz p1, :cond_3

    .line 398
    iget p2, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItemPosition:I

    iget-object p3, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p3}, Lcom/woxthebox/draglistview/DragItem;->getX()F

    move-result p3

    iget-object p4, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p4}, Lcom/woxthebox/draglistview/DragItem;->getY()F

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;->onDragStarted(IFF)V

    .line 401
    :cond_3
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->invalidate()V

    return v3

    :cond_4
    :goto_0
    return v2
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    instance-of v0, p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Adapter must have stable ids"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Adapter must extend DragItemAdapter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 222
    check-cast p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemRecyclerView;->mAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    return-void
.end method
