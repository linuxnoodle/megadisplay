.class public abstract Lde/mrapp/android/dialog/AbstractHeaderDialog;
.super Lde/mrapp/android/dialog/AbstractMaterialDialog;
.source "AbstractHeaderDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/HeaderDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractMaterialDialog;-><init>(Landroid/content/Context;I)V

    .line 64
    new-instance p1, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/MaterialDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    .line 65
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final getHeaderBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderDividerColor()I
    .locals 1

    .line 196
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderDividerColor()I

    move-result v0

    return v0
.end method

.method public final getHeaderHeight()I
    .locals 1

    .line 95
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderHeight()I

    move-result v0

    return v0
.end method

.method public final getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 170
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 186
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomHeaderUsed()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isCustomHeaderUsed()Z

    move-result v0

    return v0
.end method

.method public final isHeaderDividerShown()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderDividerShown()Z

    move-result v0

    return v0
.end method

.method public final isHeaderShown()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->isHeaderShown()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 227
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 218
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractMaterialDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setCustomHeader(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setCustomHeader(I)V

    return-void
.end method

.method public final setCustomHeader(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setCustomHeader(Landroid/view/View;)V

    return-void
.end method

.method public final setHeaderBackground(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(I)V

    return-void
.end method

.method public final setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderBackgroundColor(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(I)V

    return-void
.end method

.method public final setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V

    return-void
.end method

.method public final setHeaderDividerColor(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderDividerColor(I)V

    return-void
.end method

.method public final setHeaderHeight(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderHeight(I)V

    return-void
.end method

.method public final setHeaderIcon(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(I)V

    return-void
.end method

.method public final setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V

    return-void
.end method

.method public final setHeaderIconTint(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTint(I)V

    return-void
.end method

.method public final setHeaderIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final showHeader(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeader(Z)V

    return-void
.end method

.method public final showHeaderDivider(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractHeaderDialog;->decorator:Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/HeaderDialogDecorator;->showHeaderDivider(Z)V

    return-void
.end method
