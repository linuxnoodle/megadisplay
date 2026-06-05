.class public final Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt;
.super Ljava/lang/Object;
.source "TouchEventHook.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchEventHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchEventHook.kt\ncom/mikepenz/fastadapter/listeners/TouchEventHookKt\n*L\n1#1,41:1\n28#1:42\n41#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u00ec\u0001\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0016\u0008\u0001\u0010\u0004\u0018\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005j\u0002`\u0006*\u0008\u0012\u0004\u0012\u0002H\u00040\u00072\u0016\u0008\u0004\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u001c\u0008\u0006\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u0002H\u0002\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c0\t2}\u0008\u0004\u0010\r\u001aw\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00040\u0007\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00180\u000eH\u0086\u0008*\u00fa\u0001\u0010\u0019\u001a\u0004\u0008\u0000\u0010\u0004\"w\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00040\u001a\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00180\u000e2w\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00040\u001a\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u0011H\u0004\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00180\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "addTouchListener",
        "",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "resolveView",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "resolveViews",
        "",
        "onTouch",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "position",
        "fastAdapter",
        "item",
        "",
        "TouchListener",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "adapter",
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
.method public static final synthetic addTouchListener(Lcom/mikepenz/fastadapter/FastAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TVH;+",
            "Landroid/view/View;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TVH;+",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;>;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroid/view/View;",
            "-",
            "Landroid/view/MotionEvent;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;-TItem;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$addTouchListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolveView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolveViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTouch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$2;

    invoke-direct {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function5;)V

    check-cast v0, Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method

.method public static synthetic addTouchListener$default(Lcom/mikepenz/fastadapter/FastAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 27
    sget-object p2, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;->INSTANCE:Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    const-string p4, "$this$addTouchListener"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "resolveView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "resolveViews"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "onTouch"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p4, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$2;

    invoke-direct {p4, p1, p2, p3}, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function5;)V

    check-cast p4, Lcom/mikepenz/fastadapter/listeners/EventHook;

    invoke-virtual {p0, p4}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method
