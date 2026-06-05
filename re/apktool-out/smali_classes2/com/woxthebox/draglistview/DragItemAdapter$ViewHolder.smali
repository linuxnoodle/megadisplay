.class public abstract Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DragItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/DragItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field private mDragStartCallback:Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;

.field public mGrabView:Landroid/view/View;

.field public mItemId:J


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 162
    new-instance p3, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$1;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance p3, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$2;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :goto_0
    new-instance p2, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$3;

    invoke-direct {p2, p0}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$3;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p2, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-eq p1, p2, :cond_1

    .line 207
    new-instance p2, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$4;

    invoke-direct {p2, p0}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$4;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    new-instance p2, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$5;

    invoke-direct {p2, p0}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder$5;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;)Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mDragStartCallback:Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;

    return-object p0
.end method


# virtual methods
.method public onItemClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDragStartCallback(Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;->mDragStartCallback:Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;

    return-void
.end method
