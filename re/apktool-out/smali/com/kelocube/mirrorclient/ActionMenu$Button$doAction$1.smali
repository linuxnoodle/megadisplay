.class final Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ActionMenu$Button;->doAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "",
        "key",
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
.field final synthetic $action:I

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu;

.field final synthetic this$1:Lcom/kelocube/mirrorclient/ActionMenu$Button;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/ActionMenu$Button;I)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$1:Lcom/kelocube/mirrorclient/ActionMenu$Button;

    iput p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->$action:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 2

    if-eqz p1, :cond_3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;->getOnCommandData()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1$1;

    invoke-direct {v1, p2}, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1$1;-><init>(I)V

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu;->access$setActiveCrop(Lcom/kelocube/mirrorclient/ActionMenu;I)V

    .line 114
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;->getOnSetCrop()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    new-instance p2, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-direct {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;-><init>()V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu;->access$setActiveCrop(Lcom/kelocube/mirrorclient/ActionMenu;I)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$1:Lcom/kelocube/mirrorclient/ActionMenu$Button;

    iget p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->$action:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->access$sendKey(Lcom/kelocube/mirrorclient/ActionMenu$Button;IZ)V

    .line 123
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->this$1:Lcom/kelocube/mirrorclient/ActionMenu$Button;

    iget p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;->$action:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->access$sendKey(Lcom/kelocube/mirrorclient/ActionMenu$Button;IZ)V

    :goto_0
    return-void
.end method
