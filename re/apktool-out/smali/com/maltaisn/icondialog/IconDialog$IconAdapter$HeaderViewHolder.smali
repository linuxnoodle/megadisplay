.class public final Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconDialog.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog$IconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;",
        "view",
        "Landroid/view/View;",
        "(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V",
        "headerTxv",
        "Landroid/widget/TextView;",
        "bindView",
        "",
        "category",
        "Lcom/maltaisn/icondialog/data/Category;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final headerTxv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;


# direct methods
.method public constructor <init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    .line 382
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 383
    sget p1, Lcom/maltaisn/icondialog/R$id;->icd_header_txv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.icd_header_txv)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;->headerTxv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/maltaisn/icondialog/data/Category;)V
    .locals 3

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;->headerTxv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    iget-object v1, v1, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-virtual {v1}, Lcom/maltaisn/icondialog/IconDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/maltaisn/icondialog/data/Category;->resolveName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
