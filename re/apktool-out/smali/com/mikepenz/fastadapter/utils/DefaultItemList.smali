.class public abstract Lcom/mikepenz/fastadapter/utils/DefaultItemList;
.super Ljava/lang/Object;
.source "DefaultItemList.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItemList<",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR4\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00082\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00088F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/DefaultItemList;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/IItemList;",
        "()V",
        "_fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "active",
        "",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "value",
        "fastAdapter",
        "getFastAdapter",
        "()Lcom/mikepenz/fastadapter/FastAdapter;",
        "setFastAdapter",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)V",
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
.field private _fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->active:Z

    return-void
.end method


# virtual methods
.method public getActive()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->active:Z

    return v0
.end method

.method public final getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->getActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->_fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public peek(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 11
    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/IItemList$DefaultImpls;->peek(Lcom/mikepenz/fastadapter/IItemList;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public setActive(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->active:Z

    return-void
.end method

.method public final setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->_fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method
