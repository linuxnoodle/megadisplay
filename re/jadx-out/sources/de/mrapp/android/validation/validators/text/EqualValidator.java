package de.mrapp.android.validation.validators.text;

import android.content.Context;
import android.text.TextUtils;
import de.mrapp.android.validation.EditText;
import de.mrapp.android.validation.validators.AbstractValidator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class EqualValidator extends AbstractValidator<CharSequence> {
    private EditText editText;

    public EqualValidator(CharSequence charSequence, EditText editText) {
        super(charSequence);
        setEditText(editText);
    }

    public EqualValidator(Context context, int i, EditText editText) {
        super(context, i);
        setEditText(editText);
    }

    public final EditText getEditText() {
        return this.editText;
    }

    public final void setEditText(EditText editText) {
        Condition.INSTANCE.ensureNotNull(editText, "The edit text widget may not be null");
        this.editText = editText;
    }

    @Override // de.mrapp.android.validation.Validator
    public final boolean validate(CharSequence charSequence) {
        return TextUtils.equals(charSequence, getEditText().getText());
    }
}
