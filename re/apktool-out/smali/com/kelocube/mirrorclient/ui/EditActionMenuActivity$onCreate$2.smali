.class final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "args",
        "Landroid/os/Bundle;",
        "icon",
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
.field final synthetic $pack:Lcom/maltaisn/icondialog/pack/IconPack;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;Lcom/maltaisn/icondialog/pack/IconPack;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->$pack:Lcom/maltaisn/icondialog/pack/IconPack;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->invoke(Landroid/os/Bundle;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->getIconDialog()Lcom/maltaisn/icondialog/IconDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maltaisn/icondialog/IconDialog;->setArguments(Landroid/os/Bundle;)V

    .line 198
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->$pack:Lcom/maltaisn/icondialog/pack/IconPack;

    invoke-virtual {p1, p2}, Lcom/maltaisn/icondialog/pack/IconPack;->getIcon(I)Lcom/maltaisn/icondialog/data/Icon;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p2, 0x3bd

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->getIconDialog()Lcom/maltaisn/icondialog/IconDialog;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/maltaisn/icondialog/IconDialog;->setSelectedIconIds(Ljava/util/List;)V

    .line 201
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->getIconDialog()Lcom/maltaisn/icondialog/IconDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "icon_picker"

    invoke-virtual {p1, p2, v0}, Lcom/maltaisn/icondialog/IconDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
