.class public final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5;
.super Ljava/lang/Object;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5",
        "Lcom/woxthebox/draglistview/swipe/ListSwipeHelper$OnSwipeListener;",
        "onItemSwipeEnded",
        "",
        "item",
        "Lcom/woxthebox/draglistview/swipe/ListSwipeItem;",
        "swipedDirection",
        "Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;",
        "onItemSwipeStarted",
        "onItemSwiping",
        "swipedDistanceX",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSwipeEnded(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipedDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-eq p2, v0, :cond_7

    .line 221
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-static {p2}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object p2

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    iget-object p2, p2, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {p2}, Lcom/woxthebox/draglistview/DragListView;->getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object p2

    iget-object v2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-static {v2}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    iget-object v2, v2, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {v2}, Lcom/woxthebox/draglistview/DragListView;->getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v2

    .line 222
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v3, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    check-cast p1, Ljava/lang/Long;

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, -0x1

    .line 221
    :goto_2
    invoke-virtual {v2, v3, v4}, Lcom/woxthebox/draglistview/DragItemAdapter;->getPositionForItemId(J)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/woxthebox/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    .line 224
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$5;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, p1

    :goto_3
    iget-object p1, v1, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragListView;->getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method

.method public onItemSwipeStarted(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;)V
    .locals 0

    return-void
.end method

.method public onItemSwiping(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;F)V
    .locals 0

    return-void
.end method
