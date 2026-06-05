.class public final Lcom/mikepenz/fastadapter/IItemList$DefaultImpls;
.super Ljava/lang/Object;
.source "IItemList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IItemList;
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
.method public static peek(Lcom/mikepenz/fastadapter/IItemList;I)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/IItemList<",
            "TItem;>;I)TItem;"
        }
    .end annotation

    .line 40
    invoke-interface {p0, p1}, Lcom/mikepenz/fastadapter/IItemList;->get(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p0

    return-object p0
.end method
