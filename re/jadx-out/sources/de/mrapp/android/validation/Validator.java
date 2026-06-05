package de.mrapp.android.validation;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public interface Validator<Type> {
    CharSequence getErrorMessage();

    Drawable getIcon();

    boolean validate(Type type);
}
