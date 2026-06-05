.class public final Lde/mrapp/util/IteratorUtil$createNestedIterator$1;
.super Ljava/lang/Object;
.source "IteratorUtil.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/util/IteratorUtil;->createNestedIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT2;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIteratorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IteratorUtil.kt\nde/mrapp/util/IteratorUtil$createNestedIterator$1\n*L\n1#1,261:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00018\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "de/mrapp/util/IteratorUtil$createNestedIterator$1",
        "",
        "hasNext",
        "",
        "innerIterator",
        "next",
        "Ljava/lang/Object;",
        "computeNext",
        "",
        "()Ljava/lang/Object;",
        "JavaUtil"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $factory:Lkotlin/jvm/functions/Function1;

.field final synthetic $outerIterator:Ljava/util/Iterator;

.field private hasNext:Z

.field private innerIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT2;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->$outerIterator:Ljava/util/Iterator;

    iput-object p2, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->$factory:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->computeNext()V

    return-void
.end method

.method private final computeNext()V
    .locals 2

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->hasNext:Z

    .line 235
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->innerIterator:Ljava/util/Iterator;

    :goto_0
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->$outerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->hasNext:Z

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->next:Ljava/lang/Object;

    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->$factory:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->$outerIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 244
    iput-object v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->innerIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT2;"
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->hasNext:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->next:Ljava/lang/Object;

    .line 254
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createNestedIterator$1;->computeNext()V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
