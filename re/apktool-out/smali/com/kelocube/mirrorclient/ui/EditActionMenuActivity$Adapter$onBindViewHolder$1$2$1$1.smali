.class final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "action",
        "",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    .line 81
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->actionHold:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;->access$getContext$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kelocube/mirrorclient/R$string;->edit_am_hold_action:I

    sget-object v2, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    invoke-static {v3}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;->access$getParseContext$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;)Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    move-result-object v3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->$model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getHoldAction()I

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/kelocube/mirrorclient/models/Action$Companion;->toString$default(Lcom/kelocube/mirrorclient/models/Action$Companion;Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;->notifyDataSetChanged()V

    return-void
.end method
