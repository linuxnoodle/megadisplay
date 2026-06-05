package de.mrapp.android.dialog.model;

import android.content.DialogInterface;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
public interface MaterialDialog extends MaterialDialogDecorator, DialogInterface {
    ScrollView getScrollView();

    @Override // de.mrapp.android.dialog.model.MaterialDialog, de.mrapp.android.dialog.model.MaterialDialogDecorator
    void setCancelable(boolean z);

    void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener);

    void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener);

    void setOnShowListener(DialogInterface.OnShowListener onShowListener);
}
