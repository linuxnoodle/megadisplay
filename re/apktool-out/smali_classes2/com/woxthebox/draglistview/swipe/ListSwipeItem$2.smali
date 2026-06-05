.class Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->handleSwipeUp(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    sget-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-static {p1, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->access$002(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 291
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->access$200(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->access$300(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_1
    return-void
.end method
