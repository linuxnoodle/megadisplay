.class final Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Task.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TaskKt;->runTask(Landroid/os/Handler;JLkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic $lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic $waiting:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$waiting:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$condition:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$waiting:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TaskKt$runTask$1$1$1;->$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    :try_start_0
    iget-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 26
    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 27
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 29
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
