.class final Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        "",
        "ctrl",
        "",
        "alt",
        "shift",
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

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->invoke(Ljava/lang/String;ZZZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object v0, v0, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modCtrl:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modAlt:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;->$this_apply:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modShift:Landroid/widget/CheckBox;

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
