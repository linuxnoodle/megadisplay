.class public interface abstract Lde/mrapp/android/dialog/model/ButtonBarDialogDecorator;
.super Ljava/lang/Object;
.source "ButtonBarDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/Dialog;


# virtual methods
.method public abstract areButtonsStacked()Z
.end method

.method public abstract getButton(I)Landroid/widget/Button;
.end method

.method public abstract getButtonTextColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getButtonTypeface()Landroid/graphics/Typeface;
.end method

.method public abstract isButtonBarDividerShown()Z
.end method

.method public abstract isCustomButtonBarUsed()Z
.end method

.method public abstract setButtonTextColor(I)V
.end method

.method public abstract setButtonTextColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setButtonTypeface(Landroid/graphics/Typeface;)V
.end method

.method public abstract setCustomButtonBar(I)V
.end method

.method public abstract setCustomButtonBar(Landroid/view/View;)V
.end method

.method public abstract setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showButtonBarDivider(Z)V
.end method

.method public abstract stackButtons(Z)V
.end method
