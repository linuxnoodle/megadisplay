.class public Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;
.super Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;
.source "OnMultiChoiceClickListenerWrapper.java"

# interfaces
.implements Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;


# instance fields
.field private wrappedListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnMultiChoiceClickListener;Lde/mrapp/android/dialog/model/ValidateableDialog;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p2, p3}, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;-><init>(Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 59
    iput-object p1, p0, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper<",
            "*>;I)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;->getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;

    move-result-object v1

    invoke-virtual {p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemChecked(I)Z

    move-result p1

    invoke-interface {v0, v1, p2, p1}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;->attemptCloseDialog()V

    return-void
.end method
