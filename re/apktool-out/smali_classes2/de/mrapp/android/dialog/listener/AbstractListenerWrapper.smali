.class public abstract Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;
.super Ljava/lang/Object;
.source "AbstractListenerWrapper.java"


# instance fields
.field private final buttonType:I

.field private final dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/model/ValidateableDialog;I)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dialog may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;

    .line 98
    iput p2, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->buttonType:I

    return-void
.end method


# virtual methods
.method protected final attemptCloseDialog()V
    .locals 2

    .line 48
    iget v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->buttonType:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/ValidateableDialog;->dismiss()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/ValidateableDialog;->cancel()V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/ValidateableDialog;->cancel()V

    :goto_0
    return-void
.end method

.method protected final getButtonType()I
    .locals 1

    .line 80
    iget v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->buttonType:I

    return v0
.end method

.method protected final getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;
    .locals 1

    .line 70
    iget-object v0, p0, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;->dialog:Lde/mrapp/android/dialog/model/ValidateableDialog;

    return-object v0
.end method
