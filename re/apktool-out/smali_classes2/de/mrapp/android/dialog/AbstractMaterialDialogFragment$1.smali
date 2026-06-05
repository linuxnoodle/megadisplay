.class Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;
.super Ljava/lang/Object;
.source "AbstractMaterialDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->createCanceledOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;->this$0:Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 133
    iget-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;->this$0:Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;->this$0:Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->isFullscreen()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment$1;->this$0:Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->onCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
