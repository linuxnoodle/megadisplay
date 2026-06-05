package de.mrapp.android.validation.validators;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import de.mrapp.android.validation.Validator;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractValidator<Type> implements Validator<Type> {
    private CharSequence errorMessage;
    private Drawable icon;

    public AbstractValidator(CharSequence charSequence) {
        setErrorMessage(charSequence);
    }

    public AbstractValidator(Context context, int i) {
        setErrorMessage(context, i);
    }

    public final void setErrorMessage(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The error message may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The error message may not be empty");
        this.errorMessage = charSequence;
    }

    public final void setErrorMessage(Context context, int i) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.errorMessage = context.getText(i);
    }

    public final void setIcon(Drawable drawable) {
        this.icon = drawable;
    }

    public final void setIcon(Context context, int i) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.icon = ContextCompat.getDrawable(context, i);
    }

    @Override // de.mrapp.android.validation.Validator
    public final CharSequence getErrorMessage() {
        return this.errorMessage;
    }

    @Override // de.mrapp.android.validation.Validator
    public final Drawable getIcon() {
        return this.icon;
    }
}
