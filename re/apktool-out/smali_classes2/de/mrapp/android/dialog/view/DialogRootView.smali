.class public Lde/mrapp/android/dialog/view/DialogRootView;
.super Landroid/widget/LinearLayout;
.source "DialogRootView.java"

# interfaces
.implements Lde/mrapp/android/dialog/listener/AreaListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;,
        Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;,
        Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;,
        Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;,
        Lde/mrapp/android/dialog/view/DialogRootView$ViewType;
    }
.end annotation


# instance fields
.field private areas:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private backingBitmap:Landroid/graphics/Bitmap;

.field private backingCanvas:Landroid/graphics/Canvas;

.field private bottomDivider:Lde/mrapp/android/dialog/view/Divider;

.field private dialogPadding:[I

.field private dividerColor:I

.field private dividerMargin:I

.field private dividers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;",
            "Lde/mrapp/android/dialog/view/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreen:Z

.field private listView:Landroid/widget/AbsListView;

.field private maxHeight:I

.field private maxWidth:I

.field private paint:Landroid/graphics/Paint;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private scrollView:Lde/mrapp/android/dialog/view/ScrollView;

.field private scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

.field private showDividersOnScroll:Z

.field private topDivider:Lde/mrapp/android/dialog/view/Divider;

.field private windowBackground:Landroid/graphics/drawable/Drawable;

.field private windowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1033
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/dialog/view/DialogRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1047
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxWidth:I

    .line 255
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxHeight:I

    .line 1048
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1065
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxWidth:I

    .line 255
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxHeight:I

    .line 1066
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1088
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxWidth:I

    .line 255
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxHeight:I

    .line 1089
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/dialog/view/DialogRootView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities()V

    return-void
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/view/DialogRootView;)Lde/mrapp/android/dialog/view/ScrollView;
    .locals 0

    .line 73
    iget-object p0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lde/mrapp/android/dialog/view/DialogRootView;ZZZ)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities(ZZZ)V

    return-void
.end method

