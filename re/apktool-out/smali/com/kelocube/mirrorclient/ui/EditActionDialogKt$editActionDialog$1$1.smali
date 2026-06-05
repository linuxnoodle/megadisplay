.class final Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionDialogKt;->editActionDialog(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditActionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditActionDialog.kt\ncom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,68:1\n49#2:69\n65#2,16:70\n93#2,3:86\n*S KotlinDebug\n*F\n+ 1 EditActionDialog.kt\ncom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1\n*L\n42#1:69\n42#1:70,16\n42#1:86,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
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

.field final synthetic $binding:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onAccept:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parseContext:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

.field final synthetic $this_show:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-8A9zWIcumqBh4_Y1h7C-suS4Ts(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke$lambda$4$lambda$0(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MFrhdF0AY-9AtBWIZuatKGPfjcc(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke$lambda$4$lambda$3(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmhfFlpMJeWhblfhJqFfAsaV1ec(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke$lambda$4$lambda$2(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Ljava/lang/String;Landroid/content/Context;Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILkotlin/jvm/functions/Function1;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/kelocube/mirrorclient/models/Action$ParseContext;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/afollestad/materialdialogs/MaterialDialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$binding:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$parseContext:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iput p5, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$action:I

    iput-object p6, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$onAccept:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$this_show:Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$4$lambda$0(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;->showDropDown()V

    return-void
.end method

.method private static final invoke$lambda$4$lambda$2(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 6

    const-string p4, "$onAccept"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$parseContext"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$this_apply"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$this_show"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object p4, p2, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    invoke-virtual {p4}, Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p4, p2, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modCtrl:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object p4, p2, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modAlt:Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object p2, p2, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modShift:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kelocube/mirrorclient/models/Action$Companion;->parse(Lcom/kelocube/mirrorclient/models/Action$ParseContext;Ljava/lang/String;ZZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p3}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private static final invoke$lambda$4$lambda$3(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_show"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$binding:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$parseContext:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iget v3, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$action:I

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$onAccept:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->$this_show:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 22
    iget-object v6, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->title:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x109000a

    invoke-direct {v0, v1, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    sget-object v1, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    invoke-virtual {v1, v2}, Lcom/kelocube/mirrorclient/models/Action$Companion;->getActions(Lcom/kelocube/mirrorclient/models/Action$ParseContext;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 29
    new-instance v1, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;

    invoke-direct {v1, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$updateMods$1;-><init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 38
    iget-object v6, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v6, v0}, Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    new-instance v6, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V

    invoke-virtual {v0, v6}, Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->keyView:Lcom/kelocube/mirrorclient/ui/InstantAutoCompleteView;

    const-string v6, "keyView"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 85
    new-instance v6, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;

    invoke-direct {v6, v1, v2, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V

    .line 86
    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    new-instance v1, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;

    invoke-direct {v1, p1}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$1$3;-><init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kelocube/mirrorclient/models/Action$Companion;->decompose(Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILkotlin/jvm/functions/Function4;)Ljava/lang/Object;

    .line 55
    iget-object v0, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->buttonOk:Landroid/widget/Button;

    new-instance v1, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4, v2, p1, v5}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->buttonCancel:Landroid/widget/Button;

    new-instance v0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
