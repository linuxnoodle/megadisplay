.class public final synthetic Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/Input;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/Input;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/Input;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/Input$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/kelocube/mirrorclient/Input;->$r8$lambda$oKN7vyzi0dwb5vpadAtvSrHnzbw(Lcom/kelocube/mirrorclient/Input;Landroid/view/MotionEvent;)V

    return-void
.end method
