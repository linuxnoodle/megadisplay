.class Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderAndFooterRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;,
        Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FOOTER:I = 0x10e0

.field public static final VIEW_TYPE_HEADER:I = 0x10df


# instance fields
.field private final encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;


# direct methods
.method public constructor <init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 161
    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 162
    sget-object p1, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The adapter may not be null"

    invoke-virtual {p1, p2, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 164
    invoke-direct {p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->createDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 165
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->setHasStableIds(Z)V

    return-void
.end method

.method private createDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 107
    new-instance v0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$1;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;)V

    return-object v0
.end method


# virtual methods
.method public getEncapsulatedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 176
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 231
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    .line 232
    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 7

    .line 239
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x1f

    add-int v2, v1, v0

    const/16 v3, 0x10df

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e0

    if-eq v0, v3, :cond_0

    .line 244
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v3, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v3}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v3

    long-to-double v3, v3

    .line 245
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/16 p1, 0x20

    ushr-long v5, v3, p1

    xor-long/2addr v3, v5

    long-to-int p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, p1

    int-to-long v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 220
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/16 p1, 0x10df

    return p1

    .line 222
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    const/16 p1, 0x10e0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 200
    instance-of v0, p1, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 201
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-static {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->access$000(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 204
    invoke-static {p2}, Lde/mrapp/android/util/ViewUtil;->removeFromParent(Landroid/view/View;)V

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 206
    :cond_0
    instance-of v0, p1, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;

    if-eqz v0, :cond_1

    .line 207
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-static {v0}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->access$100(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 210
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p2, v1

    .line 209
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 211
    invoke-static {p2}, Lde/mrapp/android/util/ViewUtil;->removeFromParent(Landroid/view/View;)V

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {v1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0x10df

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {p2}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance p2, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$HeaderViewHolder;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_0
    const/16 v0, 0x10e0

    if-ne p2, v0, :cond_1

    .line 188
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->this$0:Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;

    invoke-virtual {p2}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance p2, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper$FooterViewHolder;-><init>(Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;Landroid/view/ViewGroup;)V

    return-object p2

    .line 194
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterRecyclerView$AdapterWrapper;->encapsulatedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
