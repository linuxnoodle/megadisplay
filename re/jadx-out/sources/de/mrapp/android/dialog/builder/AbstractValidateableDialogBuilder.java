package de.mrapp.android.dialog.builder;

import android.content.Context;
import de.mrapp.android.dialog.DialogValidator;
import de.mrapp.android.dialog.builder.AbstractValidateableDialogBuilder;
import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.util.Condition;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractValidateableDialogBuilder<DialogType extends ValidateableDialog, BuilderType extends AbstractValidateableDialogBuilder<DialogType, ?>> extends AbstractAnimateableDialogBuilder<DialogType, BuilderType> {
    public AbstractValidateableDialogBuilder(Context context) {
        super(context);
    }

    public AbstractValidateableDialogBuilder(Context context, int i) {
        super(context, i);
    }

    public final BuilderType addDialogValidator(DialogValidator dialogValidator) {
        Condition.INSTANCE.ensureNotNull(dialogValidator, "The validator may not be null");
        getProduct().addDialogValidator(dialogValidator);
        return self();
    }

    public final BuilderType addAllDialogValidators(Collection<DialogValidator> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        getProduct().addAllDialogValidators(collection);
        return self();
    }
}
