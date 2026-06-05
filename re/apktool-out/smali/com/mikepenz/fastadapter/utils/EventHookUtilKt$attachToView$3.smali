.class final Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;
.super Ljava/lang/Object;
.source "EventHookUtil.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\u000e\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00072\u000e\u0010\t\u001a\n \u0008*\u0004\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroid/view/MotionEvent;",
        "onTouch"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $this_attachToView:Lcom/mikepenz/fastadapter/listeners/EventHook;

.field final synthetic $viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$this_attachToView:Lcom/mikepenz/fastadapter/listeners/EventHook;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/mikepenz/fastadapter/R$id;->fastadapter_item_adapter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/mikepenz/fastadapter/FastAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v5, v0

    check-cast v5, Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    .line 78
    iget-object v1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_2

    .line 81
    sget-object v1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getHolderAdapterItemTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 84
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;->$this_attachToView:Lcom/mikepenz/fastadapter/listeners/EventHook;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.mikepenz.fastadapter.listeners.TouchEventHook<Item>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method
