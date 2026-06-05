package de.mrapp.android.dialog.model;

/* JADX INFO: loaded from: classes2.dex */
public interface ListDialog extends ButtonBarDialog, ListDialogDecorator {

    public interface OnItemEnabledListener {
        void onItemEnableStateChanged(int i, boolean z);
    }

    public interface OnItemSelectedListener {
        void onItemSelectionStateChanged(int i, boolean z);
    }
}
