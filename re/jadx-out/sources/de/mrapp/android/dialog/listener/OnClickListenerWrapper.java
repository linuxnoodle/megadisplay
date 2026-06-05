package de.mrapp.android.dialog.listener;

import android.content.DialogInterface;
import android.view.View;
import de.mrapp.android.dialog.DialogValidator;
import de.mrapp.android.dialog.model.ValidateableDialog;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class OnClickListenerWrapper extends AbstractListenerWrapper implements View.OnClickListener {
    private final boolean validate;
    private final DialogInterface.OnClickListener wrappedListener;

    public OnClickListenerWrapper(DialogInterface.OnClickListener onClickListener, boolean z, ValidateableDialog validateableDialog, int i) {
        super(validateableDialog, i);
        this.wrappedListener = onClickListener;
        this.validate = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.validate) {
            Iterator<DialogValidator> it = getDialog().getDialogValidators().iterator();
            while (it.hasNext()) {
                if (!it.next().validate(getDialog())) {
                    return;
                }
            }
        }
        DialogInterface.OnClickListener onClickListener = this.wrappedListener;
        if (onClickListener != null) {
            onClickListener.onClick(getDialog(), getButtonType());
        }
        attemptCloseDialog();
    }
}