.method static synthetic access$300(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/widget/AbsListView;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->isListViewScrolledToTop(Landroid/widget/AbsListView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/widget/AbsListView;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->isListViewScrolledToBottom(Landroid/widget/AbsListView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lde/mrapp/android/dialog/view/DialogRootView;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->isRecyclerViewScrolledToTop(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lde/mrapp/android/dialog/view/DialogRootView;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->isRecyclerViewScrolledToBottom(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method private adaptAreaPadding()V
    .locals 10

    .line 495
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->areas:Ljava/util/SortedMap;

    if-eqz v0, :cond_7

    .line 501
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 503
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 505
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 506
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 508
    invoke-direct {p0, v8, v7}, Lde/mrapp/android/dialog/view/DialogRootView;->applyDialogPaddingLeft(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V

    .line 509
    invoke-direct {p0, v8, v7}, Lde/mrapp/android/dialog/view/DialogRootView;->applyDialogPaddingRight(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V

    if-nez v4, :cond_0

    .line 512
    invoke-direct {p0, v8, v7}, Lde/mrapp/android/dialog/view/DialogRootView;->applyDialogPaddingTop(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)Z

    move-result v4

    .line 515
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 516
    invoke-direct {p0, v8, v7}, Lde/mrapp/android/dialog/view/DialogRootView;->applyDialogPaddingBottom(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V

    :cond_1
    if-eqz v1, :cond_5

    .line 520
    sget-object v9, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne v8, v9, :cond_2

    .line 521
    invoke-direct {p0, v1, v3}, Lde/mrapp/android/dialog/view/DialogRootView;->applyDialogPaddingBottom(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V

    .line 524
    :cond_2
    invoke-direct {p0, v1, v3, v8}, Lde/mrapp/android/dialog/view/DialogRootView;->addViewSpacing(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;Lde/mrapp/android/dialog/ScrollableArea$Area;)Landroidx/core/util/Pair;

    move-result-object v1

    .line 525
    iget-object v3, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v6, v3

    .line 526
    iget-object v3, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v5, v1

    :cond_5
    move-object v3, v7

    move-object v1, v8

    goto :goto_0

    .line 533
    :cond_6
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    if-eqz v0, :cond_7

    .line 535
    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 537
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 538
    invoke-virtual {v2}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v6

    iget-object v3, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 539
    invoke-virtual {v3}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    invoke-virtual {v4}, Lde/mrapp/android/dialog/view/ScrollView;->getPaddingBottom()I

    move-result v4

    .line 537
    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mrapp/android/dialog/view/ScrollView;->setPadding(IIII)V

    :cond_7
    return-void
.end method

.method private adaptDividerColor()V
    .locals 2

    .line 932
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerColor(Lde/mrapp/android/dialog/view/Divider;)V

    .line 933
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerColor(Lde/mrapp/android/dialog/view/Divider;)V

    .line 935
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 936
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/Divider;

    .line 937
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerColor(Lde/mrapp/android/dialog/view/Divider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adaptDividerColor(Lde/mrapp/android/dialog/view/Divider;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 950
    iget v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerColor:I

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/view/Divider;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private adaptDividerMargin()V
    .locals 2

    .line 958
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerMargin(Lde/mrapp/android/dialog/view/Divider;)V

    .line 959
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerMargin(Lde/mrapp/android/dialog/view/Divider;)V

    .line 961
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 962
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/Divider;

    .line 963
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerMargin(Lde/mrapp/android/dialog/view/Divider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adaptDividerMargin(Lde/mrapp/android/dialog/view/Divider;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 976
    invoke-virtual {p1}, Lde/mrapp/android/dialog/view/Divider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 978
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 979
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 980
    iget v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method

.method private adaptDividerVisibilities()V
    .locals 3

    .line 588
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ScrollView;->isScrolledToTop()Z

    move-result v0

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    invoke-virtual {v2}, Lde/mrapp/android/dialog/view/ScrollView;->isScrolledToBottom()Z

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities(ZZZ)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->listView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 592
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->isListViewScrolledToTop(Landroid/widget/AbsListView;)Z

    move-result v0

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->listView:Landroid/widget/AbsListView;

    .line 593
    invoke-direct {p0, v2}, Lde/mrapp/android/dialog/view/DialogRootView;->isListViewScrolledToBottom(Landroid/widget/AbsListView;)Z

    move-result v2

    .line 592
    invoke-direct {p0, v0, v2, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities(ZZZ)V

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 595
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->isRecyclerViewScrolledToTop(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 596
    invoke-direct {p0, v2}, Lde/mrapp/android/dialog/view/DialogRootView;->isRecyclerViewScrolledToBottom(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    .line 595
    invoke-direct {p0, v0, v2, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities(ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private adaptDividerVisibilities(ZZZ)V
    .locals 3

    .line 610
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/Divider;->isVisibleByDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->showDividersOnScroll:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {v0, p1, p3}, Lde/mrapp/android/dialog/view/Divider;->setVisibility(IZ)V

    .line 616
    :cond_2
    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lde/mrapp/android/dialog/view/Divider;->isVisibleByDefault()Z

    move-result p1

    if-nez p1, :cond_5

    .line 617
    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->showDividersOnScroll:Z

    if-nez p2, :cond_4

    :cond_3
    const/4 v1, 0x4

    :cond_4
    invoke-virtual {p1, v1, p3}, Lde/mrapp/android/dialog/view/Divider;->setVisibility(IZ)V

    :cond_5
    return-void
.end method

.method private adaptWindowBackgroundAndInsets()V
    .locals 4

    .line 361
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getLeftInset()I

    move-result v0

    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getTopInset()I

    move-result v1

    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getRightInset()I

    move-result v2

    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getBottomInset()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 362
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->invalidate()V

    return-void
.end method

.method private addAreas()V
    .locals 8

    .line 369
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->areas:Ljava/util/SortedMap;

    if-eqz v0, :cond_6

    .line 370
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->removeAllViews()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 372
    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    .line 373
    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    .line 377
    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->areas:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 379
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 381
    iget-object v6, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-virtual {v6, v5}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 383
    invoke-virtual {v6, v0}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->addDivider()Lde/mrapp/android/dialog/view/Divider;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    .line 387
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->inflateScrollView(Lde/mrapp/android/dialog/ScrollableArea;)V

    .line 388
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 389
    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    invoke-virtual {v0, v2}, Lde/mrapp/android/dialog/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 391
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 392
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewChildLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 393
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 395
    :cond_2
    iget-object v6, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez v6, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 396
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea;->getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 397
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea;->getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v0

    invoke-virtual {v5}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 398
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq v5, v0, :cond_3

    .line 399
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->addDivider()Lde/mrapp/android/dialog/view/Divider;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    .line 402
    :cond_3
    invoke-virtual {p0, v4}, Lde/mrapp/android/dialog/view/DialogRootView;->addView(Landroid/view/View;)V

    .line 405
    :goto_2
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq v5, v0, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v3, v0

    move-object v0, v5

    goto/16 :goto_0

    .line 409
    :cond_5
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptAreaPadding()V

    .line 410
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->findListOrRecyclerView()V

    :cond_6
    return-void
.end method

.method private addDivider()Lde/mrapp/android/dialog/view/Divider;
    .locals 4

    .line 480
    new-instance v0, Lde/mrapp/android/dialog/view/Divider;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/mrapp/android/dialog/view/Divider;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 481
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/Divider;->setVisibility(I)V

    .line 482
    iget v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerColor:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/Divider;->setBackgroundColor(I)V

    .line 483
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lde/mrapp/android/util/DisplayUtil;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 485
    iget v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 486
    iget v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 487
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private addDividers()V
    .locals 4

    .line 461
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 462
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->BOTTOM:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez v2, :cond_1

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    sget-object v3, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 463
    invoke-virtual {v2, v3}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/Divider;

    iput-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->bottomDivider:Lde/mrapp/android/dialog/view/Divider;

    goto :goto_0

    .line 465
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->TOP:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    if-nez v2, :cond_0

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    sget-object v3, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 466
    invoke-virtual {v2, v3}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/Divider;

    iput-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->topDivider:Lde/mrapp/android/dialog/view/Divider;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addViewSpacing(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;Lde/mrapp/android/dialog/ScrollableArea$Area;)Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            "Landroid/view/View;",
            "Lde/mrapp/android/dialog/ScrollableArea$Area;",
            ")",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 769
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_title_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 771
    :cond_0
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne p1, v0, :cond_1

    .line 772
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_message_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 775
    :goto_0
    sget-object v2, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 776
    invoke-virtual {v2, p3}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v0, p1

    move v3, v0

    move v0, p1

    goto :goto_1

    .line 780
    :cond_2
    sget-object v2, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne p3, v2, :cond_3

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 781
    invoke-virtual {p1, p3}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 783
    div-int/lit8 p1, v0, 0x2

    sub-int/2addr v0, p1

    move v5, v0

    move v0, p1

    move p1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eq v0, v1, :cond_4

    .line 788
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 789
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v0

    .line 788
    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 792
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private applyDialogPaddingBottom(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V
    .locals 4

    .line 743
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    .line 744
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private applyDialogPaddingLeft(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V
    .locals 3

    .line 694
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    aget v1, p1, v1

    .line 696
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 697
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 696
    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private applyDialogPaddingRight(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)V
    .locals 3

    .line 728
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 730
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 731
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 730
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private applyDialogPaddingTop(Lde/mrapp/android/dialog/ScrollableArea$Area;Landroid/view/View;)Z
    .locals 4

    .line 709
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eq p1, v0, :cond_0

    .line 710
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 711
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 712
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 711
    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private createListViewScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .line 884
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$4;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/view/DialogRootView$4;-><init>(Lde/mrapp/android/dialog/view/DialogRootView;)V

    return-object v0
.end method

.method private createRecyclerViewScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 910
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$5;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/view/DialogRootView$5;-><init>(Lde/mrapp/android/dialog/view/DialogRootView;)V

    return-object v0
.end method

.method private createScrollViewChildLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 833
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$2;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/view/DialogRootView$2;-><init>(Lde/mrapp/android/dialog/view/DialogRootView;)V

    return-object v0
.end method

.method private createScrollViewLayoutListener(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 572
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$1;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView$1;-><init>(Lde/mrapp/android/dialog/view/DialogRootView;Landroid/view/View;)V

    return-object v0
.end method

.method private createScrollViewScrollListener()Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;
    .locals 1

    .line 865
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$3;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/view/DialogRootView$3;-><init>(Lde/mrapp/android/dialog/view/DialogRootView;)V

    return-object v0
.end method

.method private findListOrRecyclerView()V
    .locals 1

    .line 419
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    if-nez v0, :cond_0

    .line 420
    sget v0, Lde/mrapp/android/dialog/R$id;->content_container:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/view/DialogRootView;->findListOrRecyclerView(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private findListOrRecyclerView(Landroid/view/View;)Z
    .locals 4

    .line 436
    instance-of v0, p1, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 437
    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->listView:Landroid/widget/AbsListView;

    .line 438
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->createListViewScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return v1

    .line 440
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 441
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 442
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->createRecyclerViewScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return v1

    .line 444
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 445
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 447
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lde/mrapp/android/dialog/view/DialogRootView;->findListOrRecyclerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private getBottomInset()I
    .locals 1

    .line 1022
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getLeftInset()I
    .locals 1

    .line 992
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getRightInset()I
    .locals 1

    .line 1012
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getTopInset()I
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private inflateScrollView(Lde/mrapp/android/dialog/ScrollableArea;)V
    .locals 3

    .line 803
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    if-nez v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 805
    sget v1, Lde/mrapp/android/dialog/R$layout;->material_dialog_scroll_view:I

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/view/ScrollView;

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 807
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewScrollListener()Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/ScrollView;->addScrollListener(Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;)V

    .line 808
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/ScrollView;->setDescendantFocusability(I)V

    .line 809
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/ScrollView;->setFocusableInTouchMode(Z)V

    .line 811
    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea;->getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v0

    .line 812
    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea;->getTopScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 813
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 814
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 815
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Lde/mrapp/android/dialog/view/ScrollView;->addView(Landroid/view/View;II)V

    .line 819
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/view/DialogRootView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    .line 348
    invoke-static {v0, v0}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->showDividersOnScroll:Z

    .line 350
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$color;->divider_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerColor:I

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    .line 352
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    .line 353
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->paint:Landroid/graphics/Paint;

    .line 354
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private isListViewScrolledToBottom(Landroid/widget/AbsListView;)Z
    .locals 4

    .line 631
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 632
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 633
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method private isListViewScrolledToTop(Landroid/widget/AbsListView;)Z
    .locals 3

    .line 651
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 652
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 655
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isRecyclerViewScrolledToBottom(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 671
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private isRecyclerViewScrolledToTop(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    const/4 v0, -0x1

    .line 682
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private registerScrollLayoutListener()V
    .locals 2

    .line 550
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    .line 552
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewLayoutListener(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->listView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->listView:Landroid/widget/AbsListView;

    .line 555
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewLayoutListener(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 557
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 558
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->createScrollViewLayoutListener(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final addAreas(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1213
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;-><init>(Lde/mrapp/android/dialog/view/DialogRootView$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->areas:Ljava/util/SortedMap;

    .line 1214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividers:Ljava/util/Map;

    .line 1216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/DialogRootView$ViewType;

    .line 1218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1220
    instance-of v2, v1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    if-eqz v2, :cond_1

    .line 1221
    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->areas:Ljava/util/SortedMap;

    check-cast v1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->getArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1222
    :cond_1
    instance-of v2, v1, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;

    if-eqz v2, :cond_0

    instance-of v2, v0, Lde/mrapp/android/dialog/view/Divider;

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividers:Ljava/util/Map;

    check-cast v1, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->getLocation()Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    move-result-object v1

    check-cast v0, Lde/mrapp/android/dialog/view/Divider;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1227
    :cond_2
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->addAreas()V

    .line 1228
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->addDividers()V

    .line 1229
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->registerScrollLayoutListener()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1264
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getWidth()I

    move-result v0

    .line 1266
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getHeight()I

    move-result v1

    .line 1267
    iget-object v2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1268
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1269
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1270
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getScrollView()Lde/mrapp/android/dialog/view/ScrollView;
    .locals 1

    .line 1156
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollView:Lde/mrapp/android/dialog/view/ScrollView;

    return-object v0
.end method

.method public final onAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 1239
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptAreaPadding()V

    return-void
.end method

.method public final onAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 1234
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptAreaPadding()V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    .line 1252
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1255
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingBitmap:Landroid/graphics/Bitmap;

    .line 1256
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->backingCanvas:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 1302
    iget v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxWidth:I

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1303
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getLeftInset()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getRightInset()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1305
    :goto_0
    iget v3, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxHeight:I

    if-eq v3, v2, :cond_1

    .line 1306
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getLeftInset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getRightInset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v0, v2, :cond_2

    move p1, v0

    :cond_2
    if-eq v1, v2, :cond_3

    move p2, v1

    .line 1308
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1276
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    if-nez v0, :cond_2

    .line 1277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1279
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1281
    iget-object v3, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1282
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1285
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getWidth()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 1286
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->getHeight()I

    move-result v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 1287
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1291
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public final performClick()Z
    .locals 1

    .line 1297
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setDividerColor(I)V
    .locals 0

    .line 1189
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerColor:I

    .line 1190
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerColor()V

    return-void
.end method

.method public final setDividerMargin(I)V
    .locals 3

    .line 1200
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The margin must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1201
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dividerMargin:I

    .line 1202
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerMargin()V

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 0

    .line 1113
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->fullscreen:Z

    .line 1114
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptWindowBackgroundAndInsets()V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1140
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The maximum height must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1143
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxHeight:I

    .line 1144
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->requestLayout()V

    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1125
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The maximum width must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1128
    :cond_0
    iput p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->maxWidth:I

    .line 1129
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->requestLayout()V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 1244
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->dialogPadding:[I

    .line 1245
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptAreaPadding()V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea;)V
    .locals 2

    .line 1166
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The scrollable area may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->scrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 1168
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->addAreas()V

    return-void
.end method

.method public final setWindowBackgroundAndInset(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowBackground:Landroid/graphics/drawable/Drawable;

    .line 1103
    iput-object p2, p0, Lde/mrapp/android/dialog/view/DialogRootView;->windowInsets:Landroid/graphics/Rect;

    .line 1104
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptWindowBackgroundAndInsets()V

    return-void
.end method

.method public final showDividersOnScroll(Z)V
    .locals 0

    .line 1179
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/DialogRootView;->showDividersOnScroll:Z

    .line 1180
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView;->adaptDividerVisibilities()V

    return-void
.end method
