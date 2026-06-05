package de.mrapp.android.dialog.model;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;

/* JADX INFO: loaded from: classes2.dex */
public interface ButtonBarDialogDecorator extends Dialog {
    boolean areButtonsStacked();

    Button getButton(int i);

    ColorStateList getButtonTextColor();

    Typeface getButtonTypeface();

    boolean isButtonBarDividerShown();

    boolean isCustomButtonBarUsed();

    void setButtonTextColor(int i);

    void setButtonTextColor(ColorStateList colorStateList);

    void setButtonTypeface(Typeface typeface);

    void setCustomButtonBar(int i);

    void setCustomButtonBar(View view);

    void setNegativeButton(int i, DialogInterface.OnClickListener onClickListener);

    void setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener);

    void setNeutralButton(int i, DialogInterface.OnClickListener onClickListener);

    void setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener);

    void setPositiveButton(int i, DialogInterface.OnClickListener onClickListener);

    void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener);

    void showButtonBarDivider(boolean z);

    void stackButtons(boolean z);
}
