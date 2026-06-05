.class public abstract Lcom/mikepenz/fastadapter/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapter<",
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
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/AbstractAdapter;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "()V",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "getFastAdapter",
        "()Lcom/mikepenz/fastadapter/FastAdapter;",
        "setFastAdapter",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)V",
        "order",
        "",
        "getOrder",
        "()I",
        "setOrder",
        "(I)V",
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
.field private fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private order:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->order:I

    return-void
.end method


# virtual methods
.method public getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->order:I

    return v0
.end method

.method public peekAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/mikepenz/fastadapter/IAdapter$DefaultImpls;->peekAdapterItem(Lcom/mikepenz/fastadapter/IAdapter;I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method

.method public setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/mikepenz/fastadapter/AbstractAdapter;->order:I

    return-void
.end method
