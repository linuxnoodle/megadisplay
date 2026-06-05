.class Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

.field final synthetic val$endingSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    iput-object p2, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->isSwipeStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;->access$100(Lcom/woxthebox/draglistview/swipe/ListSwipeHelper;)Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->getSwipedDirection()Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;->onItemSwipeEnded(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;)V

    :cond_1
    return-void
.end method
