package de.mrapp.android.dialog.model;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.android.dialog.animation.DrawableAnimation;

/* JADX INFO: loaded from: classes2.dex */
public interface HeaderDialogDecorator extends Dialog {
    Drawable getHeaderBackground();

    int getHeaderDividerColor();

    int getHeaderHeight();

    Drawable getHeaderIcon();

    ColorStateList getHeaderIconTintList();

    PorterDuff.Mode getHeaderIconTintMode();

    boolean isCustomHeaderUsed();

    boolean isHeaderDividerShown();

    boolean isHeaderShown();

    void setCustomHeader(int i);

    void setCustomHeader(View view);

    void setHeaderBackground(int i);

    void setHeaderBackground(int i, BackgroundAnimation backgroundAnimation);

    void setHeaderBackground(Bitmap bitmap);

    void setHeaderBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation);

    void setHeaderBackgroundColor(int i);

    void setHeaderBackgroundColor(int i, BackgroundAnimation backgroundAnimation);

    void setHeaderDividerColor(int i);

    void setHeaderHeight(int i);

    void setHeaderIcon(int i);

    void setHeaderIcon(int i, DrawableAnimation drawableAnimation);

    void setHeaderIcon(Bitmap bitmap);

    void setHeaderIcon(Bitmap bitmap, DrawableAnimation drawableAnimation);

    void setHeaderIconTint(int i);

    void setHeaderIconTintList(ColorStateList colorStateList);

    void setHeaderIconTintMode(PorterDuff.Mode mode);

    void showHeader(boolean z);

    void showHeaderDivider(boolean z);
}
