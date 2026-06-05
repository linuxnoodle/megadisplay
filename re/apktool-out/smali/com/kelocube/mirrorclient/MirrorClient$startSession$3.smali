.class final synthetic Lcom/kelocube/mirrorclient/MirrorClient$startSession$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MirrorClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/MirrorClient;->startSession(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kelocube/mirrorclient/AppException;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/kelocube/mirrorclient/MirrorClient;

    const-string v5, "handleError(Lcom/kelocube/mirrorclient/AppException;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "handleError"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lcom/kelocube/mirrorclient/AppException;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/MirrorClient$startSession$3;->invoke(Lcom/kelocube/mirrorclient/AppException;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/kelocube/mirrorclient/AppException;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorClient$startSession$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kelocube/mirrorclient/MirrorClient;

    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/MirrorClient;->access$handleError(Lcom/kelocube/mirrorclient/MirrorClient;Lcom/kelocube/mirrorclient/AppException;)V

    return-void
.end method
