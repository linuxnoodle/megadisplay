.class public interface abstract Lde/mrapp/android/dialog/model/HeaderDialogDecorator;
.super Ljava/lang/Object;
.source "HeaderDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/Dialog;


# virtual methods
.method public abstract getHeaderBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHeaderDividerColor()I
.end method

.method public abstract getHeaderHeight()I
.end method

.method public abstract getHeaderIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHeaderIconTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract isCustomHeaderUsed()Z
.end method

.method public abstract isHeaderDividerShown()Z
.end method

.method public abstract isHeaderShown()Z
.end method

.method public abstract setCustomHeader(I)V
.end method

.method public abstract setCustomHeader(Landroid/view/View;)V
.end method

.method public abstract setHeaderBackground(I)V
.end method

.method public abstract setHeaderBackground(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
.end method

.method public abstract setHeaderBackground(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setHeaderBackground(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/BackgroundAnimation;)V
.end method

.method public abstract setHeaderBackgroundColor(I)V
.end method

.method public abstract setHeaderBackgroundColor(ILde/mrapp/android/dialog/animation/BackgroundAnimation;)V
.end method

.method public abstract setHeaderDividerColor(I)V
.end method

.method public abstract setHeaderHeight(I)V
.end method

.method public abstract setHeaderIcon(I)V
.end method

.method public abstract setHeaderIcon(ILde/mrapp/android/dialog/animation/DrawableAnimation;)V
.end method

.method public abstract setHeaderIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setHeaderIcon(Landroid/graphics/Bitmap;Lde/mrapp/android/dialog/animation/DrawableAnimation;)V
.end method

.method public abstract setHeaderIconTint(I)V
.end method

.method public abstract setHeaderIconTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract showHeader(Z)V
.end method

.method public abstract showHeaderDivider(Z)V
.end method
