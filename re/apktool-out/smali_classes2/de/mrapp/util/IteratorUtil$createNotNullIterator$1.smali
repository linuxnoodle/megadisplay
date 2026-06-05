.class public final Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;
.super Ljava/lang/Object;
.source "IteratorUtil.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/util/IteratorUtil;->createNotNullIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIteratorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IteratorUtil.kt\nde/mrapp/util/IteratorUtil$createNotNullIterator$1\n*L\n1#1,261:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002J\u000e\u0010\u0002\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0005R\u0012\u0010\u0002\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "de/mrapp/util/IteratorUtil$createNotNullIterator$1",
        "",
        "next",
        "Ljava/lang/Object;",
        "computeNext",
        "()Ljava/lang/Object;",
        "hasNext",
        "",
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
.field final synthetic $iterator:Ljava/util/Iterator;

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->computeNext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->next:Ljava/lang/Object;

    return-void
.end method

.method private final computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 175
    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->computeNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lde/mrapp/util/IteratorUtil$createNotNullIterator$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 191
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
