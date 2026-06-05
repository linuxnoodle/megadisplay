.class public Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;
.super Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;
.source "OnItemClickListenerWrapper.java"

# interfaces
.implements Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;


# instance fields
.field private final wrappedListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;Lde/mrapp/android/dialog/model/ValidateableDialog;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p2, p3}, Lde/mrapp/android/dialog/listener/AbstractListenerWrapper;-><init>(Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 57
    iput-object p1, p0, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper<",
            "*>;I)V"
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;->wrappedListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;->getDialog()Lde/mrapp/android/dialog/model/ValidateableDialog;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;->attemptCloseDialog()V

    return-void
.end method
