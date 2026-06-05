.class public final Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "LoaderItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/fastadapter/items/AbstractItem<",
        "Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;",
        "Lcom/mikepenz/fastadapter/items/AbstractItem;",
        "Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;",
        "()V",
        "value",
        "",
        "isSelectable",
        "()Z",
        "setSelectable",
        "(Z)V",
        "layoutRes",
        "",
        "getLayoutRes",
        "()I",
        "type",
        "getType",
        "getViewHolder",
        "v",
        "Landroid/view/View;",
        "ViewHolder",
        "aboutlibraries"
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

    .line 12
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutRes()I
    .locals 1

    .line 32
    sget v0, Lcom/mikepenz/aboutlibraries/R$layout;->listloader_opensource:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 24
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->loader_item_id:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSelectable(Z)V
    .locals 0

    return-void
.end method
