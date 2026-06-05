.class Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ListSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mSwipeStarted:Z

.field final synthetic this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;


# direct methods
.method private constructor <init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;-><init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)V

    return-void
.end method

.method private canStartSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 197
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    .line 198
    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->getSupportedSwipeDirection()Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object p1

    sget-object p2, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method isSwipeStarted()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->canStartSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->setFlingSpeed(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 154
    iget-object p4, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 160
    iget-boolean p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$400(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p4, p4, p2

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    .line 162
    iget-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 163
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    iget-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->handleSwipeMoveStarted(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    .line 164
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;->onItemSwipeStarted(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)V

    .line 169
    :cond_1
    iget-boolean p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    neg-float p2, p3

    iget-object p3, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p3}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    iget-object p4, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->handleSwipeMove(FLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 173
    :cond_2
    iget-boolean p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
