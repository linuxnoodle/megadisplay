package de.mrapp.android.dialog;

import android.content.Context;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialDialog extends AbstractListDialog {

    public static class Builder extends AbstractListDialogBuilder<MaterialDialog, Builder> {
        public Builder(Context context) {
            super(context);
        }

        public Builder(Context context, int i) {
            super(context, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final MaterialDialog show() {
            MaterialDialog materialDialog = (MaterialDialog) create();
            materialDialog.show();
            return materialDialog;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final MaterialDialog onCreateProduct() {
            return new MaterialDialog(getContext(), getThemeResourceId());
        }
    }

    protected MaterialDialog(Context context, int i) {
        super(context, i);
    }
}
