.class public final Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;
.super Ljava/lang/Object;
.source "EventHookUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001\"\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u0005*\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a.\u0010\n\u001a\u00020\u0001*\u001c\u0012\u0018\u0012\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00050\u00060\u000b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "attachToView",
        "",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook;",
        "viewHolder",
        "view",
        "Landroid/view/View;",
        "bind",
        "",
        "fastadapter"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "TItem;>;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$attachToView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/ClickEventHook;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$1;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$1;-><init>(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 57
    :cond_0
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/LongClickEventHook;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$2;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$2;-><init>(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 73
    :cond_1
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$attachToView$3;-><init>(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 90
    :cond_2
    instance-of v0, p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;

    invoke-virtual {p0, p2, p1}, Lcom/mikepenz/fastadapter/listeners/CustomEventHook;->attachEvent(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final bind(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/mikepenz/fastadapter/listeners/EventHook<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;>;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$bind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 21
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {v0, p1, v1}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 25
    :cond_1
    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook;->onBindMany(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 28
    invoke-static {v0, p1, v2}, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt;->attachToView(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method
