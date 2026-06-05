.class public Lcom/mikepenz/fastadapter/adapters/ItemFilter;
.super Landroid/widget/Filter;
.source "ItemFilter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Landroid/widget/Filter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemFilter.kt\ncom/mikepenz/fastadapter/adapters/ItemFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,291:1\n1396#2:292\n1657#2,3:293\n1397#2:296\n783#2,2:297\n1648#2,2:299\n706#2:301\n783#2,2:302\n310#2,7:304\n*E\n*S KotlinDebug\n*F\n+ 1 ItemFilter.kt\ncom/mikepenz/fastadapter/adapters/ItemFilter\n*L\n37#1:292\n37#1,3:293\n37#1:296\n48#1,2:297\n63#1,2:299\n86#1:301\n86#1,2:302\n134#1,7:304\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\u00020\u0006B\u0019\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008\u00a2\u0006\u0002\u0010\tJ+\u0010(\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0012\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010*\"\u00028\u0001H\u0007\u00a2\u0006\u0002\u0010+J3\u0010(\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010,\u001a\u00020&2\u0012\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010*\"\u00028\u0001H\u0007\u00a2\u0006\u0002\u0010-J&\u0010(\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010,\u001a\u00020&2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00010.J\u001e\u0010(\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00010.J\u0010\u0010/\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u0008J\u000e\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u000bJ\u0013\u00103\u001a\u00020&2\u0006\u0010\u0013\u001a\u00028\u0001\u00a2\u0006\u0002\u00104J\u000e\u00103\u001a\u00020&2\u0006\u00105\u001a\u000206J \u00107\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u00108\u001a\u00020&2\u0006\u00109\u001a\u00020&J\u0012\u0010:\u001a\u00020;2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014J\u001a\u0010<\u001a\u0002012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010=\u001a\u00020;H\u0014J\u0018\u0010>\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010,\u001a\u00020&J \u0010?\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010,\u001a\u00020&2\u0006\u0010@\u001a\u00020&J\u0006\u0010A\u001a\u000201J(\u0010B\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00010\u00082\u0006\u0010,\u001a\u00020&2\u0006\u0010\u0013\u001a\u00028\u0001H\u0086\u0002\u00a2\u0006\u0002\u0010CR\"\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eRN\u0010\u000f\u001a6\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0015\u0012\u0013\u0018\u00010\u000b\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00010\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010$\u00a8\u0006D"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/adapters/ItemFilter;",
        "Model",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Landroid/widget/Filter;",
        "itemAdapter",
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V",
        "<set-?>",
        "",
        "constraint",
        "getConstraint",
        "()Ljava/lang/CharSequence;",
        "filterPredicate",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "getFilterPredicate",
        "()Lkotlin/jvm/functions/Function2;",
        "setFilterPredicate",
        "(Lkotlin/jvm/functions/Function2;)V",
        "itemFilterListener",
        "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;",
        "getItemFilterListener",
        "()Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;",
        "setItemFilterListener",
        "(Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;)V",
        "originalItems",
        "",
        "selectedItems",
        "",
        "getSelectedItems",
        "()Ljava/util/Set;",
        "selections",
        "",
        "getSelections",
        "add",
        "items",
        "",
        "([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "position",
        "(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "",
        "clear",
        "filterItems",
        "",
        "filter",
        "getAdapterPosition",
        "(Lcom/mikepenz/fastadapter/IItem;)I",
        "identifier",
        "",
        "move",
        "fromPosition",
        "toPosition",
        "performFiltering",
        "Landroid/widget/Filter$FilterResults;",
        "publishResults",
        "results",
        "remove",
        "removeRange",
        "itemCount",
        "resetFilter",
        "set",
        "(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private constraint:Ljava/lang/CharSequence;

.field private filterPredicate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-TItem;-",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field

.field private itemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private originalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;)V"
        }
    .end annotation

    const-string v0, "itemAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-void
.end method


# virtual methods
.method public final add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 189
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v2

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 194
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 197
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final varargs add(I[Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/mikepenz/fastadapter/IItem;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "asList(*items)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    return-object p1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 161
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 163
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final varargs add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mikepenz/fastadapter/IItem;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 287
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final filterItems(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    return-void
.end method

.method public final getAdapterPosition(J)I
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 306
    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 134
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(J)I

    move-result p1

    return p1
.end method

.method public final getConstraint()Ljava/lang/CharSequence;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getFilterPredicate()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TItem;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getItemFilterListener()Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<",
            "TItem;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TItem;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 297
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 48
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_1
    check-cast v1, Ljava/util/HashSet;

    check-cast v1, Ljava/util/Set;

    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    const-class v1, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelectedItems()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 52
    :cond_4
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getSelections()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 36
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    .line 37
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 294
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 292
    :cond_0
    check-cast v5, Lcom/mikepenz/fastadapter/IItem;

    .line 37
    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 292
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move v4, v6

    goto :goto_0

    .line 296
    :cond_3
    check-cast v0, Ljava/util/HashSet;

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    goto :goto_2

    .line 38
    :cond_4
    const-class v1, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelections()Ljava/util/Set;

    move-result-object v3

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    .line 39
    :cond_6
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    :goto_3
    return-object v3

    .line 35
    :cond_7
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v2

    .line 232
    iget-object v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v3}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v3

    sub-int/2addr v2, v1

    .line 233
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/fastadapter/IItem;

    .line 234
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int/2addr v3, v1

    .line 235
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 55
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 299
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 64
    invoke-interface {v2, p1}, Lcom/mikepenz/fastadapter/IAdapterExtension;->performFiltering(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_2
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    .line 71
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    :goto_1
    if-eqz p1, :cond_8

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_7

    .line 87
    check-cast v1, Ljava/lang/Iterable;

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 302
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/mikepenz/fastadapter/IItem;

    .line 87
    invoke-interface {v2, v5, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    :cond_6
    check-cast v3, Ljava/util/List;

    goto :goto_3

    .line 88
    :cond_7
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 90
    :goto_3
    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_5

    .line 78
    :cond_8
    :goto_4
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 81
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->onReset()V

    :cond_9
    :goto_5
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    const-string v0, "results"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<Item>"

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    if-eqz v0, :cond_3

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_2

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;->itemsFiltered(Ljava/lang/CharSequence;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v2

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 254
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v2

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    .line 270
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    sub-int v4, p1, v2

    .line 272
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final resetFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    return-void
.end method

.method public final set(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "*TItem;>;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/mikepenz/fastadapter/IIdentifyable;

    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I

    move-result v2

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 214
    invoke-interface {v0, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V

    .line 217
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final setFilterPredicate(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TItem;-",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setItemFilterListener(Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/listeners/ItemFilterListener<",
            "TItem;>;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemFilterListener:Lcom/mikepenz/fastadapter/listeners/ItemFilterListener;

    return-void
.end method
