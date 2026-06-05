.class final Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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
.field final synthetic $this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2

    .line 30
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/models/Action$Companion;->canModify(I)Z

    move-result p1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    .line 31
    iget-object v1, v0, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modCtrl:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 32
    iget-object v1, v0, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modAlt:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 33
    iget-object v0, v0, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modShift:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method
