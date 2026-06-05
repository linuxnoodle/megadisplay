.class Lcom/woxthebox/draglistview/AutoScroller;
.super Ljava/lang/Object;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;,
        Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;,
        Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_UPDATE_DELAY:I = 0xc

.field private static final COLUMN_SCROLL_UPDATE_DELAY:I = 0x3e8

.field private static final SCROLL_SPEED_DP:I = 0x8


# instance fields
.field private mAutoScrollMode:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoScrolling:Z

.field private mLastScrollTime:J

.field private mListener:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;

.field private mScrollSpeed:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    iput-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mAutoScrollMode:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    .line 49
    iput-object p2, p0, Lcom/woxthebox/draglistview/AutoScroller;->mListener:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mScrollSpeed:I

    return-void
.end method

.method static synthetic access$000(Lcom/woxthebox/draglistview/AutoScroller;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/AutoScroller;->autoScrollPositionBy(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/woxthebox/draglistview/AutoScroller;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/AutoScroller;->autoScrollColumnBy(I)V

    return-void
.end method

.method private autoScrollColumnBy(I)V
    .locals 5

    .line 117
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/woxthebox/draglistview/AutoScroller;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 119
    iget-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mListener:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;

    invoke-interface {v0, p1}, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollColumnBy(I)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mLastScrollTime:J

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mListener:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollColumnBy(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/woxthebox/draglistview/AutoScroller$2;

    invoke-direct {v1, p0, p1}, Lcom/woxthebox/draglistview/AutoScroller$2;-><init>(Lcom/woxthebox/draglistview/AutoScroller;I)V

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private autoScrollPositionBy(II)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mListener:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollPositionBy(II)V

    .line 100
    iget-object v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/woxthebox/draglistview/AutoScroller$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/woxthebox/draglistview/AutoScroller$1;-><init>(Lcom/woxthebox/draglistview/AutoScroller;II)V

    const-wide/16 p1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startAutoScrollColumnBy(I)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/AutoScroller;->autoScrollColumnBy(I)V

    :cond_0
    return-void
.end method

.method private startAutoScrollPositionBy(II)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/woxthebox/draglistview/AutoScroller;->autoScrollPositionBy(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method isAutoScrolling()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    return v0
.end method

.method setAutoScrollMode(Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mAutoScrollMode:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    return-void
.end method

.method startAutoScroll(Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$3;->$SwitchMap$com$woxthebox$draglistview$AutoScroller$ScrollDirection:[I

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mAutoScrollMode:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    if-ne p1, v0, :cond_1

    .line 82
    iget p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mScrollSpeed:I

    neg-int p1, p1

    invoke-direct {p0, p1, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 84
    invoke-direct {p0, p1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollColumnBy(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mAutoScrollMode:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    sget-object v2, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    if-ne p1, v2, :cond_3

    .line 75
    iget p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mScrollSpeed:I

    invoke-direct {p0, p1, v1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-direct {p0, v0}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollColumnBy(I)V

    goto :goto_0

    .line 71
    :cond_4
    iget p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mScrollSpeed:I

    neg-int p1, p1

    invoke-direct {p0, v1, p1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    goto :goto_0

    .line 68
    :cond_5
    iget p1, p0, Lcom/woxthebox/draglistview/AutoScroller;->mScrollSpeed:I

    invoke-direct {p0, v1, p1}, Lcom/woxthebox/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    :goto_0
    return-void
.end method

.method stopAutoScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/woxthebox/draglistview/AutoScroller;->mIsAutoScrolling:Z

    return-void
.end method
