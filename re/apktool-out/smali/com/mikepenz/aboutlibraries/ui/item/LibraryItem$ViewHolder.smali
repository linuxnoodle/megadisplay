.class public final Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LibraryItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0004R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\r\"\u0004\u0008\u001a\u0010\u0004R\u001a\u0010\u001b\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\"\u0004\u0008 \u0010\u0014R\u001a\u0010!\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "card",
        "Lcom/google/android/material/card/MaterialCardView;",
        "getCard$aboutlibraries",
        "()Lcom/google/android/material/card/MaterialCardView;",
        "setCard$aboutlibraries",
        "(Lcom/google/android/material/card/MaterialCardView;)V",
        "libraryBottomDivider",
        "getLibraryBottomDivider$aboutlibraries",
        "()Landroid/view/View;",
        "setLibraryBottomDivider$aboutlibraries",
        "libraryCreator",
        "Landroid/widget/TextView;",
        "getLibraryCreator$aboutlibraries",
        "()Landroid/widget/TextView;",
        "setLibraryCreator$aboutlibraries",
        "(Landroid/widget/TextView;)V",
        "libraryDescription",
        "getLibraryDescription$aboutlibraries",
        "setLibraryDescription$aboutlibraries",
        "libraryDescriptionDivider",
        "getLibraryDescriptionDivider$aboutlibraries",
        "setLibraryDescriptionDivider$aboutlibraries",
        "libraryLicense",
        "getLibraryLicense$aboutlibraries",
        "setLibraryLicense$aboutlibraries",
        "libraryName",
        "getLibraryName$aboutlibraries",
        "setLibraryName$aboutlibraries",
        "libraryVersion",
        "getLibraryVersion$aboutlibraries",
        "setLibraryVersion$aboutlibraries",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private card:Lcom/google/android/material/card/MaterialCardView;

.field private libraryBottomDivider:Landroid/view/View;

.field private libraryCreator:Landroid/widget/TextView;

.field private libraryDescription:Landroid/widget/TextView;

.field private libraryDescriptionDivider:Landroid/view/View;

.field private libraryLicense:Landroid/widget/TextView;

.field private libraryName:Landroid/widget/TextView;

.field private libraryVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->card:Lcom/google/android/material/card/MaterialCardView;

    .line 228
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryName:Landroid/widget/TextView;

    .line 229
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryCreator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryCreator:Landroid/widget/TextView;

    .line 230
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryDescriptionDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "itemView.findViewById(R.\u2026ibraryDescriptionDivider)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescriptionDivider:Landroid/view/View;

    .line 231
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescription:Landroid/widget/TextView;

    .line 233
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryBottomDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "itemView.findViewById(R.id.libraryBottomDivider)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryBottomDivider:Landroid/view/View;

    .line 234
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryVersion:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryVersion:Landroid/widget/TextView;

    .line 235
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->libraryLicense:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryLicense:Landroid/widget/TextView;

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 239
    const-string p1, "ctx"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;

    invoke-direct {p1, p0, v1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;Landroid/content/Context;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->resolveStyledValue$default(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 235
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getCard$aboutlibraries()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->card:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method

.method public final getLibraryBottomDivider$aboutlibraries()Landroid/view/View;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryBottomDivider:Landroid/view/View;

    return-object v0
.end method

.method public final getLibraryCreator$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryCreator:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLibraryDescription$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLibraryDescriptionDivider$aboutlibraries()Landroid/view/View;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescriptionDivider:Landroid/view/View;

    return-object v0
.end method

.method public final getLibraryLicense$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryLicense:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLibraryName$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLibraryVersion$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setCard$aboutlibraries(Lcom/google/android/material/card/MaterialCardView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->card:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public final setLibraryBottomDivider$aboutlibraries(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryBottomDivider:Landroid/view/View;

    return-void
.end method

.method public final setLibraryCreator$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryCreator:Landroid/widget/TextView;

    return-void
.end method

.method public final setLibraryDescription$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescription:Landroid/widget/TextView;

    return-void
.end method

.method public final setLibraryDescriptionDivider$aboutlibraries(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryDescriptionDivider:Landroid/view/View;

    return-void
.end method

.method public final setLibraryLicense$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryLicense:Landroid/widget/TextView;

    return-void
.end method

.method public final setLibraryName$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryName:Landroid/widget/TextView;

    return-void
.end method

.method public final setLibraryVersion$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->libraryVersion:Landroid/widget/TextView;

    return-void
.end method
