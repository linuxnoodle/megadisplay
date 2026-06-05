.class public final synthetic Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/CanvasScaler;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    iput-boolean p3, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/CanvasScaler;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$1:Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    iget-boolean v2, p0, Lcom/kelocube/mirrorclient/CanvasScaler$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/kelocube/mirrorclient/CanvasScaler;->$r8$lambda$t70NjIPaP21LW5ZC0giuEJxPmAw(Lcom/kelocube/mirrorclient/CanvasScaler;Lcom/kelocube/mirrorclient/CanvasScaler$Crop;Z)V

    return-void
.end method
