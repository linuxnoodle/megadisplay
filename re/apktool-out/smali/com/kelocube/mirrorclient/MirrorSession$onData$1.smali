.class final Lcom/kelocube/mirrorclient/MirrorSession$onData$1;
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
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Function0;",
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
.field final synthetic $config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/MirrorSession;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/MirrorSession;Lcom/kelocube/mirrorclient/MirrorSession$Config;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;->this$0:Lcom/kelocube/mirrorclient/MirrorSession;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;->$config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;->invoke(Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;->this$0:Lcom/kelocube/mirrorclient/MirrorSession;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession$onData$1;->$config:Lcom/kelocube/mirrorclient/MirrorSession$Config;

    invoke-static {v0, v1, p1}, Lcom/kelocube/mirrorclient/MirrorSession;->access$beginConfigure(Lcom/kelocube/mirrorclient/MirrorSession;Lcom/kelocube/mirrorclient/MirrorSession$Config;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
