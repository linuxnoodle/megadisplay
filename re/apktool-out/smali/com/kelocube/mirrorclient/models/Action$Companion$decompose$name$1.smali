.class final Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Action.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/models/Action$Companion;->decompose(Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILkotlin/jvm/functions/Function4;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\ncom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "type",
        "",
        "key",
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


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/models/Action$ParseContext;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->invoke(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(II)Ljava/lang/String;
    .locals 3

    .line 86
    const-string v0, ""

    if-eqz p1, :cond_6

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_5

    const/16 v1, 0xd2

    const-string v2, "elementAtOrElse(...)"

    if-eq p1, v1, :cond_3

    const/16 v1, 0xdc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe6

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getCommands()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_7

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_7

    aget-object v0, p1, p2

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getResetViews()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_2

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_2

    aget-object p1, p1, p2

    move-object v0, p1

    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getSetViews()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_4

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_4

    aget-object p1, p1, p2

    move-object v0, p1

    :cond_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_5
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getMouseButtons()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_7

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_7

    aget-object v0, p1, p2

    goto :goto_0

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$Companion$decompose$name$1;->$context:Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->getKeys()[Ljava/lang/String;

    move-result-object p1

    if-ltz p2, :cond_7

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_7

    aget-object v0, p1, p2

    :cond_7
    :goto_0
    return-object v0
.end method
