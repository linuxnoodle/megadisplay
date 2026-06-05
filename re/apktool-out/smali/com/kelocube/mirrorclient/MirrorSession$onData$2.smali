.class final Lcom/kelocube/mirrorclient/MirrorSession$onData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MirrorSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/MirrorSession;->onData(BLcom/kelocube/mirrorclient/Transport$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/MirrorSession;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/MirrorSession;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;->this$0:Lcom/kelocube/mirrorclient/MirrorSession;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 283
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;->this$0:Lcom/kelocube/mirrorclient/MirrorSession;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/MirrorSession;->access$getAlive$p(Lcom/kelocube/mirrorclient/MirrorSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$2;->this$0:Lcom/kelocube/mirrorclient/MirrorSession;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/MirrorSession;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/MirrorSession;)Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/MirrorSession$Callbacks;->getOnData()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    sget-object v1, Lcom/kelocube/mirrorclient/MirrorClient$DataType;->Unlock:Lcom/kelocube/mirrorclient/MirrorClient$DataType;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/kelocube/mirrorclient/MirrorSession$onData$2$1;

    invoke-direct {v3, p1}, Lcom/kelocube/mirrorclient/MirrorSession$onData$2$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
