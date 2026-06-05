.class public final Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$3\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 4 EditActionDialog.kt\ncom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1\n*L\n1#1,97:1\n78#2:98\n71#3:99\n43#4,2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release",
        "androidx/core/widget/TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $parseContext$inlined:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

.field final synthetic $this_apply$inlined:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

.field final synthetic $updateMods$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/kelocube/mirrorclient/models/Action$ParseContext;Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$updateMods$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$parseContext$inlined:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 100
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$updateMods$inlined:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$parseContext$inlined:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modCtrl:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modAlt:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1;->$this_apply$inlined:Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    iget-object p1, p1, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->modShift:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/kelocube/mirrorclient/models/Action$Companion;->parse(Lcom/kelocube/mirrorclient/models/Action$ParseContext;Ljava/lang/String;ZZZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
