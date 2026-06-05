.class public final Lcom/kelocube/mirrorclient/ui/EditActionDialogKt;
.super Ljava/lang/Object;
.source "EditActionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditActionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditActionDialog.kt\ncom/kelocube/mirrorclient/ui/EditActionDialogKt\n+ 2 MaterialDialog.kt\ncom/afollestad/materialdialogs/MaterialDialog\n*L\n1#1,68:1\n362#2,4:69\n*S KotlinDebug\n*F\n+ 1 EditActionDialog.kt\ncom/kelocube/mirrorclient/ui/EditActionDialogKt\n*L\n14#1:69,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a2\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a8\u0006\u000b"
    }
    d2 = {
        "editActionDialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "action",
        "",
        "onAccept",
        "Lkotlin/Function1;",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final editActionDialog(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/afollestad/materialdialogs/MaterialDialog;"
        }
    .end annotation

    move-object/from16 v3, p0

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAccept"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v4, Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-direct {v4, v3}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v5, Lcom/afollestad/materialdialogs/MaterialDialog;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {v5, v3, v0, v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Landroid/content/Context;Lcom/afollestad/materialdialogs/DialogBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;

    move-result-object v1

    const-string v0, "inflate(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    const/16 v14, 0x31

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v5

    invoke-static/range {v7 .. v15}, Lcom/afollestad/materialdialogs/customview/DialogCustomViewExtKt;->customView$default(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Integer;Landroid/view/View;ZZZZILjava/lang/Object;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 19
    new-instance v8, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;

    move-object v0, v8

    move-object v9, v5

    move/from16 v5, p2

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt$editActionDialog$1$1;-><init>(Lcom/kelocube/mirrorclient/databinding/DialogEditActionBinding;Ljava/lang/String;Landroid/content/Context;Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILkotlin/jvm/functions/Function1;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v8}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->onPreShow(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 71
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-object v9
.end method
