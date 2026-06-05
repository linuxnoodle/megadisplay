.class public final synthetic Lcom/kelocube/mirrorclient/MirrorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/MirrorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/MirrorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/MirrorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/MirrorActivity$$ExternalSyntheticLambda4;->f$0:Lcom/kelocube/mirrorclient/MirrorActivity;

    check-cast p1, Lcom/kelocube/mirrorclient/MirrorClient$State;

    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->$r8$lambda$1NylvYeTC246ubcOBPiXqTbDs3Y(Lcom/kelocube/mirrorclient/MirrorActivity;Lcom/kelocube/mirrorclient/MirrorClient$State;)V

    return-void
.end method
