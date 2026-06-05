.class final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;->onBindViewHolder(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Dialog;",
        "it",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

.field final synthetic $this_apply:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/models/ActionMenuButton;Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget v0, Lcom/kelocube/mirrorclient/R$string;->edit_am_set_tap_action:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getTapAction()I

    move-result v1

    new-instance v2, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1$1;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    invoke-direct {v2, v3, v4, v5}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1$1;-><init>(Lcom/kelocube/mirrorclient/models/ActionMenuButton;Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt;->editActionDialog(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
