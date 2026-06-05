package de.mrapp.android.dialog.model;

import android.content.res.ColorStateList;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import de.mrapp.android.validation.Validateable;

/* JADX INFO: loaded from: classes2.dex */
public interface EditTextDialogDecorator extends Dialog, Validateable<CharSequence> {
    EditText getEditText();

    ColorStateList getErrorColor();

    CharSequence getHelperText();

    ColorStateList getHelperTextColor();

    CharSequence getHint();

    CharSequence getText();

    TextInputLayout getTextInputLayout();

    void setErrorColor(int i);

    void setErrorColor(ColorStateList colorStateList);

    void setHelperText(int i);

    void setHelperText(CharSequence charSequence);

    void setHelperTextColor(int i);

    void setHelperTextColor(ColorStateList colorStateList);

    void setHint(int i);

    void setHint(CharSequence charSequence);

    void setText(CharSequence charSequence);
}
