.class public final Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
.super Ljava/lang/Object;
.source "FastAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelativeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000*\u0014\u0008\u0001\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u0004\u0018\u00018\u0001X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "",
        "()V",
        "adapter",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "getAdapter",
        "()Lcom/mikepenz/fastadapter/IAdapter;",
        "setAdapter",
        "(Lcom/mikepenz/fastadapter/IAdapter;)V",
        "item",
        "getItem",
        "()Lcom/mikepenz/fastadapter/IItem;",
        "setItem",
        "(Lcom/mikepenz/fastadapter/IItem;)V",
        "Lcom/mikepenz/fastadapter/IItem;",
        "position",
        "",
        "getPosition",
        "()I",
        "setPosition",
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
.field private adapter:Lcom/mikepenz/fastadapter/IAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private item:Lcom/mikepenz/fastadapter/IItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 846
    iput v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    return-object v0
.end method

.method public final getItem()Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    return v0
.end method

.method public final setAdapter(Lcom/mikepenz/fastadapter/IAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    return-void
.end method

.method public final setItem(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 845
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 846
    iput p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    return-void
.end method
