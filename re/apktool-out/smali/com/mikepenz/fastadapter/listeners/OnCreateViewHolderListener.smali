.class public interface abstract Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;
.super Ljava/lang/Object;
.source "OnCreateViewHolderListener.kt"


# annotations
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u00020\u0005J*\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\t\u001a\u00020\u00032\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000bH&J2\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000bH&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/listeners/OnCreateViewHolderListener;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "",
        "onPostCreateViewHolder",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "viewHolder",
        "itemVHFactory",
        "Lcom/mikepenz/fastadapter/IItemVHFactory;",
        "onPreCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onPostCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/IItemVHFactory;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation
.end method

.method public abstract onPreCreateViewHolder(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/ViewGroup;ILcom/mikepenz/fastadapter/IItemVHFactory;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/mikepenz/fastadapter/IItemVHFactory<",
            "*>;)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation
.end method
