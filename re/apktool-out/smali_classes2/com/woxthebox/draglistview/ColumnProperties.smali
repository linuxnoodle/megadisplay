.class public Lcom/woxthebox/draglistview/ColumnProperties;
.super Ljava/lang/Object;
.source "ColumnProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    }
.end annotation


# instance fields
.field private mColumnBackgroundColor:I

.field private mColumnDragView:Landroid/view/View;

.field private mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

.field private mHasFixedItemSize:Z

.field private mHeader:Landroid/view/View;

.field private mItemDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSectionBackgroundColor:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/woxthebox/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woxthebox/draglistview/DragItemAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;ZII",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    .line 59
    iput-object p2, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 60
    iput-object p3, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mItemDecorations:Ljava/util/List;

    .line 61
    iput-boolean p4, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mHasFixedItemSize:Z

    .line 62
    iput p5, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mColumnBackgroundColor:I

    .line 63
    iput p6, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mItemsSectionBackgroundColor:I

    .line 64
    iput-object p8, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mHeader:Landroid/view/View;

    .line 65
    iput-object p7, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mColumnDragView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/woxthebox/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Lcom/woxthebox/draglistview/ColumnProperties$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p8}, Lcom/woxthebox/draglistview/ColumnProperties;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getColumnBackgroundColor()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mColumnBackgroundColor:I

    return v0
.end method

.method getColumnDragView()Landroid/view/View;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mColumnDragView:Landroid/view/View;

    return-object v0
.end method

.method getDragItemAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    return-object v0
.end method

.method getHeader()Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method getItemDecorations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mItemDecorations:Ljava/util/List;

    return-object v0
.end method

.method getItemsSectionBackgroundColor()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mItemsSectionBackgroundColor:I

    return v0
.end method

.method getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method hasFixedItemSize()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/ColumnProperties;->mHasFixedItemSize:Z

    return v0
.end method
