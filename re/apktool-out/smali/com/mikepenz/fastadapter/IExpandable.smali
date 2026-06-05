.class public interface abstract Lcom/mikepenz/fastadapter/IExpandable;
.super Ljava/lang/Object;
.source "IExpandable.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IParentItem;
.implements Lcom/mikepenz/fastadapter/ISubItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IParentItem<",
        "TVH;>;",
        "Lcom/mikepenz/fastadapter/ISubItem<",
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\u0006X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\u0007\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IExpandable;",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/IParentItem;",
        "Lcom/mikepenz/fastadapter/ISubItem;",
        "isAutoExpanding",
        "",
        "()Z",
        "isExpanded",
        "setExpanded",
        "(Z)V",
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
.method public abstract isAutoExpanding()Z
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract setExpanded(Z)V
.end method
