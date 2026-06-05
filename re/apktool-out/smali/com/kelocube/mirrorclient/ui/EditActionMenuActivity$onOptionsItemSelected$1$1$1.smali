.class final Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EditActionMenuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;
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
    value = "SMAP\nEditActionMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditActionMenuActivity.kt\ncom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,240:1\n11065#2:241\n11400#2,3:242\n*S KotlinDebug\n*F\n+ 1 EditActionMenuActivity.kt\ncom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1\n*L\n144#1:241\n144#1:242,3\n*E\n"
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;->invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 14

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    .line 143
    sget-object v0, Lcom/kelocube/mirrorclient/Prefs;->Companion:Lcom/kelocube/mirrorclient/Prefs$Companion;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kelocube/mirrorclient/Prefs$Companion;->setActionMenu(Landroid/content/Context;Ljava/util/Collection;)V

    .line 144
    invoke-static {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object v0

    const-string v3, "binding"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {v0}, Lcom/woxthebox/draglistview/DragListView;->getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type com.kelocube.mirrorclient.ui.EditActionMenuActivity.Adapter"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;

    sget-object v4, Lcom/kelocube/mirrorclient/Prefs;->Companion:Lcom/kelocube/mirrorclient/Prefs$Companion;

    invoke-virtual {v4, v1}, Lcom/kelocube/mirrorclient/Prefs$Companion;->getActionMenu(Landroid/content/Context;)[Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    move-result-object v1

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$onOptionsItemSelected$1$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;

    .line 241
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 242
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v1, v7

    .line 144
    new-instance v9, Lkotlin/Pair;

    invoke-static {v4}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getNextItemId$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    invoke-static {v4, v12, v13}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$setNextItemId$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;J)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 144
    invoke-virtual {v0, v5}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;->setItemList(Ljava/util/List;)V

    .line 145
    invoke-static {p1}, Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;->access$getBinding$p(Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    iget-object p1, v2, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragListView;->getAdapter()Lcom/woxthebox/draglistview/DragItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/woxthebox/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
