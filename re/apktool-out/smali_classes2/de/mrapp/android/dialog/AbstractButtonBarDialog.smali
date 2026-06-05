.class public abstract Lde/mrapp/android/dialog/AbstractButtonBarDialog;
.super Lde/mrapp/android/dialog/AbstractValidateableDialog;
.source "AbstractButtonBarDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ButtonBarDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractValidateableDialog;-><init>(Landroid/content/Context;I)V

    .line 62
    new-instance p1, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/ValidateableDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    .line 63
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final areButtonsStacked()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->areButtonsStacked()Z

    move-result v0

    return v0
.end method

.method public final getButton(I)Landroid/widget/Button;
    .locals 1

    .line 68
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public final getButtonTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 120
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getButtonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getButtonTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 136
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getButtonTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final isButtonBarDividerShown()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->isButtonBarDividerShown()Z

    move-result v0

    return v0
.end method

.method public final isCustomButtonBarUsed()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->isCustomButtonBarUsed()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 182
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractValidateableDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 173
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractValidateableDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setButtonTextColor(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setButtonTextColor(I)V

    return-void
.end method

.method public final setButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setButtonTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setButtonTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setButtonTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setCustomButtonBar(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setCustomButtonBar(I)V

    return-void
.end method

.method public final setCustomButtonBar(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setCustomButtonBar(Landroid/view/View;)V

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final showButtonBarDivider(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider(Z)V

    return-void
.end method

.method public final stackButtons(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->decorator:Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->stackButtons(Z)V

    return-void
.end method
