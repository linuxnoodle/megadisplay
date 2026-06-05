package de.mrapp.android.dialog.decorator;

import de.mrapp.android.dialog.model.Dialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDialogDecorator<DialogType extends Dialog> extends AbstractDecorator<DialogType, Void> {
    public AbstractDialogDecorator(DialogType dialogtype) {
        super(dialogtype);
    }
}
