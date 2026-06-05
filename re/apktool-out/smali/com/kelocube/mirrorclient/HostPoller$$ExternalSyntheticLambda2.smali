.class public final synthetic Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/HostPoller;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;->f$0:Lcom/kelocube/mirrorclient/HostPoller;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;->f$1:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;->f$0:Lcom/kelocube/mirrorclient/HostPoller;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/HostPoller$$ExternalSyntheticLambda2;->f$1:Lcom/kelocube/mirrorclient/HostPoller$PollRequest;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/HostPoller;->$r8$lambda$BLg0q2q76jPcoJgCIdsmakrfCeI(Lcom/kelocube/mirrorclient/HostPoller;Lcom/kelocube/mirrorclient/HostPoller$PollRequest;)V

    return-void
.end method
