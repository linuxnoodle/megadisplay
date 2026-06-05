package de.mrapp.android.dialog.decorator;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import de.mrapp.android.dialog.ProgressDialog;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.model.ButtonBarDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.android.view.CircularProgressBar;
import de.mrapp.util.Condition;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressDialogDecorator extends AbstractDialogDecorator<ButtonBarDialog> implements de.mrapp.android.dialog.model.ProgressDialogDecorator {
    private static final String PROGRESS_BAR_COLOR_EXTRA = "ProgressDialogDecorator::progressBarColor";
    private static final String PROGRESS_BAR_POSITION_EXTRA = "ProgressDialogDecorator::progressBarPosition";
    private static final String PROGRESS_BAR_SIZE_EXTRA = "ProgressDialogDecorator::progressBarSize";
    private static final String PROGRESS_BAR_THICKNESS_EXTRA = "ProgressDialogDecorator::progressBarThickness";
    private CircularProgressBar progressBar;
    private int progressBarColor;
    private ProgressDialog.ProgressBarPosition progressBarPosition;
    private int progressBarSize;
    private int progressBarThickness;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    /* JADX INFO: renamed from: de.mrapp.android.dialog.decorator.ProgressDialogDecorator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition;

        static {
            int[] iArr = new int[ProgressDialog.ProgressBarPosition.values().length];
            $SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition = iArr;
            try {
                iArr[ProgressDialog.ProgressBarPosition.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition[ProgressDialog.ProgressBarPosition.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition[ProgressDialog.ProgressBarPosition.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition[ProgressDialog.ProgressBarPosition.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private int getCustomMessageId() {
        int i = AnonymousClass1.$SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition[this.progressBarPosition.ordinal()];
        if (i == 1) {
            return R.layout.progress_dialog_left;
        }
        if (i == 2) {
            return R.layout.progress_dialog_top;
        }
        if (i == 3) {
            return R.layout.progress_dialog_right;
        }
        if (i == 4) {
            return R.layout.progress_dialog_bottom;
        }
        return R.layout.progress_dialog_left;
    }

    private void adaptProgressBar() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(getCustomMessageId(), (ViewGroup) getRootView(), false);
        ((ButtonBarDialog) getDialog()).setCustomMessage(viewInflate);
        View viewFindViewById = viewInflate.findViewById(R.id.progress_bar);
        this.progressBar = viewFindViewById instanceof CircularProgressBar ? (CircularProgressBar) viewFindViewById : null;
        adaptProgressBarColor();
        adaptProgressBarSize();
        adaptProgressBarThickness();
        adaptMessageTextSize();
    }

    private void adaptProgressBarColor() {
        CircularProgressBar circularProgressBar = this.progressBar;
        if (circularProgressBar != null) {
            circularProgressBar.setColor(this.progressBarColor);
        }
    }

    private void adaptProgressBarSize() {
        CircularProgressBar circularProgressBar = this.progressBar;
        if (circularProgressBar != null) {
            circularProgressBar.setVisibility(this.progressBarSize > 0 ? 0 : 8);
            ViewGroup.LayoutParams layoutParams = this.progressBar.getLayoutParams();
            layoutParams.width = this.progressBarSize;
            layoutParams.height = this.progressBarSize;
        }
    }

    private void adaptProgressBarThickness() {
        CircularProgressBar circularProgressBar = this.progressBar;
        if (circularProgressBar != null) {
            circularProgressBar.setThickness(this.progressBarThickness);
        }
    }

    private void adaptMessageTextSize() {
        if (getRootView() != null) {
            View viewFindViewById = getRootView().findViewById(android.R.id.message);
            if (viewFindViewById instanceof TextView) {
                TextView textView = (TextView) viewFindViewById;
                if (TextUtils.isEmpty(((ButtonBarDialog) getDialog()).getTitle())) {
                    textView.setTextSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_message_text_size_large));
                } else {
                    textView.setTextSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_message_text_size_normal));
                }
            }
        }
    }

    public ProgressDialogDecorator(ButtonBarDialog buttonBarDialog) {
        super(buttonBarDialog);
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarColor() {
        return this.progressBarColor;
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarColor(int i) {
        this.progressBarColor = i;
        adaptProgressBarColor();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarSize() {
        return this.progressBarSize;
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarSize(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The size must be at least 0");
        this.progressBarSize = i;
        adaptProgressBarSize();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final int getProgressBarThickness() {
        return this.progressBarThickness;
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarThickness(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The thickness must be at least 1");
        this.progressBarThickness = i;
        adaptProgressBarThickness();
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final ProgressDialog.ProgressBarPosition getProgressBarPosition() {
        return this.progressBarPosition;
    }

    @Override // de.mrapp.android.dialog.model.ProgressDialogDecorator
    public final void setProgressBarPosition(ProgressDialog.ProgressBarPosition progressBarPosition) {
        Condition.INSTANCE.ensureNotNull(progressBarPosition, "The position may not be null");
        this.progressBarPosition = progressBarPosition;
        adaptProgressBar();
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(PROGRESS_BAR_COLOR_EXTRA, getProgressBarColor());
        bundle.putInt(PROGRESS_BAR_SIZE_EXTRA, getProgressBarSize());
        bundle.putInt(PROGRESS_BAR_THICKNESS_EXTRA, getProgressBarThickness());
        bundle.putInt(PROGRESS_BAR_POSITION_EXTRA, getProgressBarPosition().getValue());
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        setProgressBarColor(bundle.getInt(PROGRESS_BAR_COLOR_EXTRA));
        setProgressBarSize(bundle.getInt(PROGRESS_BAR_SIZE_EXTRA));
        setProgressBarThickness(bundle.getInt(PROGRESS_BAR_THICKNESS_EXTRA));
        setProgressBarPosition(ProgressDialog.ProgressBarPosition.fromValue(bundle.getInt(PROGRESS_BAR_POSITION_EXTRA)));
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        adaptProgressBar();
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        this.progressBar = null;
    }
}
