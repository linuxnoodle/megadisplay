package de.mrapp.android.dialog.listener;

import android.content.DialogInterface;
import de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper;
import de.mrapp.android.dialog.model.ValidateableDialog;

/* JADX INFO: loaded from: classes2.dex */
public class OnItemClickListenerWrapper extends AbstractListenerWrapper implements RecyclerViewAdapterWrapper.OnItemClickListener {
    private final DialogInterface.OnClickListener wrappedListener;

    public OnItemClickListenerWrapper(DialogInterface.OnClickListener onClickListener, ValidateableDialog validateableDialog, int i) {
        super(validateableDialog, i);
        this.wrappedListener = onClickListener;
    }

    @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.OnItemClickListener
    public final void onItemClick(RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper, int i) {
        DialogInterface.OnClickListener onClickListener = this.wrappedListener;
        if (onClickListener != null) {
            onClickListener.onClick(getDialog(), i);
        }
        attemptCloseDialog();
    }
}
