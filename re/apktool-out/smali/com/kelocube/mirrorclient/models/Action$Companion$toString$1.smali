.class final Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Action.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/models/Action$Companion;->toString(Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        "ctrl",
        "",
        "alt",
        "shift",
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
.field final synthetic $context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

.field final synthetic $default:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/models/Action$ParseContext;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$default:Ljava/lang/String;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->invoke(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 11

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 67
    const-string v1, "getString(...)"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/kelocube/mirrorclient/R$string;->action_ctrl:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 68
    iget-object p2, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/kelocube/mirrorclient/R$string;->action_alt:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    .line 69
    iget-object p2, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/kelocube/mirrorclient/R$string;->action_shift:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 74
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$default:Ljava/lang/String;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$toString$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/kelocube/mirrorclient/R$string;->action_none:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string p1, "+"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    return-object p1
.end method
