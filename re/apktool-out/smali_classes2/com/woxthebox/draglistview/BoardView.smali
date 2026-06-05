.class public Lcom/woxthebox/draglistview/BoardView;
.super Landroid/widget/HorizontalScrollView;
.source "BoardView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/BoardView$SavedState;,
        Lcom/woxthebox/draglistview/BoardView$GestureListener;,
        Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;,
        Lcom/woxthebox/draglistview/BoardView$BoardListenerAdapter;,
        Lcom/woxthebox/draglistview/BoardView$BoardListener;,
        Lcom/woxthebox/draglistview/BoardView$BoardCallback;
    }
.end annotation


# static fields
.field private static final SCROLL_ANIMATION_DURATION:I = 0x145


# instance fields
.field private mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

.field private mBoardCallback:Lcom/woxthebox/draglistview/BoardView$BoardCallback;

.field private mBoardEdge:I

.field private mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

.field private mColumnLayout:Landroid/widget/LinearLayout;

.field private mColumnSpacing:I

.field private mColumnWidth:I

.field private mCurrentColumn:I

.field private mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

.field private mDragColumn:Lcom/woxthebox/draglistview/DragItem;

.field private mDragColumnStartScrollX:F

.field private mDragEnabled:Z

.field private mDragItem:Lcom/woxthebox/draglistview/DragItem;

.field private mDragStartColumn:I

.field private mDragStartRow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasLaidOut:Z

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDragColumn:I

.field private mLastDragRow:I

.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/woxthebox/draglistview/DragItemRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSavedState:Lcom/woxthebox/draglistview/BoardView$SavedState;

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

.field private mSnapToColumnInLandscape:Z

.field private mSnapToColumnWhenDragging:Z

.field private mSnapToColumnWhenScrolling:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 128
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 130
    sget-object v1, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    iput-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    .line 136
    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    .line 137
    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    .line 141
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragColumn:I

    .line 143
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragRow:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 128
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 130
    sget-object v1, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    iput-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    .line 136
    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    .line 137
    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    .line 141
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragColumn:I

    .line 143
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragRow:I

    .line 152
    invoke-direct {p0, p2}, Lcom/woxthebox/draglistview/BoardView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 128
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 p3, 0x0

    .line 129
    iput-boolean p3, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 130
    sget-object v0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    .line 136
    iput p3, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    .line 137
    iput p3, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    .line 141
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragColumn:I

    .line 143
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragRow:I

    .line 157
    invoke-direct {p0, p2}, Lcom/woxthebox/draglistview/BoardView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    return p0
.end method

