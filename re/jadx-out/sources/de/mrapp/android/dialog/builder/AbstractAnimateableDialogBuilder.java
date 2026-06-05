package de.mrapp.android.dialog.builder;

import android.content.Context;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.android.dialog.builder.AbstractAnimateableDialogBuilder;
import de.mrapp.android.dialog.model.AnimateableDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractAnimateableDialogBuilder<DialogType extends AnimateableDialog, BuilderType extends AbstractAnimateableDialogBuilder<DialogType, ?>> extends AbstractHeaderDialogBuilder<DialogType, BuilderType> {
    public AbstractAnimateableDialogBuilder(Context context) {
        super(context);
    }

    public AbstractAnimateableDialogBuilder(Context context, int i) {
        super(context, i);
    }

    public final BuilderType setShowAnimation(DialogAnimation dialogAnimation) {
        getProduct().setShowAnimation(dialogAnimation);
        return self();
    }

    public final BuilderType setDismissAnimation(DialogAnimation dialogAnimation) {
        getProduct().setDismissAnimation(dialogAnimation);
        return self();
    }

    public final BuilderType setCancelAnimation(DialogAnimation dialogAnimation) {
        getProduct().setCancelAnimation(dialogAnimation);
        return self();
    }
}
