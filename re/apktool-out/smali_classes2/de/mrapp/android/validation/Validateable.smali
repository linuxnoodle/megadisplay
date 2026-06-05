.class public interface abstract Lde/mrapp/android/validation/Validateable;
.super Ljava/lang/Object;
.source "Validateable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addAllValidators(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract addAllValidators([Lde/mrapp/android/validation/Validator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract addValidator(Lde/mrapp/android/validation/Validator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract getValidators()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;>;"
        }
    .end annotation
.end method

.method public abstract isValidatedOnFocusLost()Z
.end method

.method public abstract isValidatedOnValueChange()Z
.end method

.method public abstract removeAllValidators()V
.end method

.method public abstract removeAllValidators(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;>;)V"
        }
    .end annotation
.end method

.method public varargs abstract removeAllValidators([Lde/mrapp/android/validation/Validator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract removeValidator(Lde/mrapp/android/validation/Validator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract validate()Z
.end method

.method public abstract validateOnFocusLost(Z)V
.end method

.method public abstract validateOnValueChange(Z)V
.end method
