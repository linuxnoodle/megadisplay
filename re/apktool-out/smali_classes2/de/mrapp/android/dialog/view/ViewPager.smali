.class public Lde/mrapp/android/dialog/view/ViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ViewPager.java"


# instance fields
.field private dialog:Lde/mrapp/android/dialog/model/MaterialDialog;

.field private swipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final enableSwipe(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/ViewPager;->swipeEnabled:Z

    return-void
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/ViewPager;->swipeEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ViewPager;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 127
    iget-object v0, p0, Lde/mrapp/android/dialog/view/ViewPager;->dialog:Lde/mrapp/android/dialog/model/MaterialDialog;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lde/mrapp/android/dialog/model/MaterialDialog;->getScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/ScrollableArea;->isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p2, p0, Lde/mrapp/android/dialog/view/ViewPager;->dialog:Lde/mrapp/android/dialog/model/MaterialDialog;

    .line 130
    invoke-interface {p2}, Lde/mrapp/android/dialog/model/MaterialDialog;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ViewPager;->isSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ViewPager;->performClick()Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final performClick()Z
    .locals 1

    .line 122
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setDialog(Lde/mrapp/android/dialog/model/MaterialDialog;)V
    .locals 2

    .line 79
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dialog may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lde/mrapp/android/dialog/view/ViewPager;->dialog:Lde/mrapp/android/dialog/model/MaterialDialog;

    return-void
.end method
