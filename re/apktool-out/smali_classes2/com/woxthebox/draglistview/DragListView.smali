.class public Lcom/woxthebox/draglistview/DragListView;
.super Landroid/widget/FrameLayout;
.source "DragListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/DragListView$DragListCallbackAdapter;,
        Lcom/woxthebox/draglistview/DragListView$DragListCallback;,
        Lcom/woxthebox/draglistview/DragListView$DragListListenerAdapter;,
        Lcom/woxthebox/draglistview/DragListView$DragListListener;
    }
.end annotation


# instance fields
.field private mDragItem:Lcom/woxthebox/draglistview/DragItem;

.field private mDragListCallback:Lcom/woxthebox/draglistview/DragListView$DragListCallback;

.field private mDragListListener:Lcom/woxthebox/draglistview/DragListView$DragListListener;

.field private mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

.field private mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragListListener:Lcom/woxthebox/draglistview/DragListView$DragListListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragListView$DragListCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragListCallback:Lcom/woxthebox/draglistview/DragListView$DragListCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woxthebox/draglistview/DragListView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/woxthebox/draglistview/DragListView;->mTouchX:F

    return p0
.end method

.method static synthetic access$300(Lcom/woxthebox/draglistview/DragListView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/woxthebox/draglistview/DragListView;->mTouchY:F

    return p0
.end method

.method static synthetic access$400(Lcom/woxthebox/draglistview/DragListView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-object p0
.end method

.method private createRecyclerView()Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/woxthebox/draglistview/R$layout;->drag_item_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 135
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setMotionEventSplittingEnabled(Z)V

    .line 136
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 137
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 139
    new-instance v1, Lcom/woxthebox/draglistview/DragListView$1;

    invoke-direct {v1, p0}, Lcom/woxthebox/draglistview/DragListView$1;-><init>(Lcom/woxthebox/draglistview/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItemListener(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;)V

    .line 165
    new-instance v1, Lcom/woxthebox/draglistview/DragListView$2;

    invoke-direct {v1, p0}, Lcom/woxthebox/draglistview/DragListView$2;-><init>(Lcom/woxthebox/draglistview/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItemCallback(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;)V

    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/DragListView;->mTouchX:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/DragListView;->mTouchY:F

    .line 118
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragListView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragging(FF)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragEnded()V

    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemAdapter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isDragEnabled()Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    new-instance v0, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    .line 97
    invoke-direct {p0}, Lcom/woxthebox/draglistview/DragListView;->createRecyclerView()Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 98
    iget-object v1, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItem(Lcom/woxthebox/draglistview/DragItem;)V

    .line 99
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragListView;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/DragListView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/DragListView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public resetSwipedViews(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/woxthebox/draglistview/DragItemAdapter;Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setHasFixedSize(Z)V

    .line 217
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p2, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    new-instance p2, Lcom/woxthebox/draglistview/DragListView$3;

    invoke-direct {p2, p0}, Lcom/woxthebox/draglistview/DragListView$3;-><init>(Lcom/woxthebox/draglistview/DragListView;)V

    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public setCanDragHorizontally(Z)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItem;->setCanDragHorizontally(Z)V

    return-void
.end method

.method public setCanNotDragAboveTopItem(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setCanNotDragAboveTopItem(Z)V

    return-void
.end method

.method public setCanNotDragBelowBottomItem(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setCanNotDragBelowBottomItem(Z)V

    return-void
.end method

.method public setCustomDragItem(Lcom/woxthebox/draglistview/DragItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/DragListView;->removeViewAt(I)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance p1, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->canDragHorizontally()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/DragItem;->setCanDragHorizontally(Z)V

    .line 277
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->isSnapToTouch()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 278
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    .line 279
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItem(Lcom/woxthebox/draglistview/DragItem;)V

    .line 280
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/DragListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDisableReorderWhenDragging(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDisableReorderWhenDragging(Z)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    return-void
.end method

.method public setDragListCallback(Lcom/woxthebox/draglistview/DragListView$DragListCallback;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mDragListCallback:Lcom/woxthebox/draglistview/DragListView$DragListCallback;

    return-void
.end method

.method public setDragListListener(Lcom/woxthebox/draglistview/DragListView$DragListListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mDragListListener:Lcom/woxthebox/draglistview/DragListView$DragListListener;

    return-void
.end method

.method public setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setScrollingEnabled(Z)V

    return-void
.end method

.method public setSnapDragItemToTouch(Z)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    return-void
.end method

.method public setSwipeListener(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;-><init>(Landroid/content/Context;Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->setSwipeListener(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->detachFromRecyclerView()V

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/woxthebox/draglistview/DragListView;->mSwipeHelper:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method public swapAdapter(Lcom/woxthebox/draglistview/DragItemAdapter;Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/woxthebox/draglistview/DragListView;->mRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 233
    new-instance p2, Lcom/woxthebox/draglistview/DragListView$4;

    invoke-direct {p2, p0}, Lcom/woxthebox/draglistview/DragListView$4;-><init>(Lcom/woxthebox/draglistview/DragListView;)V

    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method
