.class final Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LibraryItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/res/TypedArray;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/res/TypedArray;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    iput-object p2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->invoke(Landroid/content/res/TypedArray;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/content/res/TypedArray;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getCard$aboutlibraries()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesWindowBackground:I

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    const-string v3, "ctx"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/mikepenz/aboutlibraries/R$attr;->aboutLibrariesWindowBackground:I

    iget-object v5, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/mikepenz/aboutlibraries/R$color;->about_libraries_card:I

    invoke-static {v5, v6}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 241
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryName$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceTitle:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 242
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 243
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescriptionDivider$aboutlibraries()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceDivider:I

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/mikepenz/aboutlibraries/R$attr;->aboutLibrariesOpenSourceDivider:I

    iget-object v5, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/mikepenz/aboutlibraries/R$color;->about_libraries_dividerLight_openSource:I

    invoke-static {v5, v6}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryBottomDivider$aboutlibraries()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceDivider:I

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/mikepenz/aboutlibraries/R$attr;->aboutLibrariesOpenSourceDivider:I

    iget-object v5, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->$ctx:Landroid/content/Context;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/mikepenz/aboutlibraries/R$color;->about_libraries_dividerLight_openSource:I

    invoke-static {v5, v3}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getSupportColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->getThemeColor(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryVersion$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 247
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/mikepenz/aboutlibraries/R$styleable;->AboutLibraries_aboutLibrariesOpenSourceText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