.method static synthetic access$1000(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartRow:I

    return p0
.end method

.method static synthetic access$1002(Lcom/woxthebox/draglistview/BoardView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartRow:I

    return p1
.end method

.method static synthetic access$1100(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragColumn:I

    return p0
.end method

.method static synthetic access$1202(Lcom/woxthebox/draglistview/BoardView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragColumn:I

    return p1
.end method

.method static synthetic access$1300(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragRow:I

    return p0
.end method

.method static synthetic access$1302(Lcom/woxthebox/draglistview/BoardView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLastDragRow:I

    return p1
.end method

.method static synthetic access$1400(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardCallback:Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/woxthebox/draglistview/BoardView;Landroid/view/View;)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/woxthebox/draglistview/BoardView;Landroid/view/View;)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/woxthebox/draglistview/BoardView;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    return p0
.end method

.method static synthetic access$1800(Lcom/woxthebox/draglistview/BoardView;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchY:F

    return p0
.end method

.method static synthetic access$1900(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;FF)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/BoardView;->startDragColumn(Lcom/woxthebox/draglistview/DragItemRecyclerView;FF)V

    return-void
.end method

.method static synthetic access$2000(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->getClosestSnapColumn()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/woxthebox/draglistview/BoardView;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/woxthebox/draglistview/BoardView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/BoardView$BoardListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/woxthebox/draglistview/BoardView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)I
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/woxthebox/draglistview/BoardView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/woxthebox/draglistview/BoardView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartColumn:I

    return p0
.end method

.method static synthetic access$902(Lcom/woxthebox/draglistview/BoardView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartColumn:I

    return p1
.end method

.method private addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 5

    .line 914
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getColumnCount()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 918
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/woxthebox/draglistview/R$layout;->drag_item_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 919
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setId(I)V

    .line 920
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 921
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 922
    invoke-virtual {v0, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setMotionEventSplittingEnabled(Z)V

    .line 923
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItem(Lcom/woxthebox/draglistview/DragItem;)V

    .line 924
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 928
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getItemsSectionBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setBackgroundColor(I)V

    .line 929
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->hasFixedItemSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setHasFixedSize(Z)V

    .line 931
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getItemDecorations()Ljava/util/List;

    move-result-object v1

    .line 932
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 933
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 936
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 937
    new-instance v1, Lcom/woxthebox/draglistview/BoardView$4;

    invoke-direct {v1, p0, v0}, Lcom/woxthebox/draglistview/BoardView$4;-><init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItemListener(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemListener;)V

    .line 970
    new-instance v1, Lcom/woxthebox/draglistview/BoardView$5;

    invoke-direct {v1, p0, v0}, Lcom/woxthebox/draglistview/BoardView$5;-><init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragItemCallback(Lcom/woxthebox/draglistview/DragItemRecyclerView$DragItemCallback;)V

    .line 984
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getDragItemAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v1

    .line 985
    new-instance v2, Lcom/woxthebox/draglistview/BoardView$6;

    invoke-direct {v2, p0, v0}, Lcom/woxthebox/draglistview/BoardView$6;-><init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/woxthebox/draglistview/DragItemAdapter$DragStartCallback;)V

    .line 996
    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 997
    iget-boolean v1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    .line 999
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1000
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getColumnBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    .line 1001
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1002
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnWidth:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getHeader()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1006
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x8

    .line 1007
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1010
    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1015
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1017
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    .line 1019
    invoke-virtual {p2}, Lcom/woxthebox/draglistview/ColumnProperties;->getColumnDragView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/woxthebox/draglistview/BoardView;->setupColumnDragListener(Landroid/view/View;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    return-object v0

    .line 915
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index is out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private endDragColumn()V
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->getRealDragView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/woxthebox/draglistview/BoardView$2;

    invoke-direct {v2, p0}, Lcom/woxthebox/draglistview/BoardView$2;-><init>(Lcom/woxthebox/draglistview/BoardView;)V

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItem;->endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private getClosestSnapColumn()I
    .locals 8

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 438
    :goto_0
    iget-object v4, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 439
    iget-object v4, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 442
    sget-object v5, Lcom/woxthebox/draglistview/BoardView$8;->$SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition:[I

    iget-object v6, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    invoke-virtual {v6}, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 453
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getMeasuredWidth()I

    move-result v7

    div-int/2addr v7, v6

    add-int/2addr v5, v7

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v7, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnWidth:I

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v5

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    :goto_1
    if-ge v4, v1, :cond_3

    move v3, v2

    move v1, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, p1, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getCurrentColumn(F)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 425
    :goto_0
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 427
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getCurrentRecyclerView(F)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 405
    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 406
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    return-object v1

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-object p1
.end method

.method private getRelativeViewTouchX(Landroid/view/View;)F
    .locals 2

    .line 396
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getRelativeViewTouchY(Landroid/view/View;)F
    .locals 1

    .line 400
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchY:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchY:F

    .line 254
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller;->isAutoScrolling()Z

    move-result p1

    if-nez p1, :cond_5

    .line 258
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateScrollPosition()V

    goto :goto_1

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    .line 264
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDraggingColumn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 265
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->endDragColumn()V

    goto :goto_0

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragEnded()V

    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 270
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/woxthebox/draglistview/BoardView;->scrollToColumn(IZ)V

    .line 272
    :cond_4
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->invalidate()V

    :cond_5
    :goto_1
    return v3

    .line 277
    :cond_6
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    .line 281
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_8

    goto :goto_2

    .line 290
    :cond_8
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 291
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->getClosestSnapColumn()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/woxthebox/draglistview/BoardView;->scrollToColumn(IZ)V

    goto :goto_2

    .line 283
    :cond_9
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_a

    .line 285
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_a
    :goto_2
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/woxthebox/draglistview/R$styleable;->BoardView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    sget v0, Lcom/woxthebox/draglistview/R$styleable;->BoardView_columnSpacing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    .line 164
    sget v0, Lcom/woxthebox/draglistview/R$styleable;->BoardView_boardEdges:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    .line 166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isDragging()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDraggingColumn()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveColumn(II)V
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 807
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 810
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 815
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 817
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    .line 819
    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/woxthebox/draglistview/BoardView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/woxthebox/draglistview/BoardView$3;-><init>(Lcom/woxthebox/draglistview/BoardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 828
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_0

    .line 829
    invoke-interface {v0, p1, p2}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onColumnDragChangedPosition(II)V

    :cond_0
    return-void
.end method

.method private setupColumnDragListener(Landroid/view/View;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1026
    new-instance v0, Lcom/woxthebox/draglistview/BoardView$7;

    invoke-direct {v0, p0, p2}, Lcom/woxthebox/draglistview/BoardView$7;-><init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/DragItemRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private snapToColumnWhenDragging()Z
    .locals 4

    .line 471
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    iget-boolean v3, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private snapToColumnWhenScrolling()Z
    .locals 4

    .line 466
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    iget-boolean v3, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private startDragColumn(Lcom/woxthebox/draglistview/DragItemRecyclerView;FF)V
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumnStartScrollX:F

    .line 778
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 780
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 781
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woxthebox/draglistview/DragItem;->startDrag(Landroid/view/View;FF)V

    .line 782
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p3}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 783
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 785
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    if-eqz p1, :cond_0

    .line 786
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0, p2}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onColumnDragStarted(I)V

    :cond_0
    return-void
.end method

.method private updateBoardSpaces()V
    .locals 5

    .line 1037
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getColumnCount()I

    move-result v0

    .line 1038
    iget v1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1041
    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1042
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 1045
    iget v4, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1046
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    .line 1048
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1049
    iget v4, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 1051
    :cond_1
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1052
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateScrollPosition()V
    .locals 9

    .line 348
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getCurrentRecyclerView(F)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    if-eq v1, v0, :cond_0

    .line 351
    invoke-direct {p0, v1}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/woxthebox/draglistview/BoardView;->moveColumn(II)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    iget v1, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumnStartScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchY:F

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    goto/16 :goto_0

    .line 357
    :cond_1
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getCurrentRecyclerView(F)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    if-eq v1, v0, :cond_3

    .line 359
    invoke-direct {p0, v1}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v1

    .line 360
    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getColumnOfList(Lcom/woxthebox/draglistview/DragItemRecyclerView;)I

    move-result v2

    .line 361
    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getDragItemId()J

    move-result-wide v3

    .line 364
    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getDragPositionForY(F)I

    move-result v5

    .line 365
    iget-object v6, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardCallback:Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    if-eqz v6, :cond_2

    iget v7, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartColumn:I

    iget v8, p0, Lcom/woxthebox/draglistview/BoardView;->mDragStartRow:I

    invoke-interface {v6, v7, v8, v2, v5}, Lcom/woxthebox/draglistview/BoardView$BoardCallback;->canDropItemAtPosition(IIII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 366
    :cond_2
    iget-object v5, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v5}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->removeDragItemAndEnd()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 368
    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 369
    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->addDragItemAndStart(FLjava/lang/Object;J)V

    .line 370
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v3}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/woxthebox/draglistview/DragItem;->setOffset(FF)V

    .line 372
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_3

    .line 373
    invoke-interface {v0, v1, v2}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onItemChangedColumn(II)V

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0, v2}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->onDragging(FF)V

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 384
    :goto_1
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    if-eqz v1, :cond_5

    const v1, 0x3d75c28f    # 0.06f

    goto :goto_2

    :cond_5
    const v1, 0x3e0f5c29    # 0.14f

    :goto_2
    mul-float v0, v0, v1

    .line 385
    iget v1, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 386
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_3

    .line 387
    :cond_6
    iget v1, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_7

    .line 388
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_3

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    .line 392
    :goto_3
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->invalidate()V

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/woxthebox/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;Z)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 6

    .line 887
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/woxthebox/draglistview/BoardView;->addColumn(Lcom/woxthebox/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public addColumn(Lcom/woxthebox/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 0

    .line 894
    invoke-static {p1}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->newBuilder(Lcom/woxthebox/draglistview/DragItemAdapter;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 895
    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setHeader(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 896
    invoke-virtual {p1, p3}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setColumnDragView(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 897
    invoke-virtual {p1, p4}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setHasFixedItemSize(Z)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 898
    invoke-virtual {p1, p5}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 899
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->build()Lcom/woxthebox/draglistview/ColumnProperties;

    move-result-object p1

    .line 901
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getColumnCount()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/woxthebox/draglistview/BoardView;->addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public addColumn(Lcom/woxthebox/draglistview/ColumnProperties;)V
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getColumnCount()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/woxthebox/draglistview/BoardView;->addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-void
.end method

.method public addItem(IILjava/lang/Object;Z)V
    .locals 1

    .line 540
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 541
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 542
    invoke-virtual {v0, p2, p3}, Lcom/woxthebox/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 544
    invoke-virtual {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_0
    return-void
.end method

.method public clearBoard()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 643
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 644
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 304
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollY()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/woxthebox/draglistview/BoardView;->scrollTo(II)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/AutoScroller;->isAutoScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    iget v1, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumnStartScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/woxthebox/draglistview/BoardView;->mTouchY:F

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentRecyclerView:Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-direct {p0, v2}, Lcom/woxthebox/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItem;->setPosition(FF)V

    .line 318
    :cond_3
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 319
    :cond_4
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 320
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getAdapter(I)Lcom/woxthebox/draglistview/DragItemAdapter;
    .locals 1

    if-ltz p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColumnOfHeader(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getFocusedColumn()I
    .locals 1

    .line 675
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 678
    :cond_0
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 500
    invoke-virtual {v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getItemCount(I)I
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRecyclerView(I)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    if-ltz p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public insertColumn(Lcom/woxthebox/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;Z)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 7

    .line 847
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/woxthebox/draglistview/BoardView;->insertColumn(Lcom/woxthebox/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public insertColumn(Lcom/woxthebox/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/DragItemRecyclerView;
    .locals 0

    .line 855
    invoke-static {p1}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->newBuilder(Lcom/woxthebox/draglistview/DragItemAdapter;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 856
    invoke-virtual {p1, p3}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setHeader(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 857
    invoke-virtual {p1, p4}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setColumnDragView(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 858
    invoke-virtual {p1, p5}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setHasFixedItemSize(Z)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 859
    invoke-virtual {p1, p6}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 860
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->build()Lcom/woxthebox/draglistview/ColumnProperties;

    move-result-object p1

    .line 861
    invoke-direct {p0, p2, p1}, Lcom/woxthebox/draglistview/BoardView;->addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public insertColumn(ILcom/woxthebox/draglistview/ColumnProperties;)V
    .locals 0

    .line 871
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/BoardView;->addColumnTo(ILcom/woxthebox/draglistview/ColumnProperties;)Lcom/woxthebox/draglistview/DragItemRecyclerView;

    return-void
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    return v0
.end method

.method public moveItem(IIIIZ)V
    .locals 1

    .line 550
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v0, p4, :cond_0

    .line 552
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 553
    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 554
    iget-object p2, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 555
    invoke-virtual {p2, p4, p1}, Lcom/woxthebox/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 557
    invoke-virtual {p0, p3, p4, p1}, Lcom/woxthebox/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_0
    return-void
.end method

.method public moveItem(JIIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 563
    :goto_0
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 565
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 567
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    move-object v1, p0

    move v3, v4

    move v4, p3

    move v5, p4

    move v6, p5

    .line 569
    invoke-virtual/range {v1 .. v6}, Lcom/woxthebox/draglistview/BoardView;->moveItem(IIIIZ)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAutoScrollColumnBy(I)V
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget v0, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    add-int/2addr v0, p1

    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    .line 338
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/woxthebox/draglistview/BoardView;->scrollToColumn(IZ)V

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateScrollPosition()V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    :goto_0
    return-void
.end method

.method public onAutoScrollPositionBy(II)V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/woxthebox/draglistview/BoardView;->scrollBy(II)V

    .line 328
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateScrollPosition()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller;->stopAutoScroll()V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 171
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 172
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3febd70a3d70a3d7L    # 0.87

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnWidth:I

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43a00000    # 320.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnWidth:I

    .line 180
    :goto_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/woxthebox/draglistview/BoardView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/woxthebox/draglistview/BoardView$GestureListener;-><init>(Lcom/woxthebox/draglistview/BoardView;Lcom/woxthebox/draglistview/BoardView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 181
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    .line 182
    new-instance v0, Lcom/woxthebox/draglistview/AutoScroller;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/woxthebox/draglistview/AutoScroller;-><init>(Landroid/content/Context;Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    .line 183
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_1

    .line 184
    :cond_1
    sget-object v1, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    .line 183
    :goto_1
    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller;->setAutoScrollMode(Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;)V

    .line 185
    new-instance v0, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    .line 186
    new-instance v0, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 189
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 190
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/woxthebox/draglistview/BoardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 237
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onLayout(ZIIII)V
    .locals 0

    .line 204
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 205
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    .line 208
    iget-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mHasLaidOut:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSavedState:Lcom/woxthebox/draglistview/BoardView$SavedState;

    if-eqz p1, :cond_0

    .line 209
    iget p1, p1, Lcom/woxthebox/draglistview/BoardView$SavedState;->currentColumn:I

    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSavedState:Lcom/woxthebox/draglistview/BoardView$SavedState;

    .line 211
    new-instance p1, Lcom/woxthebox/draglistview/BoardView$1;

    invoke-direct {p1, p0}, Lcom/woxthebox/draglistview/BoardView$1;-><init>(Lcom/woxthebox/draglistview/BoardView;)V

    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mHasLaidOut:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 223
    check-cast p1, Lcom/woxthebox/draglistview/BoardView$SavedState;

    .line 224
    invoke-virtual {p1}, Lcom/woxthebox/draglistview/BoardView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSavedState:Lcom/woxthebox/draglistview/BoardView$SavedState;

    .line 226
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 231
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/woxthebox/draglistview/BoardView$SavedState;

    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->getClosestSnapColumn()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/woxthebox/draglistview/BoardView$SavedState;-><init>(Landroid/os/Parcelable;ILcom/woxthebox/draglistview/BoardView$1;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 243
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/BoardView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public removeColumn(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 652
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 654
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    :cond_0
    return-void
.end method

.method public removeItem(II)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 535
    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public replaceItem(IILjava/lang/Object;Z)V
    .locals 1

    .line 577
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 578
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 579
    invoke-virtual {v0, p2}, Lcom/woxthebox/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    .line 580
    invoke-virtual {v0, p2, p3}, Lcom/woxthebox/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 582
    invoke-virtual {p0, p1, p2, p3}, Lcom/woxthebox/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_0
    return-void
.end method

.method public scrollToColumn(IZ)V
    .locals 10

    .line 600
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 605
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    sget-object v2, Lcom/woxthebox/draglistview/BoardView$8;->$SwitchMap$com$woxthebox$draglistview$BoardView$ColumnSnapPosition:[I

    iget-object v3, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    invoke-virtual {v3}, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 616
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v2, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    div-int/2addr v2, v5

    .line 613
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_1

    .line 609
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr v0, v1

    .line 620
    :goto_1
    iget-object v1, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    if-le v4, v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v4

    .line 623
    :goto_3
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 624
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p2, :cond_6

    .line 626
    iget-object v4, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollX()I

    move-result p2

    sub-int v7, v1, p2

    const/4 v8, 0x0

    const/16 v9, 0x145

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 627
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_4

    .line 629
    :cond_6
    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/woxthebox/draglistview/BoardView;->scrollTo(II)V

    .line 633
    :cond_7
    :goto_4
    iget p2, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    .line 634
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mCurrentColumn:I

    .line 635
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_8

    if-eq p2, p1, :cond_8

    .line 636
    invoke-interface {v0, p2, p1}, Lcom/woxthebox/draglistview/BoardView$BoardListener;->onFocusedColumnChanged(II)V

    :cond_8
    return-void
.end method

.method public scrollToItem(IIZ)V
    .locals 2

    .line 588
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 589
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 590
    invoke-virtual {p0, p1, p3}, Lcom/woxthebox/draglistview/BoardView;->scrollToColumn(IZ)V

    if-eqz p3, :cond_0

    .line 592
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, p2}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBoardCallback(Lcom/woxthebox/draglistview/BoardView$BoardCallback;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardCallback:Lcom/woxthebox/draglistview/BoardView$BoardCallback;

    return-void
.end method

.method public setBoardEdge(I)V
    .locals 0

    .line 701
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardEdge:I

    .line 702
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    return-void
.end method

.method public setBoardListener(Lcom/woxthebox/draglistview/BoardView$BoardListener;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mBoardListener:Lcom/woxthebox/draglistview/BoardView$BoardListener;

    return-void
.end method

.method public setColumnSnapPosition(Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapPosition:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    return-void
.end method

.method public setColumnSpacing(I)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnSpacing:I

    .line 694
    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->updateBoardSpaces()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 686
    iput p1, p0, Lcom/woxthebox/draglistview/BoardView;->mColumnWidth:I

    return-void
.end method

.method public setCustomColumnDragItem(Lcom/woxthebox/draglistview/DragItem;)V
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 769
    :cond_0
    new-instance v0, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 771
    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 773
    :cond_1
    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragColumn:Lcom/woxthebox/draglistview/DragItem;

    return-void
.end method

.method public setCustomDragItem(Lcom/woxthebox/draglistview/DragItem;)V
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 756
    :cond_0
    new-instance v0, Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/woxthebox/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/woxthebox/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 758
    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 760
    :cond_1
    iput-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    .line 761
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 762
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 2

    .line 663
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    .line 664
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woxthebox/draglistview/DragItemRecyclerView;

    .line 666
    iget-boolean v1, p0, Lcom/woxthebox/draglistview/BoardView;->mDragEnabled:Z

    invoke-virtual {v0, v1}, Lcom/woxthebox/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSnapDragItemToTouch(Z)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/woxthebox/draglistview/BoardView;->mDragItem:Lcom/woxthebox/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/woxthebox/draglistview/DragItem;->setSnapToTouch(Z)V

    return-void
.end method

.method public setSnapToColumnInLandscape(Z)V
    .locals 1

    .line 725
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 726
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_0

    .line 727
    :cond_0
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    .line 726
    :goto_0
    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/AutoScroller;->setAutoScrollMode(Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;)V

    return-void
.end method

.method public setSnapToColumnWhenDragging(Z)V
    .locals 1

    .line 716
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    .line 717
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView;->mAutoScroller:Lcom/woxthebox/draglistview/AutoScroller;

    invoke-direct {p0}, Lcom/woxthebox/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_0

    .line 718
    :cond_0
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    .line 717
    :goto_0
    invoke-virtual {p1, v0}, Lcom/woxthebox/draglistview/AutoScroller;->setAutoScrollMode(Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;)V

    return-void
.end method

.method public setSnapToColumnsWhenScrolling(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    return-void
.end method
