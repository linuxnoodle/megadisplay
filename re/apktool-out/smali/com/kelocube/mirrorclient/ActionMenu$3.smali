.class final Lcom/kelocube/mirrorclient/ActionMenu$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ActionMenu;-><init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ActionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$3;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ActionMenu$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$3;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu$3;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->setOpen(Z)V

    return-void
.end method
