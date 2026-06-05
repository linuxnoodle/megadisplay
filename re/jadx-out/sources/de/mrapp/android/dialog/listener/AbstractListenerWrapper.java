package de.mrapp.android.dialog.listener;

import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractListenerWrapper {
    private final int buttonType;
    private final ValidateableDialog dialog;

    protected final void attemptCloseDialog() {
        int i = this.buttonType;
        if (i == -3) {
            this.dialog.cancel();
        } else if (i == -2) {
            this.dialog.cancel();
        } else {
            if (i != -1) {
                return;
            }
            this.dialog.dismiss();
        }
    }

    protected final ValidateableDialog getDialog() {
        return this.dialog;
    }

    protected final int getButtonType() {
        return this.buttonType;
    }

    public AbstractListenerWrapper(ValidateableDialog validateableDialog, int i) {
        Condition.INSTANCE.ensureNotNull(validateableDialog, "The dialog may not be null");
        this.dialog = validateableDialog;
        this.buttonType = i;
    }
}
