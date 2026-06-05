.class public final synthetic Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/Transport;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/AppException;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;->f$0:Lcom/kelocube/mirrorclient/Transport;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;->f$1:Lcom/kelocube/mirrorclient/AppException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;->f$0:Lcom/kelocube/mirrorclient/Transport;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Transport$$ExternalSyntheticLambda1;->f$1:Lcom/kelocube/mirrorclient/AppException;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/Transport;->$r8$lambda$H7lsX5Fjvc15bP1GX26bCOhmjeg(Lcom/kelocube/mirrorclient/Transport;Lcom/kelocube/mirrorclient/AppException;)V

    return-void
.end method
