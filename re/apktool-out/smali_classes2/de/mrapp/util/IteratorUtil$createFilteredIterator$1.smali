.class public final Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;
.super Ljava/lang/Object;
.source "IteratorUtil.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/util/IteratorUtil;->createFilteredIterator(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "de/mrapp/util/IteratorUtil$createFilteredIterator$1",
        "",
        "hasNext",
        "",
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
.field final synthetic $filter:Lkotlin/jvm/functions/Function1;

.field final synthetic $iterator:Ljava/util/Iterator;

.field private hasNext:Z

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->$iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->$filter:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->computeNext()V

    return-void
.end method

.method private final computeNext()V
    .locals 2

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->hasNext:Z

    .line 127
    :cond_0
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->$filter:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->hasNext:Z

    .line 132
    iput-object v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->next:Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->hasNext:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->next:Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createFilteredIterator$1;->computeNext()V

    return-object v0

    .line 144
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
