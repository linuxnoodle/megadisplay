.class public abstract Lcom/mikepenz/fastadapter/listeners/CustomEventHook;
.super Ljava/lang/Object;
.source "CustomEventHook.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/listeners/EventHook;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook<",
        "TItem;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H&J\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u0003H\u0007J\u0017\u0010\u000e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000b\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/listeners/CustomEventHook;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/listeners/EventHook;",
        "()V",
        "attachEvent",
        "",
        "view",
        "Landroid/view/View;",
        "viewHolder",
        "getFastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "getItem",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attachEvent(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public final getFastAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced with the new helper inside the FastAdapter class"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FastAdapter.getFromHolderTag(viewHolder)"
            imports = {
                "com.mikepenz.fastadapter.FastAdapter"
            }
        .end subannotation
    .end annotation

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getFromHolderTag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final getItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")TItem;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced with the new helper inside the FastAdapter class"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FastAdapter.getHolderAdapterItem(viewHolder)"
            imports = {
                "com.mikepenz.fastadapter.FastAdapter"
            }
        .end subannotation
    .end annotation

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->getHolderAdapterItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook$DefaultImpls;->onBind(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onBindMany(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/listeners/EventHook$DefaultImpls;->onBindMany(Lcom/mikepenz/fastadapter/listeners/EventHook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
