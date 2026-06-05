.class public final Lcom/mikepenz/fastadapter/IItemAdapter$DefaultImpls;
.super Ljava/lang/Object;
.source "IItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static peekAdapterItem(Lcom/mikepenz/fastadapter/IItemAdapter;I)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "TModel;TItem;>;I)TItem;"
        }
    .end annotation

    check-cast p0, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/IAdapter$DefaultImpls;->peekAdapterItem(Lcom/mikepenz/fastadapter/IAdapter;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setNewList$default(Lcom/mikepenz/fastadapter/IItemAdapter;Ljava/util/List;ZILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/mikepenz/fastadapter/IItemAdapter;->setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setNewList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
