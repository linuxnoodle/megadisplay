.class public interface abstract Lde/mrapp/android/validation/ValidationListener;
.super Ljava/lang/Object;
.source "ValidationListener.java"


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
.method public abstract onValidationFailure(Lde/mrapp/android/validation/Validateable;Lde/mrapp/android/validation/Validator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validateable<",
            "TType;>;",
            "Lde/mrapp/android/validation/Validator<",
            "TType;>;)V"
        }
    .end annotation
.end method

.method public abstract onValidationSuccess(Lde/mrapp/android/validation/Validateable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validateable<",
            "TType;>;)V"
        }
    .end annotation
.end method
