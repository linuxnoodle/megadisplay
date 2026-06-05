.class public final Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;
.super Landroid/view/ViewGroup;
.source "MirrorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/MirrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "com/kelocube/mirrorclient/MirrorActivity$onCreate$2",
        "Landroid/view/ViewGroup;",
        "lastInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "onLayout",
        "",
        "changed",
        "",
        "l",
        "",
        "t",
        "r",
        "b",
        "app_release"
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
.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/MirrorActivity;


# direct methods
.method public static synthetic $r8$lambda$q58WqNO_Yd1J_uXXbBGPic96Ais(Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->_init_$lambda$0(Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    .line 79
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 80
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "CONSUMED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 84
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 87
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->requestLayout()V

    .line 89
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .line 98
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 101
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p2, v1

    .line 109
    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p3, v1

    .line 110
    iget v1, p1, Landroidx/core/graphics/Insets;->right:I

    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p4, v1

    .line 111
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p5, p1

    sub-int p1, p4, p2

    sub-int v0, p5, p3

    .line 117
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    .line 123
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 124
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 122
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 129
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$2;->this$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->access$getClient$p(Lcom/kelocube/mirrorclient/MirrorActivity;)Lcom/kelocube/mirrorclient/MirrorClient;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->layout()V

    :cond_3
    return-void
.end method
