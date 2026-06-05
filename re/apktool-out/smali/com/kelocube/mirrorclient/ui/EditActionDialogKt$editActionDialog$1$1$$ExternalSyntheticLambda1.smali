.class public final synthetic Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

.field public final synthetic f$2:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

.field public final synthetic f$3:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$1:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iput-object p4, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$3:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$1:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;->f$3:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$r8$lambda$tmhfFlpMJeWhblfhJqFfAsaV1ec(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method
