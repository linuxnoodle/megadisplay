package de.mrapp.android.dialog;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.android.dialog.decorator.AnimateableDialogDecorator;
import de.mrapp.android.dialog.model.AnimateableDialog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractAnimateableDialog extends AbstractHeaderDialog implements AnimateableDialog {
    private final AnimateableDialogDecorator decorator;
    private DialogInterface.OnShowListener onShowListener;

    private DialogInterface.OnShowListener createOnShowListener() {
        return new DialogInterface.OnShowListener() { // from class: de.mrapp.android.dialog.AbstractAnimateableDialog.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                AbstractAnimateableDialog.this.decorator.showAnimated(AbstractAnimateableDialog.this.getShowAnimation(), null);
                if (AbstractAnimateableDialog.this.onShowListener != null) {
                    AbstractAnimateableDialog.this.onShowListener.onShow(dialogInterface);
                }
            }
        };
    }

    private Animator.AnimatorListener createDismissAnimationListener() {
        return new AnimatorListenerAdapter() { // from class: de.mrapp.android.dialog.AbstractAnimateableDialog.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AbstractAnimateableDialog.super.dismiss();
            }
        };
    }

    private Animator.AnimatorListener createCancelAnimationListener() {
        return new AnimatorListenerAdapter() { // from class: de.mrapp.android.dialog.AbstractAnimateableDialog.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AbstractAnimateableDialog.super.cancel();
            }
        };
    }

    protected AbstractAnimateableDialog(Context context, int i) {
        super(context, i);
        AnimateableDialogDecorator animateableDialogDecorator = new AnimateableDialogDecorator(this);
        this.decorator = animateableDialogDecorator;
        addDecorator(animateableDialogDecorator);
        super.setOnShowListener(createOnShowListener());
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getShowAnimation() {
        return this.decorator.getShowAnimation();
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setShowAnimation(DialogAnimation dialogAnimation) {
        this.decorator.setShowAnimation(dialogAnimation);
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getDismissAnimation() {
        return this.decorator.getDismissAnimation();
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setDismissAnimation(DialogAnimation dialogAnimation) {
        this.decorator.setDismissAnimation(dialogAnimation);
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getCancelAnimation() {
        return this.decorator.getCancelAnimation();
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setCancelAnimation(DialogAnimation dialogAnimation) {
        this.decorator.setCancelAnimation(dialogAnimation);
    }

    @Override // android.app.Dialog, de.mrapp.android.dialog.model.MaterialDialog
    public final void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.onShowListener = onShowListener;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        if (this.decorator.hideAnimated(getDismissAnimation(), createDismissAnimationListener())) {
            return;
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        if (this.decorator.hideAnimated(getCancelAnimation(), createCancelAnimationListener())) {
            return;
        }
        super.cancel();
    }

    @Override // de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }

    @Override // de.mrapp.android.dialog.AbstractMaterialDialog
    protected final boolean onCanceledOnTouchOutside() {
        if (this.decorator.hideAnimated(getCancelAnimation(), createCancelAnimationListener())) {
            return false;
        }
        super.cancel();
        return true;
    }
}
