.class public abstract Lcom/mikepenz/fastadapter/items/ModelBaseItem;
.super Lcom/mikepenz/fastadapter/items/BaseItem;
.source "ModelBaseItem.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IModelItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/mikepenz/fastadapter/items/BaseItem<",
        "TVH;>;",
        "Lcom/mikepenz/fastadapter/IModelItem<",
        "TModel;TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0006\u001a\u00028\u0000X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/items/ModelBaseItem;",
        "Model",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/items/BaseItem;",
        "Lcom/mikepenz/fastadapter/IModelItem;",
        "model",
        "(Ljava/lang/Object;)V",
        "getModel",
        "()Ljava/lang/Object;",
        "setModel",
        "Ljava/lang/Object;",
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
.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/BaseItem;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/ModelBaseItem;->model:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TModel;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mikepenz/fastadapter/items/ModelBaseItem;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/mikepenz/fastadapter/items/ModelBaseItem;->model:Ljava/lang/Object;

    return-void
.end method
