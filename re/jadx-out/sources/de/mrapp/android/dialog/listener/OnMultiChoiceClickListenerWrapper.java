package de.mrapp.android.dialog.listener;

import android.content.DialogInterface;
import de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper;
import de.mrapp.android.dialog.model.ValidateableDialog;

/* JADX INFO: loaded from: classes2.dex */
public class OnMultiChoiceClickListenerWrapper extends AbstractListenerWrapper implements RecyclerViewAdapterWrapper.OnItemClickListener {
    private DialogInterface.OnMultiChoiceClickListener wrappedListener;

    public OnMultiChoiceClickListenerWrapper(DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener, ValidateableDialog validateableDialog, int i) {
        super(validateableDialog, i);
        this.wrappedListener = onMultiChoiceClickListener;
    }

    @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.OnItemClickListener
    public final void onItemClick(RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper, int i) {
        DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener = this.wrappedListener;
        if (onMultiChoiceClickListener != null) {
            onMultiChoiceClickListener.onClick(getDialog(), i, recyclerViewAdapterWrapper.isItemChecked(i));
        }
        attemptCloseDialog();
    }
}
