.class final Lcom/maltaisn/icondialog/IconDialog$IconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IconDialog.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IconAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;,
        Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialog.kt\ncom/maltaisn/icondialog/IconDialog$IconAdapter\n*L\n1#1,482:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0015\u0016B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog$IconAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;",
        "(Lcom/maltaisn/icondialog/IconDialog;)V",
        "getHeaderPositionForItem",
        "",
        "pos",
        "getItemCount",
        "getItemId",
        "",
        "getItemViewType",
        "isHeader",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "HeaderViewHolder",
        "IconViewHolder",
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
.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog;


# direct methods
.method public constructor <init>(Lcom/maltaisn/icondialog/IconDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x1

    .line 356
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getHeaderPositionForItem(I)I
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->getHeaderPositionForItem(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->getItemType(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeader(I)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->isHeader(I)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    instance-of v0, p1, Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;

    invoke-interface {v0, p2, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onBindIconItemView(ILcom/maltaisn/icondialog/IconDialogContract$IconItemView;)V

    goto :goto_0

    .line 409
    :cond_0
    instance-of v0, p1, Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;

    invoke-interface {v0, p2, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onBindHeaderItemView(ILcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 400
    new-instance p2, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;

    sget v2, Lcom/maltaisn/icondialog/R$layout;->icd_item_sticky_header:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026ky_header, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;-><init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 402
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown view type."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 397
    :cond_1
    new-instance p2, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;

    sget v2, Lcom/maltaisn/icondialog/R$layout;->icd_item_header:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026em_header, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;-><init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 394
    :cond_2
    new-instance p2, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;

    sget v2, Lcom/maltaisn/icondialog/R$layout;->icd_item_icon:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(R.layou\u2026item_icon, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;-><init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object p2
.end method
