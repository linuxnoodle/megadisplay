.class Lde/mrapp/android/validation/AbstractValidateableView$1;
.super Ljava/lang/Object;
.source "AbstractValidateableView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/validation/AbstractValidateableView;->createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/validation/AbstractValidateableView;


# direct methods
.method constructor <init>(Lde/mrapp/android/validation/AbstractValidateableView;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView$1;->this$0:Lde/mrapp/android/validation/AbstractValidateableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 354
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView$1;->this$0:Lde/mrapp/android/validation/AbstractValidateableView;

    invoke-virtual {p1}, Lde/mrapp/android/validation/AbstractValidateableView;->isValidatedOnFocusLost()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView$1;->this$0:Lde/mrapp/android/validation/AbstractValidateableView;

    invoke-virtual {p1}, Lde/mrapp/android/validation/AbstractValidateableView;->validate()Z

    :cond_0
    return-void
.end method
