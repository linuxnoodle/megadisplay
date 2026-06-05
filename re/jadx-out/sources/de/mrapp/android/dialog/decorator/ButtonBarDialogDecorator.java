package de.mrapp.android.dialog.decorator;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.listener.OnClickListenerWrapper;
import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.android.dialog.view.Divider;
import de.mrapp.util.Condition;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ButtonBarDialogDecorator extends AbstractDialogDecorator<ValidateableDialog> implements de.mrapp.android.dialog.model.ButtonBarDialogDecorator {
    private static final String BUTTON_TEXT_COLOR_EXTRA = "ButtonBarDialogDecorator::buttonTextColor";
    private static final String NEGATIVE_BUTTON_TEXT_EXTRA = "ButtonBarDialogDecorator::negativeButtonText";
    private static final String NEUTRAL_BUTTON_TEXT_EXTRA = "ButtonBarDialogDecorator::neutralButtonText";
    private static final String POSITIVE_BUTTON_TEXT_EXTRA = "ButtonBarDialogDecorator::positiveButtonText";
    private static final String SHOW_BUTTON_BAR_DIVIDER_EXTRA = "ButtonBarDialogDecorator::showButtonBarDivider";
    private static final String STACK_BUTTONS_EXTRA = "ButtonBarDialogDecorator::stackButtons";
    private ViewGroup buttonBarContainer;
    private Divider buttonBarDivider;
    private ColorStateList buttonTextColor;
    private Typeface buttonTypeface;
    private View customButtonBarView;
    private int customButtonBarViewId;
    private Button negativeButton;
    private DialogInterface.OnClickListener negativeButtonListener;
    private CharSequence negativeButtonText;
    private Button neutralButton;
    private DialogInterface.OnClickListener neutralButtonListener;
    private CharSequence neutralButtonText;
    private Button positiveButton;
    private DialogInterface.OnClickListener positiveButtonListener;
    private CharSequence positiveButtonText;
    private boolean showButtonBarDivider;
    private boolean stackButtons;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private View inflateButtonBar() {
        if (getRootView() == null) {
            return null;
        }
        if (this.buttonBarContainer == null) {
            ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.button_bar_container, (ViewGroup) getRootView(), false);
            this.buttonBarContainer = viewGroup;
            this.buttonBarDivider = (Divider) viewGroup.findViewById(R.id.button_bar_divider);
        }
        if (this.buttonBarContainer.getChildCount() > 1) {
            this.buttonBarContainer.removeViewAt(1);
        }
        View view = this.customButtonBarView;
        if (view != null) {
            this.buttonBarContainer.addView(view);
        } else if (this.customButtonBarViewId != -1) {
            this.buttonBarContainer.addView(LayoutInflater.from(getContext()).inflate(this.customButtonBarViewId, this.buttonBarContainer, false));
        } else {
            this.buttonBarContainer.addView(LayoutInflater.from(getContext()).inflate(this.stackButtons ? R.layout.stacked_button_bar : R.layout.horizontal_button_bar, this.buttonBarContainer, false));
        }
        View viewFindViewById = this.buttonBarContainer.findViewById(android.R.id.button1);
        View viewFindViewById2 = this.buttonBarContainer.findViewById(android.R.id.button2);
        View viewFindViewById3 = this.buttonBarContainer.findViewById(android.R.id.button3);
        this.positiveButton = viewFindViewById instanceof Button ? (Button) viewFindViewById : null;
        this.negativeButton = viewFindViewById2 instanceof Button ? (Button) viewFindViewById2 : null;
        this.neutralButton = viewFindViewById3 instanceof Button ? (Button) viewFindViewById3 : null;
        return this.buttonBarContainer;
    }

    private void adaptButtonBar() {
        if (this.buttonBarContainer != null) {
            inflateButtonBar();
            adaptPositiveButton();
            adaptNegativeButton();
            adaptNeutralButton();
            adaptButtonTextColor();
            adaptButtonTypeface();
            adaptButtonBarContainerVisibility();
            adaptButtonBarDividerVisibility();
        }
    }

    private void adaptButtonTextColor() {
        ColorStateList colorStateList = this.buttonTextColor;
        if (colorStateList != null) {
            Button button = this.positiveButton;
            if (button != null) {
                button.setTextColor(colorStateList);
            }
            Button button2 = this.neutralButton;
            if (button2 != null) {
                button2.setTextColor(this.buttonTextColor);
            }
            Button button3 = this.negativeButton;
            if (button3 != null) {
                button3.setTextColor(this.buttonTextColor);
            }
        }
    }

    private void adaptButtonTypeface() {
        Typeface typeface = this.buttonTypeface;
        if (typeface != null) {
            Button button = this.positiveButton;
            if (button != null) {
                button.setTypeface(typeface);
            }
            Button button2 = this.neutralButton;
            if (button2 != null) {
                button2.setTypeface(this.buttonTypeface);
            }
            Button button3 = this.negativeButton;
            if (button3 != null) {
                button3.setTypeface(this.buttonTypeface);
            }
        }
    }

    private void adaptPositiveButton() {
        Button button = this.positiveButton;
        if (button != null) {
            CharSequence charSequence = this.positiveButtonText;
            button.setText(charSequence != null ? charSequence.toString().toUpperCase(Locale.getDefault()) : null);
            this.positiveButton.setOnClickListener(new OnClickListenerWrapper(this.positiveButtonListener, true, (ValidateableDialog) getDialog(), -1));
            this.positiveButton.setVisibility(!TextUtils.isEmpty(this.positiveButtonText) ? 0 : 8);
            adaptButtonBarContainerVisibility();
        }
    }

    private void adaptNeutralButton() {
        Button button = this.neutralButton;
        if (button != null) {
            CharSequence charSequence = this.neutralButtonText;
            button.setText(charSequence != null ? charSequence.toString().toUpperCase(Locale.getDefault()) : null);
            this.neutralButton.setOnClickListener(new OnClickListenerWrapper(this.neutralButtonListener, false, (ValidateableDialog) getDialog(), -3));
            this.neutralButton.setVisibility(TextUtils.isEmpty(this.neutralButtonText) ? 8 : 0);
            adaptButtonBarContainerVisibility();
        }
    }

    private void adaptNegativeButton() {
        Button button = this.negativeButton;
        if (button != null) {
            CharSequence charSequence = this.negativeButtonText;
            button.setText(charSequence != null ? charSequence.toString().toUpperCase(Locale.getDefault()) : null);
            this.negativeButton.setOnClickListener(new OnClickListenerWrapper(this.negativeButtonListener, false, (ValidateableDialog) getDialog(), -2));
            this.negativeButton.setVisibility(TextUtils.isEmpty(this.negativeButtonText) ? 8 : 0);
            adaptButtonBarContainerVisibility();
        }
    }

    private void adaptButtonBarContainerVisibility() {
        if (this.buttonBarContainer != null) {
            if (TextUtils.isEmpty(this.positiveButtonText) && TextUtils.isEmpty(this.neutralButtonText) && TextUtils.isEmpty(this.negativeButtonText)) {
                this.buttonBarContainer.setVisibility(8);
            } else {
                this.buttonBarContainer.setVisibility(0);
            }
        }
    }

    private void adaptButtonBarDividerVisibility() {
        Divider divider = this.buttonBarDivider;
        if (divider != null) {
            divider.setVisibility(this.showButtonBarDivider ? 0 : 8);
            this.buttonBarDivider.setVisibleByDefault(this.showButtonBarDivider);
        }
    }

    public ButtonBarDialogDecorator(ValidateableDialog validateableDialog) {
        super(validateableDialog);
        this.customButtonBarViewId = -1;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final Button getButton(int i) {
        Button button;
        if (i == -3) {
            Button button2 = this.neutralButton;
            if (button2 == null || button2.getVisibility() != 0) {
                return null;
            }
            return this.neutralButton;
        }
        if (i != -2) {
            if (i == -1 && (button = this.positiveButton) != null && button.getVisibility() == 0) {
                return this.positiveButton;
            }
            return null;
        }
        Button button3 = this.negativeButton;
        if (button3 == null || button3.getVisibility() != 0) {
            return null;
        }
        return this.negativeButton;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.positiveButtonText = charSequence;
        this.positiveButtonListener = onClickListener;
        adaptPositiveButton();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        setPositiveButton(getContext().getText(i), onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.negativeButtonText = charSequence;
        this.negativeButtonListener = onClickListener;
        adaptNegativeButton();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        setNegativeButton(getContext().getText(i), onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.neutralButtonText = charSequence;
        this.neutralButtonListener = onClickListener;
        adaptNeutralButton();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
        setNeutralButton(getContext().getText(i), onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean areButtonsStacked() {
        return this.stackButtons;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void stackButtons(boolean z) {
        this.stackButtons = z;
        adaptButtonBar();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final ColorStateList getButtonTextColor() {
        return this.buttonTextColor;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTextColor(int i) {
        setButtonTextColor(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTextColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.buttonTextColor = colorStateList;
        adaptButtonTextColor();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final Typeface getButtonTypeface() {
        return this.buttonTypeface;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setButtonTypeface(Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(typeface, "The typeface may not be null");
        this.buttonTypeface = typeface;
        adaptButtonTypeface();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean isButtonBarDividerShown() {
        return this.showButtonBarDivider;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void showButtonBarDivider(boolean z) {
        this.showButtonBarDivider = z;
        adaptButtonBarDividerVisibility();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final boolean isCustomButtonBarUsed() {
        return (this.customButtonBarView == null && this.customButtonBarViewId == -1) ? false : true;
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setCustomButtonBar(int i) {
        this.customButtonBarView = null;
        this.customButtonBarViewId = i;
        adaptButtonBar();
    }

    @Override // de.mrapp.android.dialog.model.ButtonBarDialogDecorator
    public final void setCustomButtonBar(View view) {
        this.customButtonBarView = view;
        this.customButtonBarViewId = -1;
        adaptButtonBar();
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(STACK_BUTTONS_EXTRA, areButtonsStacked());
        bundle.putParcelable(BUTTON_TEXT_COLOR_EXTRA, getButtonTextColor());
        bundle.putBoolean(SHOW_BUTTON_BAR_DIVIDER_EXTRA, isButtonBarDividerShown());
        bundle.putCharSequence(POSITIVE_BUTTON_TEXT_EXTRA, this.positiveButtonText);
        bundle.putCharSequence(NEUTRAL_BUTTON_TEXT_EXTRA, this.neutralButtonText);
        bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA, this.negativeButtonText);
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        stackButtons(bundle.getBoolean(STACK_BUTTONS_EXTRA));
        showButtonBarDivider(bundle.getBoolean(SHOW_BUTTON_BAR_DIVIDER_EXTRA));
        setPositiveButton(bundle.getCharSequence(POSITIVE_BUTTON_TEXT_EXTRA), this.positiveButtonListener);
        setNeutralButton(bundle.getCharSequence(NEUTRAL_BUTTON_TEXT_EXTRA), this.neutralButtonListener);
        setNegativeButton(bundle.getCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA), this.negativeButtonListener);
        ColorStateList colorStateList = (ColorStateList) bundle.getParcelable(BUTTON_TEXT_COLOR_EXTRA);
        if (colorStateList != null) {
            setButtonTextColor(colorStateList);
        }
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        if (inflateButtonBar() != null) {
            adaptButtonTextColor();
            adaptButtonTypeface();
            adaptPositiveButton();
            adaptNeutralButton();
            adaptNegativeButton();
            adaptButtonBarDividerVisibility();
            HashMap map2 = new HashMap();
            map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.BUTTON_BAR), this.buttonBarContainer);
            map2.put(new DialogRootView.DividerViewType(DialogRootView.DividerLocation.BOTTOM), this.buttonBarDivider);
            return map2;
        }
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        ViewGroup viewGroup = this.buttonBarContainer;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.buttonBarContainer = null;
        }
        this.positiveButton = null;
        this.negativeButton = null;
        this.neutralButton = null;
        this.buttonBarDivider = null;
    }
}
