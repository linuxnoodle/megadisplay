.class public Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;,
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$NoChoiceMode;,
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;,
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;,
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;,
        Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper<",
        "TVH;>;>;"
    }
.end annotation


# instance fields
.field private final choiceMode:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

.field private disabledItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private itemClickListener:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;

.field private itemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

.field private itemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

.field private final wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 347
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The wrapped adapter may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The choice mode may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 351
    iput-object p3, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->choiceMode:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

    .line 352
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;)Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemClickListener:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;

    return-object p0
.end method

.method private createCheckableRunnable(Landroid/widget/Checkable;Z)Ljava/lang/Runnable;
    .locals 1

    .line 273
    new-instance v0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;-><init>(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;Landroid/widget/Checkable;Z)V

    return-object v0
.end method

.method private createItemClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 246
    new-instance v0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;-><init>(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;I)V

    return-object v0
.end method

.method private setItemEnabledInternally(IZ)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 296
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 299
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 300
    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 304
    :cond_1
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    if-nez p2, :cond_2

    .line 305
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    .line 308
    :cond_2
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    :cond_3
    :goto_0
    return p1
.end method

.method private setViewEnabled(Landroid/view/View;Z)V
    .locals 2

    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 325
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 327
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setViewEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChoiceMode()Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;
    .locals 1

    .line 395
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->choiceMode:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 484
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 489
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 494
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public final getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public final isItemChecked(I)Z
    .locals 4

    .line 417
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The position must be at least 0"

    const-class v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    .line 419
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The position must be less than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    .line 419
    invoke-virtual {v0, p1, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V

    .line 421
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->choiceMode:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public final isItemEnabled(I)Z
    .locals 5

    .line 454
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The position must be at least 0"

    const-class v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    .line 456
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The position must be less than "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v4, Ljava/lang/IndexOutOfBoundsException;

    .line 456
    invoke-virtual {v0, p1, v1, v2, v4}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V

    .line 458
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->disabledItems:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->onBindViewHolder(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;I)V

    return-void
.end method

.method public final onBindViewHolder(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper<",
            "TVH;>;I)V"
        }
    .end annotation

    .line 515
    invoke-virtual {p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;->getWrappedViewHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 517
    iget-object p1, p1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;->itemView:Landroid/view/View;

    .line 518
    invoke-direct {p0, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->createItemClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {p0, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemEnabled(I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setViewEnabled(Landroid/view/View;Z)V

    .line 520
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 522
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->handler:Landroid/os/Handler;

    check-cast p1, Landroid/widget/Checkable;

    invoke-virtual {p0, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemChecked(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->createCheckableRunnable(Landroid/widget/Checkable;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper<",
            "TVH;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->wrappedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 502
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 503
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 504
    sget v1, Lde/mrapp/android/dialog/R$attr;->selectableItemBackground:I

    invoke-static {p1, v1}, Lde/mrapp/android/util/ThemeUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 506
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance p1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;

    invoke-direct {p1, v0, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ViewHolderWrapper;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object p1
.end method

.method public final setItemChecked(IZ)V
    .locals 4

    .line 432
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The position must be at least 0"

    const-class v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    .line 434
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The position must be less than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    .line 434
    invoke-virtual {v0, p1, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V

    .line 437
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->choiceMode:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;->setItemChecked(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->notifyDataSetChanged()V

    .line 440
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;->onItemSelectionStateChanged(IZ)V

    :cond_0
    return-void
.end method

.method public final setItemEnabled(IZ)V
    .locals 4

    .line 469
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The position must be at least 0"

    const-class v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;Ljava/lang/Class;)V

    .line 471
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The position must be less than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    .line 471
    invoke-virtual {v0, p1, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;Ljava/lang/Class;)V

    .line 473
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemEnabledInternally(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->notifyDataSetChanged()V

    .line 476
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;->onItemEnableStateChanged(IZ)V

    :cond_0
    return-void
.end method

.method public final setOnItemClickListener(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemClickListener:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;

    return-void
.end method

.method public final setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

    return-void
.end method

.method public final setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->itemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

    return-void
.end method
