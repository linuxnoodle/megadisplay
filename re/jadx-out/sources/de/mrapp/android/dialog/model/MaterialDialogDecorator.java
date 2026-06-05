package de.mrapp.android.dialog.model;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.animation.BackgroundAnimation;

/* JADX INFO: loaded from: classes2.dex */
public interface MaterialDialogDecorator extends Dialog {
    boolean areDividersShownOnScroll();

    Drawable getBackground();

    int getBottomMargin();

    int getDividerColor();

    int getDividerMargin();

    int getGravity();

    int getHeight();

    Drawable getIcon();

    ColorStateList getIconTintList();

    PorterDuff.Mode getIconTintMode();

    int getLeftMargin();

    int getMaxHeight();

    int getMaxWidth();

    CharSequence getMessage();

    int getMessageColor();

    Typeface getMessageTypeface();

    int getPaddingBottom();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingTop();

    int getRightMargin();

    ScrollableArea getScrollableArea();

    CharSequence getTitle();

    int getTitleColor();

    Typeface getTitleTypeface();

    int getTopMargin();

    int getWidth();

    Drawable getWindowBackground();

    int getWindowInsetBottom();

    int getWindowInsetLeft();

    int getWindowInsetRight();

    int getWindowInsetTop();

    boolean isCancelable();

    boolean isCanceledOnTouchOutside();

    boolean isCustomMessageUsed();

    boolean isCustomTitleUsed();

    boolean isCustomViewUsed();

    boolean isFitsSystemWindowsBottom();

    boolean isFitsSystemWindowsLeft();

    boolean isFitsSystemWindowsRight();

    boolean isFitsSystemWindowsTop();

    boolean isFullscreen();

    void setBackground(int i);

    void setBackground(int i, BackgroundAnimation backgroundAnimation);

    void setBackground(Bitmap bitmap);

    void setBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation);

    void setBackgroundColor(int i);

    void setBackgroundColor(int i, BackgroundAnimation backgroundAnimation);

    void setCancelable(boolean z);

    void setCanceledOnTouchOutside(boolean z);

    void setCustomMessage(int i);

    void setCustomMessage(View view);

    void setCustomTitle(int i);

    void setCustomTitle(View view);

    void setDividerColor(int i);

    void setDividerMargin(int i);

    void setFitsSystemWindows(boolean z);

    void setFitsSystemWindows(boolean z, boolean z2, boolean z3, boolean z4);

    void setFullscreen(boolean z);

    void setGravity(int i);

    void setHeight(int i);

    void setIcon(int i);

    void setIcon(Bitmap bitmap);

    void setIconAttribute(int i);

    void setIconTint(int i);

    void setIconTintList(ColorStateList colorStateList);

    void setIconTintMode(PorterDuff.Mode mode);

    void setMargin(int i, int i2, int i3, int i4);

    void setMaxHeight(int i);

    void setMaxWidth(int i);

    void setMessage(int i);

    void setMessage(CharSequence charSequence);

    void setMessageColor(int i);

    void setMessageTypeface(Typeface typeface);

    void setPadding(int i, int i2, int i3, int i4);

    void setScrollableArea(ScrollableArea.Area area);

    void setScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2);

    void setTitle(int i);

    void setTitle(CharSequence charSequence);

    void setTitleColor(int i);

    void setTitleTypeface(Typeface typeface);

    void setView(int i);

    void setView(View view);

    void setWidth(int i);

    void setWindowBackground(int i);

    void setWindowBackground(Bitmap bitmap);

    void showDividersOnScroll(boolean z);
}
