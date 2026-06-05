.class public Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListSwipeHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;,
        Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;,
        Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListenerAdapter;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSwipeListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

.field private mSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    .line 61
    new-instance p2, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;-><init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;)V

    iput-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;

    .line 62
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mTouchSlop:I

    return p0
.end method

.method private handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 105
    new-instance v0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;-><init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)V

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->handleSwipeUp(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    .line 120
    :goto_0
    iput-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    .line 121
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 96
    instance-of p2, p1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    .line 97
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->getSupportedSwipeDirection()Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object p2

    sget-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-eq p2, v0, :cond_3

    .line 98
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 141
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 142
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mTouchSlop:I

    return-void
.end method

.method public detachFromRecyclerView()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 133
    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 68
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->isSwipeStarted()Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public resetSwipedViews(Landroid/view/View;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 84
    iget-object v2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    instance-of v3, v2, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    if-eqz v3, :cond_0

    if-eq v2, p1, :cond_0

    .line 86
    check-cast v2, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSwipeListener(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-void
.end method
