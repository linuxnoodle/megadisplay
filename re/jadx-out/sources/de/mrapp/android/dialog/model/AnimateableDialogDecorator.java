package de.mrapp.android.dialog.model;

import de.mrapp.android.dialog.animation.DialogAnimation;

/* JADX INFO: loaded from: classes2.dex */
public interface AnimateableDialogDecorator extends Dialog {
    DialogAnimation getCancelAnimation();

    DialogAnimation getDismissAnimation();

    DialogAnimation getShowAnimation();

    void setCancelAnimation(DialogAnimation dialogAnimation);

    void setDismissAnimation(DialogAnimation dialogAnimation);

    void setShowAnimation(DialogAnimation dialogAnimation);
}
