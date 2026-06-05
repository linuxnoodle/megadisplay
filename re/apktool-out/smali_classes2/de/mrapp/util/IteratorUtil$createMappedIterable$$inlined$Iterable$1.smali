.class public final Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/util/IteratorUtil;->createMappedIterable(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TO;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 IteratorUtil.kt\nde/mrapp/util/IteratorUtil\n*L\n1#1,93:1\n37#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/collections/CollectionsKt__IterablesKt$Iterable$1",
        "",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $iterable$inlined:Ljava/lang/Iterable;

.field final synthetic $mapper$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;->$iterable$inlined:Ljava/lang/Iterable;

    iput-object p2, p0, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;->$mapper$inlined:Lkotlin/jvm/functions/Function1;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TO;>;"
        }
    .end annotation

    .line 94
    sget-object v0, Lde/mrapp/util/IteratorUtil;->INSTANCE:Lde/mrapp/util/IteratorUtil;

    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;->$iterable$inlined:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;->$mapper$inlined:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lde/mrapp/util/IteratorUtil;->createMappedIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
