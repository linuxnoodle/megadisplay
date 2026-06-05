.class public final Lde/mrapp/util/IteratorUtil;
.super Ljava/lang/Object;
.source "IteratorUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIteratorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IteratorUtil.kt\nde/mrapp/util/IteratorUtil\n*L\n1#1,261:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0004\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004J.\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\tJ6\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00042\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u000e0\rJ6\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\t\"\u0004\u0008\u0000\u0010\u00052\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u000e0\rJ:\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u0004\"\u0004\u0008\u0000\u0010\u0013\"\u0004\u0008\u0001\u0010\u00122\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00042\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\rJ:\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\t\"\u0004\u0008\u0000\u0010\u0013\"\u0004\u0008\u0001\u0010\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\t2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\rJB\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00170\u0004\"\u0004\u0008\u0000\u0010\u0018\"\u0004\u0008\u0001\u0010\u00172\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u00042\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00170\t0\rJB\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00170\t\"\u0004\u0008\u0000\u0010\u0018\"\u0004\u0008\u0001\u0010\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\t2\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00170\t0\rJ\"\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0004J\"\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\t\"\u0004\u0008\u0000\u0010\u00052\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lde/mrapp/util/IteratorUtil;",
        "",
        "()V",
        "createConcatenatedIterable",
        "",
        "T",
        "first",
        "second",
        "createConcatenatedIterator",
        "",
        "createFilteredIterable",
        "iterable",
        "filter",
        "Lkotlin/Function1;",
        "",
        "createFilteredIterator",
        "iterator",
        "createMappedIterable",
        "O",
        "I",
        "mapper",
        "createMappedIterator",
        "createNestedIterable",
        "T2",
        "T1",
        "outerIterable",
        "factory",
        "createNestedIterator",
        "outerIterator",
        "createNotNullIterable",
        "createNotNullIterator",
        "JavaUtil"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lde/mrapp/util/IteratorUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lde/mrapp/util/IteratorUtil;

    invoke-direct {v0}, Lde/mrapp/util/IteratorUtil;-><init>()V

    sput-object v0, Lde/mrapp/util/IteratorUtil;->INSTANCE:Lde/mrapp/util/IteratorUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createConcatenatedIterable(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The first iterable may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The second iterable may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lde/mrapp/util/IteratorUtil$createConcatenatedIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createConcatenatedIterable$$inlined$Iterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final createConcatenatedIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The first iterator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The second iterator may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lde/mrapp/util/IteratorUtil$createConcatenatedIterator$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createConcatenatedIterator$1;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final createFilteredIterable(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterable may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The filter may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lde/mrapp/util/IteratorUtil$createFilteredIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createFilteredIterable$$inlined$Iterable$1;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final createFilteredIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The filter may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;-><init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final createMappedIterable(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TI;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TI;+TO;>;)",
            "Ljava/lang/Iterable<",
            "TO;>;"
        }
    .end annotation

    const-string v0, "iterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterable may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The mapper may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createMappedIterable$$inlined$Iterable$1;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final createMappedIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TI;+TO;>;)",
            "Ljava/util/Iterator<",
            "TO;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The mapper may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lde/mrapp/util/IteratorUtil$createMappedIterator$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createMappedIterator$1;-><init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final createNestedIterable(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT1;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT1;+",
            "Ljava/util/Iterator<",
            "+TT2;>;>;)",
            "Ljava/lang/Iterable<",
            "TT2;>;"
        }
    .end annotation

    const-string v0, "outerIterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterable may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The factory may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lde/mrapp/util/IteratorUtil$createNestedIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createNestedIterable$$inlined$Iterable$1;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final createNestedIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT1;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT1;+",
            "Ljava/util/Iterator<",
            "+TT2;>;>;)",
            "Ljava/util/Iterator<",
            "TT2;>;"
        }
    .end annotation

    const-string v0, "outerIterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The factory may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;-><init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final createNotNullIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterable may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lde/mrapp/util/IteratorUtil$createNotNullIterable$$inlined$Iterable$1;

    invoke-direct {v0, p1}, Lde/mrapp/util/IteratorUtil$createNotNullIterable$$inlined$Iterable$1;-><init>(Ljava/lang/Iterable;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final createNotNullIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The iterator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;

    invoke-direct {v0, p1}, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;-><init>(Ljava/util/Iterator;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
