.class final Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IconDialogPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialogPresenter;->waitForIconPack(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $state:Landroid/os/Bundle;

.field final synthetic $view:Lcom/maltaisn/icondialog/IconDialogContract$View;

.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;


# direct methods
.method constructor <init>(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    iput-object p2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    iput-object p3, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$state:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->access$getIconPack$p(Lcom/maltaisn/icondialog/IconDialogPresenter;)Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$state:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->access$initialize(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;->$state:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->access$waitForIconPack(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
