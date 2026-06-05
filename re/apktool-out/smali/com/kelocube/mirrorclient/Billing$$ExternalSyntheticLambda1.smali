.class public final synthetic Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/Billing;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;->f$0:Lcom/kelocube/mirrorclient/Billing;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;->f$0:Lcom/kelocube/mirrorclient/Billing;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Billing$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/kelocube/mirrorclient/Billing;->$r8$lambda$KJ1fLE6UJ0K7UOALZ4Vo9p7kxtM(Lcom/kelocube/mirrorclient/Billing;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method
