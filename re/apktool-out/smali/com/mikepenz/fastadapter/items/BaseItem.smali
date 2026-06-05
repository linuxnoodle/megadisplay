.class public abstract Lcom/mikepenz/fastadapter/items/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IItem<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J#\u0010\"\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u00002\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00190$H\u0017\u00a2\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0013\u0010\'\u001a\u00020\u00102\u0008\u0010(\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0010\u0010\'\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*H\u0016J\u0015\u0010+\u001a\u00020\u00102\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010,J\u0008\u0010-\u001a\u00020*H\u0016J\u0015\u0010.\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!R\u001c\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006/"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/items/BaseItem;",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/IItem;",
        "()V",
        "factory",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "getFactory",
        "()Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "identifier",
        "",
        "getIdentifier",
        "()J",
        "setIdentifier",
        "(J)V",
        "isEnabled",
        "",
        "()Z",
        "setEnabled",
        "(Z)V",
        "isSelectable",
        "setSelectable",
        "isSelected",
        "setSelected",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/Object;",
        "setTag",
        "(Ljava/lang/Object;)V",
        "attachToWindow",
        "",
        "holder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "bindView",
        "payloads",
        "",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V",
        "detachFromWindow",
        "equals",
        "other",
        "id",
        "",
        "failedToRecycle",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "hashCode",
        "unbindView",
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
.field private final factory:Lcom/mikepenz/fastadapter/IItemVHFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private identifier:J

.field private isEnabled:Z

.field private isSelectable:Z

.field private isSelected:Z

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->identifier:J

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isEnabled:Z

    .line 34
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelectable:Z

    return-void
.end method


# virtual methods
.method public attachToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public detachFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public equals(I)Z
    .locals 4

    int-to-long v0, p1

    .line 71
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/BaseItem;->getIdentifier()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 75
    move-object v0, p0

    check-cast v0, Lcom/mikepenz/fastadapter/items/BaseItem;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    instance-of v2, p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    if-nez v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    check-cast p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 78
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/BaseItem;->getIdentifier()J

    move-result-wide v2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public failedToRecycle(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getFactory()Lcom/mikepenz/fastadapter/IItemVHFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "TVH;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->factory:Lcom/mikepenz/fastadapter/IItemVHFactory;

    return-object v0
.end method

.method public getIdentifier()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->identifier:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/items/BaseItem;->getIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isEnabled:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelected:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isEnabled:Z

    return-void
.end method

.method public setIdentifier(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->identifier:J

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelectable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->isSelected:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/BaseItem;->tag:Ljava/lang/Object;

    return-void
.end method

.method public unbindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
