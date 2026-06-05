.class public final Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HeaderItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0004R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\u001a\u0010!\u001a\u00020\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR\u001a\u0010$\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0010\"\u0004\u0008&\u0010\u0004R\u001a\u0010\'\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0008\"\u0004\u0008)\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "headerView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "aboutAppDescription",
        "Landroid/widget/TextView;",
        "getAboutAppDescription$aboutlibraries",
        "()Landroid/widget/TextView;",
        "setAboutAppDescription$aboutlibraries",
        "(Landroid/widget/TextView;)V",
        "aboutAppName",
        "getAboutAppName$aboutlibraries",
        "setAboutAppName$aboutlibraries",
        "aboutDivider",
        "getAboutDivider$aboutlibraries",
        "()Landroid/view/View;",
        "setAboutDivider$aboutlibraries",
        "aboutIcon",
        "Landroid/widget/ImageView;",
        "getAboutIcon$aboutlibraries",
        "()Landroid/widget/ImageView;",
        "setAboutIcon$aboutlibraries",
        "(Landroid/widget/ImageView;)V",
        "aboutSpecial1",
        "Landroid/widget/Button;",
        "getAboutSpecial1$aboutlibraries",
        "()Landroid/widget/Button;",
        "setAboutSpecial1$aboutlibraries",
        "(Landroid/widget/Button;)V",
        "aboutSpecial2",
        "getAboutSpecial2$aboutlibraries",
        "setAboutSpecial2$aboutlibraries",
        "aboutSpecial3",
        "getAboutSpecial3$aboutlibraries",
        "setAboutSpecial3$aboutlibraries",
        "aboutSpecialContainer",
        "getAboutSpecialContainer$aboutlibraries",
        "setAboutSpecialContainer$aboutlibraries",
        "aboutVersion",
        "getAboutVersion$aboutlibraries",
        "setAboutVersion$aboutlibraries",
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
.field private aboutAppDescription:Landroid/widget/TextView;

.field private aboutAppName:Landroid/widget/TextView;

.field private aboutDivider:Landroid/view/View;

.field private aboutIcon:Landroid/widget/ImageView;

.field private aboutSpecial1:Landroid/widget/Button;

.field private aboutSpecial2:Landroid/widget/Button;

.field private aboutSpecial3:Landroid/widget/Button;

.field private aboutSpecialContainer:Landroid/view/View;

.field private aboutVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    const-string v0, "headerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 224
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutIcon:Landroid/widget/ImageView;

    .line 225
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppName:Landroid/widget/TextView;

    .line 226
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutSpecialContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "headerView.findViewById(\u2026id.aboutSpecialContainer)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecialContainer:Landroid/view/View;

    .line 227
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutSpecial1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial1:Landroid/widget/Button;

    .line 228
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutSpecial2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial2:Landroid/widget/Button;

    .line 229
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutSpecial3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial3:Landroid/widget/Button;

    .line 230
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutVersion:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutVersion:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutDivider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "headerView.findViewById(R.id.aboutDivider)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutDivider:Landroid/view/View;

    .line 232
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->aboutDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppDescription:Landroid/widget/TextView;

    .line 235
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 236
    const-string p1, "ctx"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder$1;

    invoke-direct {p1, p0, v1}, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder$1;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;Landroid/content/Context;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->resolveStyledValue$default(Landroid/content/Context;[IIILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 232
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getAboutAppDescription$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getAboutAppName$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getAboutDivider$aboutlibraries()Landroid/view/View;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutDivider:Landroid/view/View;

    return-object v0
.end method

.method public final getAboutIcon$aboutlibraries()Landroid/widget/ImageView;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getAboutSpecial1$aboutlibraries()Landroid/widget/Button;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial1:Landroid/widget/Button;

    return-object v0
.end method

.method public final getAboutSpecial2$aboutlibraries()Landroid/widget/Button;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial2:Landroid/widget/Button;

    return-object v0
.end method

.method public final getAboutSpecial3$aboutlibraries()Landroid/widget/Button;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial3:Landroid/widget/Button;

    return-object v0
.end method

.method public final getAboutSpecialContainer$aboutlibraries()Landroid/view/View;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecialContainer:Landroid/view/View;

    return-object v0
.end method

.method public final getAboutVersion$aboutlibraries()Landroid/widget/TextView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setAboutAppDescription$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppDescription:Landroid/widget/TextView;

    return-void
.end method

.method public final setAboutAppName$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutAppName:Landroid/widget/TextView;

    return-void
.end method

.method public final setAboutDivider$aboutlibraries(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutDivider:Landroid/view/View;

    return-void
.end method

.method public final setAboutIcon$aboutlibraries(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setAboutSpecial1$aboutlibraries(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial1:Landroid/widget/Button;

    return-void
.end method

.method public final setAboutSpecial2$aboutlibraries(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial2:Landroid/widget/Button;

    return-void
.end method

.method public final setAboutSpecial3$aboutlibraries(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecial3:Landroid/widget/Button;

    return-void
.end method

.method public final setAboutSpecialContainer$aboutlibraries(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutSpecialContainer:Landroid/view/View;

    return-void
.end method

.method public final setAboutVersion$aboutlibraries(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;->aboutVersion:Landroid/widget/TextView;

    return-void
.end method
