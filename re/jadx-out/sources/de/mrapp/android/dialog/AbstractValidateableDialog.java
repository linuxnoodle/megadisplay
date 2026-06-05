package de.mrapp.android.dialog;

import android.content.Context;
import android.os.Bundle;
import de.mrapp.android.dialog.decorator.ValidateableDialogDecorator;
import de.mrapp.android.dialog.model.ValidateableDialog;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractValidateableDialog extends AbstractAnimateableDialog implements ValidateableDialog {
    private final ValidateableDialogDecorator decorator;

    protected AbstractValidateableDialog(Context context, int i) {
        super(context, i);
        ValidateableDialogDecorator validateableDialogDecorator = new ValidateableDialogDecorator(this);
        this.decorator = validateableDialogDecorator;
        addDecorator(validateableDialogDecorator);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final Set<DialogValidator> getDialogValidators() {
        return this.decorator.getDialogValidators();
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void addDialogValidator(DialogValidator dialogValidator) {
        this.decorator.addDialogValidator(dialogValidator);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void addAllDialogValidators(Collection<DialogValidator> collection) {
        this.decorator.addAllDialogValidators(collection);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void removeDialogValidator(DialogValidator dialogValidator) {
        this.decorator.removeDialogValidator(dialogValidator);
    }

    @Override // de.mrapp.android.dialog.model.ValidateableDialogDecorator
    public final void removeAllDialogValidators(Collection<DialogValidator> collection) {
        this.decorator.removeAllDialogValidators(collection);
    }

    @Override // de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
