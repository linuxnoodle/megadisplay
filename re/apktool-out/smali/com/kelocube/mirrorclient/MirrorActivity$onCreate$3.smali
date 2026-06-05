.class public final Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "com/kelocube/mirrorclient/MirrorActivity$onCreate$3",
        "Landroid/view/ViewGroup;",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;->this$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    .line 138
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 140
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$onCreate$3;->this$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->access$getClient$p(Lcom/kelocube/mirrorclient/MirrorActivity;)Lcom/kelocube/mirrorclient/MirrorClient;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->layout()V

    :cond_2
    return-void
.end method
