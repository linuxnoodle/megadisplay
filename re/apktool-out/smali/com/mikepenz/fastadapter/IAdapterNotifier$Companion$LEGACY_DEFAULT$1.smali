.class public final Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion$LEGACY_DEFAULT$1;
.super Ljava/lang/Object;
.source "IAdapterNotifier.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/IAdapterNotifier$DefaultImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/mikepenz/fastadapter/IAdapterNotifier$Companion$LEGACY_DEFAULT$1",
        "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
        "notify",
        "",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "newItemsCount",
        "",
        "previousItemsCount",
        "itemsBeforeThisAdapter",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "*>;III)Z"
        }
    .end annotation

    const-string v0, "fastAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p2, p3, :cond_1

    if-lez p3, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p4

    move v3, p3

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;IILjava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    add-int/2addr p4, p3

    sub-int/2addr p2, p3

    .line 46
    invoke-virtual {p1, p4, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeInserted(II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    if-le p3, p2, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p4

    move v3, p2

    .line 49
    invoke-static/range {v1 .. v6}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;IILjava/lang/Object;ILjava/lang/Object;)V

    add-int/2addr p4, p2

    sub-int/2addr p3, p2

    .line 50
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    .line 52
    invoke-virtual {p1, p4, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
