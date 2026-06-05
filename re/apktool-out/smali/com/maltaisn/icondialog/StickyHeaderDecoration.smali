.class public final Lcom/maltaisn/icondialog/StickyHeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StickyHeaderDecoration.kt"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0004H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/StickyHeaderDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "callback",
        "Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;",
        "stickyHeaderViewType",
        "",
        "(Landroidx/recyclerview/widget/RecyclerView;Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;I)V",
        "headerViewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "stickyHeaderHeight",
        "getChildInContact",
        "Landroid/view/View;",
        "with",
        "onDrawOver",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "onInterceptTouchEvent",
        "",
        "recyclerView",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "onRequestDisallowInterceptTouchEvent",
        "disallowIntercept",
        "onTouchEvent",
        "setHeaderViewHolder",
        "position",
        "Callback",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

.field private headerViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private stickyHeaderHeight:I

.field private final stickyHeaderViewType:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;I)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    iput p3, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderViewType:I

    const/4 p2, -0x1

    .line 39
    iput p2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderHeight:I

    .line 42
    move-object p2, p0

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private final getChildInContact(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 124
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 125
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 126
    const-string v3, "child"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final setHeaderViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->headerViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderViewType:I

    invoke-interface {v0, v1, v2}, Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->headerViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    invoke-interface {v1, p1}, Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;->getHeaderPositionForItem(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    invoke-interface {v2, v0, p1}, Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 102
    iget p1, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderHeight:I

    if-ne p1, v1, :cond_2

    .line 104
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 105
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 109
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "viewHolder.itemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-static {p1, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 113
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p2

    add-int/2addr v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    invoke-static {v1, v4, p2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 114
    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderHeight:I

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderHeight:I

    invoke-virtual {v3, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 50
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->setHeaderViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 54
    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->getChildInContact(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->callback:Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    invoke-interface {v0, p2}, Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/maltaisn/icondialog/StickyHeaderDecoration;->stickyHeaderHeight:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
