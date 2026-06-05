.class public final synthetic Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/AppException;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/MirrorSession;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/AppException;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/MirrorSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/AppException;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/MirrorSession$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/MirrorSession;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/MirrorSession;->$r8$lambda$zo8Am-dHWRsyPAQVoERYf4Cg6lo(Lcom/kelocube/mirrorclient/AppException;Lcom/kelocube/mirrorclient/MirrorSession;)V

    return-void
.end method
