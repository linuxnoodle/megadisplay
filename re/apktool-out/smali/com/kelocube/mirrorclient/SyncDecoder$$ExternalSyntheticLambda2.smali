.class public final synthetic Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/SyncDecoder;

.field public final synthetic f$1:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;->f$0:Lcom/kelocube/mirrorclient/SyncDecoder;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;->f$0:Lcom/kelocube/mirrorclient/SyncDecoder;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/SyncDecoder$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaCodec;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/SyncDecoder;->$r8$lambda$XMhstBHZ_K3kYmXW1Y0z2MkDeZY(Lcom/kelocube/mirrorclient/SyncDecoder;Landroid/media/MediaCodec;)V

    return-void
.end method
