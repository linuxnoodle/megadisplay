.class public Lcom/woxthebox/draglistview/ColumnProperties$Builder;
.super Ljava/lang/Object;
.source "ColumnProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/ColumnProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColumnBackgroundColor:I

.field private mColumnDragView:Landroid/view/View;

.field private mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

.field private mHasFixedItemSize:Z

.field private mHeader:Landroid/view/View;

.field private mItemDecoration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSectionBackgroundColor:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/woxthebox/draglistview/DragItemAdapter;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    .line 109
    iput v1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    .line 110
    iput v1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    .line 111
    iput-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    .line 112
    iput-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    .line 115
    iput-object p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    return-void
.end method

.method public static newBuilder(Lcom/woxthebox/draglistview/DragItemAdapter;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 1

    .line 126
    new-instance v0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;

    invoke-direct {v0, p0}, Lcom/woxthebox/draglistview/ColumnProperties$Builder;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter;)V

    return-object v0
.end method


# virtual methods
.method public varargs addItemDecorations([Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/woxthebox/draglistview/ColumnProperties;
    .locals 11

    .line 224
    new-instance v10, Lcom/woxthebox/draglistview/ColumnProperties;

    iget-object v1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mDragItemAdapter:Lcom/woxthebox/draglistview/DragItemAdapter;

    iget-object v2, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    iget v5, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    iget v6, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    iget-object v7, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    iget-object v8, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/woxthebox/draglistview/ColumnProperties;-><init>(Lcom/woxthebox/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Lcom/woxthebox/draglistview/ColumnProperties$1;)V

    return-object v10
.end method

.method public setColumnBackgroundColor(I)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 178
    iput p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    return-object p0
.end method

.method public setColumnDragView(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    return-object p0
.end method

.method public setHasFixedItemSize(Z)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    return-object p0
.end method

.method public setHeader(Landroid/view/View;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method public setItemsSectionBackgroundColor(I)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 190
    iput p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    return-object p0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/woxthebox/draglistview/ColumnProperties$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/woxthebox/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method
