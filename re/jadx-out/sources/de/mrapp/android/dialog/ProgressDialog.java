package de.mrapp.android.dialog;

import android.content.Context;
import android.os.Bundle;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.model.ProgressDialogDecorator;
import de.mrapp.android.util.ThemeUtil;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressDialog extends AbstractButtonBarDialog implements ProgressDialogDecorator {
    private final de.mrapp.android.dialog.decorator.ProgressDialogDecorator decorator;

    public enum ProgressBarPosition {
        LEFT(0),
        TOP(1),
        RIGHT(2),
        BOTTOM(3);

        private int value;

        ProgressBarPosition(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static ProgressBarPosition fromValue(int i) {
            for (ProgressBarPosition progressBarPosition : values()) {
                if (progressBarPosition.getValue() == i) {
                    return progressBarPosition;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    public static class Builder extends AbstractButtonBarDialogBuilder<ProgressDialog, Builder> {
        private void obtainProgressBarColor(int i) {
            setProgressBarColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogProgressBarColor}).getColor(0, ThemeUtil.getColor(getContext(), i, R.attr.colorAccent)));
        }

        private void obtainProgressBarSize(int i) {
            setProgressBarSize(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogProgressBarSize}).getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.circular_progress_bar_size_normal)));
        }

        private void obtainProgressBarThickness(int i) {
            setProgressBarThickness(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogProgressBarThickness}).getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.circular_progress_bar_thickness_normal)));
        }

        private void obtainProgressBarPosition(int i) {
            setProgressBarPosition(ProgressBarPosition.fromValue(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogProgressBarPosition}).getInt(0, ProgressBarPosition.LEFT.getValue())));
        }

        public Builder(Context context) {
            super(context);
        }

        public Builder(Context context, int i) {
            super(context, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setProgressBarColor(int i) {
            ((ProgressDialog) getProduct()).setProgressBarColor(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setProgressBarSize(int i) {
            ((ProgressDialog) getProduct()).setProgressBarSize(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setProgressBarThickness(int i) {
            ((ProgressDialog) getProduct()).setProgressBarThickness(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setProgressBarPosition(ProgressBarPosition progressBarPosition) {
            ((ProgressDialog) getProduct()).setProgressBarPosition(progressBarPosition);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final ProgressDialog show() {
            ProgressDialog progressDialog = (ProgressDialog) create();
            progressDialog.show();
            return progressDialog;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final ProgressDialog onCreateProduct() {
            return new ProgressDialog(getContext(), getThemeResourceId());
        }

        @Override // de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder, de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder, de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
        protected final void obtainStyledAttributes(int i) {
            super.obtainStyledAttributes(i);
            obtainProgressBarColor(i);
            obtainProgressBarSize(i);
            obtainProgressBarThickness(i);
            obtainProgressBarPosition(i);
        }
    }

    protected ProgressDialog(Context context, int i) {
        super(context, i);
        de.mrapp.android.dialog.decorator.ProgressDialogDecorator progressDialogDecorator = new de.mrapp.android.dialog.decorator.ProgressDialogDecorator(this);
        this.decorator = progressDialogDecorator;
        addDecorator(progressDialogDecorator);
        setCancelable(false);
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarColor() {
        return this.decorator.getProgressBarColor();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarColor(int i) {
        this.decorator.setProgressBarColor(i);
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarSize() {
        return this.decorator.getProgressBarSize();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarSize(int i) {
        this.decorator.setProgressBarSize(i);
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarThickness() {
        return this.decorator.getProgressBarThickness();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarThickness(int i) {
        this.decorator.setProgressBarThickness(i);
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final ProgressBarPosition getProgressBarPosition() {
        return this.decorator.getProgressBarPosition();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarPosition(ProgressBarPosition progressBarPosition) {
        this.decorator.setProgressBarPosition(progressBarPosition);
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        this.decorator.onSaveInstanceState(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // de.mrapp.android.dialog.AbstractButtonBarDialog, de.mrapp.android.dialog.AbstractValidateableDialog, de.mrapp.android.dialog.AbstractAnimateableDialog, de.mrapp.android.dialog.AbstractHeaderDialog, de.mrapp.android.dialog.AbstractMaterialDialog, android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
        super.onRestoreInstanceState(bundle);
    }
}
