.class public abstract Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;
.super Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;
.source "AbstractHeaderDialogFragment.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/HeaderDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;-><init>()V

    .line 55
    new-instance v0, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/MaterialDialog;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    .line 56
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final getHeaderBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 96
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderDividerColor()I
    .locals 1

    .line 187
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderDividerColor()I

    move-result v0

    return v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 86
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderHeight()I

    move-result v0

    return v0
.end method

.method public final getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 134
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 161
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 177
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomHeaderUsed()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isCustomHeaderUsed()Z

    move-result v0

    return v0
.end method

.method public final isHeaderDividerShown()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderDividerShown()Z

    move-result v0

    return v0
.end method

.method public final isHeaderShown()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderShown()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setCustomHeader(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setCustomHeader(I)V

    return-void
.end method

.method public final setCustomHeader(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setCustomHeader(Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderBackground(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(I)V

    return-void
.end method

.method public final setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackgroundColor(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(I)V

    return-void
.end method

.method public final setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderDividerColor(I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderDividerColor(I)V

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderHeight(I)V

    return-void
.end method

.method public final setHeaderIcon(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(I)V

    return-void
.end method

.method public final setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIconTint(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTint(I)V

    return-void
.end method

.method public final setHeaderIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final showHeader(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader(Z)V

    return-void
.end method

.method public final showHeaderDivider(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider(Z)V

    return-void
.end method
