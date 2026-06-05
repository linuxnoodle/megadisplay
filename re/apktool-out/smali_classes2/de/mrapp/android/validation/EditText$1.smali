.class Lde/mrapp/android/validation/EditText$1;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/validation/EditText;->createTextChangeListener()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/validation/EditText;


# direct methods
.method constructor <init>(Lde/mrapp/android/validation/EditText;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lde/mrapp/android/validation/EditText$1;->this$0:Lde/mrapp/android/validation/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 484
    iget-object p1, p0, Lde/mrapp/android/validation/EditText$1;->this$0:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p1}, Lde/mrapp/android/validation/EditText;->isValidatedOnValueChange()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 485
    iget-object p1, p0, Lde/mrapp/android/validation/EditText$1;->this$0:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p1}, Lde/mrapp/android/validation/EditText;->validate()Z

    .line 488
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/validation/EditText$1;->this$0:Lde/mrapp/android/validation/EditText;

    invoke-static {p1}, Lde/mrapp/android/validation/EditText;->access$100(Lde/mrapp/android/validation/EditText;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
