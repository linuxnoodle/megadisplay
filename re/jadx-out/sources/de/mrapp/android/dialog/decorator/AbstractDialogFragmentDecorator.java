package de.mrapp.android.dialog.decorator;

import androidx.fragment.app.FragmentManager;
import de.mrapp.android.dialog.model.Dialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDialogFragmentDecorator<DialogType extends Dialog> extends AbstractDecorator<DialogType, FragmentManager> {
    public AbstractDialogFragmentDecorator(DialogType dialogtype) {
        super(dialogtype);
    }
}
