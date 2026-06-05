.class public Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "HeaderAndFooterRecyclerView.java"

# interfaces
.implements Lde/mrapp/android/util/view/HeaderAndFooterAdapterView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;
    }
.end annotation


# instance fields
.field private adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

.field private final footers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 322
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    return-object p0
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 274
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addFooterView(Landroid/view/View;)V
    .locals 2

    .line 374
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final addHeaderView(Landroid/view/View;)V
    .locals 2

    .line 327
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 421
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->getEncapsulatedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getFooterView(I)Landroid/view/View;
    .locals 1

    .line 411
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getFooterViewsCount()I
    .locals 1

    .line 416
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 364
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getHeaderViewsCount()I
    .locals 1

    .line 369
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeAllFooterViews()V
    .locals 1

    .line 404
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 405
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeAllHeaderViews()V
    .locals 1

    .line 357
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeFooterView(I)Landroid/view/View;
    .locals 1

    .line 397
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 398
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-object p1
.end method

.method public final removeFooterView(Landroid/view/View;)V
    .locals 2

    .line 381
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getFooterViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 384
    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 387
    iget-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->footers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 388
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final removeHeaderView(I)Landroid/view/View;
    .locals 1

    .line 350
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 351
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    return-object p1
.end method

.method public final removeHeaderView(Landroid/view/View;)V
    .locals 2

    .line 334
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 337
    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 340
    iget-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->headers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 341
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 427
    new-instance v0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    .line 428
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->adapter:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;

    .line 431
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    return-void
.end method
