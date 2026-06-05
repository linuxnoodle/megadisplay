package de.mrapp.android.dialog.model;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public interface DialogDecorator extends Dialog {
    void onRestoreInstanceState(Bundle bundle);

    void onSaveInstanceState(Bundle bundle);
}
