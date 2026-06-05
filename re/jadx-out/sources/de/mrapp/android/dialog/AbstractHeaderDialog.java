package de.mrapp.android.dialog;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.android.dialog.animation.DrawableAnimation;
import de.mrapp.android.dialog.decorator.HeaderDialogDecorator;
import de.mrapp.android.dialog.model.HeaderDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractHeaderDialog extends AbstractMaterialDialog implements HeaderDialog {
    private final HeaderDialogDecorator decorator;

    protected AbstractHeaderDialog(Context context, int i) {
        super(context, i);
        HeaderDialogDecorator headerDialogDecorator = new HeaderDialogDecorator(this);
        this.decorator = headerDialogDecorator;
        addDecorator(headerDialogDecorator);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isHeaderShown() {
        return this.decorator.isHeaderShown();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void showHeader(boolean z) {
        this.decorator.showHeader(z);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isCustomHeaderUsed() {
        return this.decorator.isCustomHeaderUsed();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setCustomHeader(View view) {
        this.decorator.setCustomHeader(view);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setCustomHeader(int i) {
        this.decorator.setCustomHeader(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final int getHeaderHeight() {
        return this.decorator.getHeaderHeight();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderHeight(int i) {
        this.decorator.setHeaderHeight(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final Drawable getHeaderBackground() {
        return this.decorator.getHeaderBackground();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackgroundColor(int i) {
        this.decorator.setHeaderBackgroundColor(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackgroundColor(int i, BackgroundAnimation backgroundAnimation) {
        this.decorator.setHeaderBackgroundColor(i, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(int i) {
        this.decorator.setHeaderBackground(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(int i, BackgroundAnimation backgroundAnimation) {
        this.decorator.setHeaderBackground(i, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(Bitmap bitmap) {
        this.decorator.setHeaderBackground(bitmap);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation) {
        this.decorator.setHeaderBackground(bitmap, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final Drawable getHeaderIcon() {
        return this.decorator.getHeaderIcon();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(int i) {
        this.decorator.setHeaderIcon(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(int i, DrawableAnimation drawableAnimation) {
        this.decorator.setHeaderIcon(i, drawableAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(Bitmap bitmap) {
        this.decorator.setHeaderIcon(bitmap);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(Bitmap bitmap, DrawableAnimation drawableAnimation) {
        this.decorator.setHeaderIcon(bitmap, drawableAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final ColorStateList getHeaderIconTintList() {
        return this.decorator.getHeaderIconTintList();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTint(int i) {
        this.decorator.setHeaderIconTint(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTintList(ColorStateList colorStateList) {
        this.decorator.setHeaderIconTintList(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final PorterDuff.Mode getHeaderIconTintMode() {
        return this.decorator.getHeaderIconTintMode();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTintMode(PorterDuff.Mode mode) {
        this.decorator.setHeaderIconTintMode(mode);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final int getHeaderDividerColor() {
        return this.decorator.getHeaderDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderDividerColor(int i) {
        this.decorator.setHeaderDividerColor(i);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isHeaderDividerShown() {
        return this.decorator.isHeaderDividerShown();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void showHeaderDivider(boolean z) {
        this.decorator.showHeaderDivider(z);
    }

    @Override // de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
