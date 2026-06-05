.class public interface abstract Lde/mrapp/android/dialog/model/ValidateableDialogDecorator;
.super Ljava/lang/Object;
.source "ValidateableDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/Dialog;


# virtual methods
.method public abstract addAllDialogValidators(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V
.end method

.method public abstract getDialogValidators()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllDialogValidators(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V
.end method
