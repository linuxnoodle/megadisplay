package de.mrapp.android.dialog.model;

import de.mrapp.android.dialog.ProgressDialog;

/* JADX INFO: loaded from: classes2.dex */
public interface ProgressDialogDecorator extends Dialog {
    int getProgressBarColor();

    ProgressDialog.ProgressBarPosition getProgressBarPosition();

    int getProgressBarSize();

    int getProgressBarThickness();

    void setProgressBarColor(int i);

    void setProgressBarPosition(ProgressDialog.ProgressBarPosition progressBarPosition);

    void setProgressBarSize(int i);

    void setProgressBarThickness(int i);
}
