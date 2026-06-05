.class public interface abstract Lcom/mikepenz/fastadapter/IItemViewGenerator;
.super Ljava/lang/Object;
.source "IItemViewGenerator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IItemViewGenerator;",
        "",
        "generateView",
        "Landroid/view/View;",
        "ctx",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
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
.method public abstract generateView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
