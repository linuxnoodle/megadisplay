.class public final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;
.super Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;
.source "EditActionMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;",
        "Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;",
        "binding",
        "Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;",
        "(Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;)V",
        "getBinding",
        "()Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;


# direct methods
.method public constructor <init>(Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->getRoot()Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/kelocube/mirrorclient/R$id;->layout_root:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;->binding:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;->binding:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    return-object v0
.end method
