package de.mrapp.android.dialog.model;

import de.mrapp.android.dialog.DialogValidator;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface ValidateableDialogDecorator extends Dialog {
    void addAllDialogValidators(Collection<DialogValidator> collection);

    void addDialogValidator(DialogValidator dialogValidator);

    Set<DialogValidator> getDialogValidators();

    void removeAllDialogValidators(Collection<DialogValidator> collection);

    void removeDialogValidator(DialogValidator dialogValidator);
}
