.class public Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;
.super Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;
.source "OnClickListenerWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final validate:Z

.field private final wrappedListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;ZLde/mrapp/android/dialog/model/ValidateableDialog;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p3, p4}, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;-><init>(Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 66
    iput-object p1, p0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iput-boolean p2, p0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->validate:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-boolean p1, p0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->validate:Z

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;

    move-result-object p1

    invoke-interface {p1}, Lde/mrapp/android/dialog/model/ValidateableDialog;->getDialogValidators()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/DialogValidator;

    .line 74
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/mrapp/android/dialog/DialogValidator;->validate(Lde/mrapp/android/dialog/model/ValidateableDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->getButtonType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 84
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;->attemptCloseDialog()V

    return-void
.end method
