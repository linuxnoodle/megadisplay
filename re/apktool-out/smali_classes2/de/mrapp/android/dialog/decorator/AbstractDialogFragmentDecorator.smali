.class public abstract Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDecorator;
.source "AbstractDialogFragmentDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/Dialog;",
        ">",
        "Lde/mrapp/android/dialog/decorator/AbstractDecorator<",
        "TDialogType;",
        "Landroidx/fragment/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/model/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogType;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    return-void
.end method
