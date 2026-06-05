.class public final synthetic Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Ljava/util/concurrent/locks/ReentrantLock;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Ljava/util/concurrent/locks/Condition;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/locks/Condition;

    iput-object p5, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/locks/Condition;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/TaskKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kelocube/mirrorclient/TaskKt;->$r8$lambda$Yl3iyzESd3PMgcrMvsoehqSUbNg(Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/locks/ReentrantLock;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/locks/Condition;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method
