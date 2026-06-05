.class final Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;
.super Ljava/lang/Object;
.source "UIUtils.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->doOnApplySystemWindowInsets(Landroid/view/View;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUIUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UIUtils.kt\ncom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,242:1\n11437#2:243\n11438#2:271\n107#3,6:244\n106#3,7:250\n106#3,7:257\n106#3,7:264\n*E\n*S KotlinDebug\n*F\n+ 1 UIUtils.kt\ncom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1\n*L\n173#1:243\n173#1:271\n173#1,6:244\n173#1,7:250\n173#1,7:257\n173#1,7:264\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u00042\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/WindowInsets;",
        "kotlin.jvm.PlatformType",
        "v",
        "Landroid/view/View;",
        "insets",
        "onApplyWindowInsets"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $gravities:[I

.field final synthetic $initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;


# direct methods
.method constructor <init>([ILcom/mikepenz/aboutlibraries/util/InitialPadding;)V
    .locals 0

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$gravities:[I

    iput-object p2, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$gravities:[I

    .line 243
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    const/4 v4, 0x3

    .line 174
    const-string v5, "insets"

    const-string v6, "v"

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    const v4, 0x800003

    if-eq v3, v4, :cond_3

    const v4, 0x800005

    if-eq v3, v4, :cond_2

    goto/16 :goto_1

    .line 185
    :cond_0
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-virtual {v3}, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->getBottom()I

    move-result v3

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 269
    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 182
    :cond_1
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-virtual {v3}, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->getTop()I

    move-result v3

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 262
    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-virtual {v3}, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->getRight()I

    move-result v3

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 255
    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt$doOnApplySystemWindowInsets$1;->$initialPadding:Lcom/mikepenz/aboutlibraries/util/InitialPadding;

    invoke-virtual {v3}, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->getLeft()I

    move-result v3

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 248
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object p2
.end method
