.class public interface abstract Lde/mrapp/android/dialog/model/EditTextDialogDecorator;
.super Ljava/lang/Object;
.source "EditTextDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/Dialog;
.implements Lde/mrapp/android/validation/Validateable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/mrapp/android/dialog/model/Dialog;",
        "Lde/mrapp/android/validation/Validateable<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public abstract getErrorColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getHelperText()Ljava/lang/CharSequence;
.end method

.method public abstract getHelperTextColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getHint()Ljava/lang/CharSequence;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
.end method

.method public abstract setErrorColor(I)V
.end method

.method public abstract setErrorColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setHelperText(I)V
.end method

.method public abstract setHelperText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setHelperTextColor(I)V
.end method

.method public abstract setHelperTextColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setHint(I)V
.end method

.method public abstract setHint(Ljava/lang/CharSequence;)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method
