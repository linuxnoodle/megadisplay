.class public Lde/mrapp/android/dialog/view/ScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;
    }
.end annotation


# instance fields
.field private scrollListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/dialog/view/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/ScrollView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/ScrollView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 150
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/ScrollView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 65
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/dialog/view/ScrollView;->scrollListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-void
.end method

.method private notifyOnScrolled(ZZ)V
    .locals 2

    .line 77
    iget-object v0, p0, Lde/mrapp/android/dialog/view/ScrollView;->scrollListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;

    .line 78
    invoke-interface {v1, p1, p2}, Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;->onScrolled(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addScrollListener(Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;)V
    .locals 2

    .line 161
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lde/mrapp/android/dialog/view/ScrollView;->scrollListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isScrolledToBottom()Z
    .locals 3

    .line 193
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0, v1}, Lde/mrapp/android/dialog/view/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ScrollView;->getHeight()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isScrolledToTop()Z
    .locals 1

    .line 184
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final onScrollChanged(IIII)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 201
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ScrollView;->isScrolledToTop()Z

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/ScrollView;->isScrolledToBottom()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/view/ScrollView;->notifyOnScrolled(ZZ)V

    return-void
.end method

.method public removeScrollListener(Lde/mrapp/android/dialog/view/ScrollView$ScrollListener;)V
    .locals 2

    .line 174
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lde/mrapp/android/dialog/view/ScrollView;->scrollListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
