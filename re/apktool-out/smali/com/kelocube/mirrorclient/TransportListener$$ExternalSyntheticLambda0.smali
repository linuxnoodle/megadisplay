.class public final synthetic Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/TransportListener;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ILcom/kelocube/mirrorclient/TransportListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/TransportListener;

    iput-boolean p3, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget v0, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/TransportListener;

    iget-boolean v2, p0, Lcom/kelocube/mirrorclient/TransportListener$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/kelocube/mirrorclient/TransportListener;->$r8$lambda$8g_JacWzPPsILfkkW8EW0eE_9Ic(ILcom/kelocube/mirrorclient/TransportListener;Z)V

    return-void
.end method
