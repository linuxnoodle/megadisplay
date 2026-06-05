package de.mrapp.android.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ScrollView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.android.dialog.decorator.AbstractDecorator;
import de.mrapp.android.dialog.decorator.AbstractDialogDecorator;
import de.mrapp.android.dialog.decorator.AbstractDialogFragmentDecorator;
import de.mrapp.android.dialog.decorator.MaterialDialogDecorator;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.util.Condition;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMaterialDialogFragment extends DialogFragment implements de.mrapp.android.dialog.model.MaterialDialog {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private DialogInterface.OnCancelListener cancelListener;
    private Context context;
    private final MaterialDialogDecorator decorator;
    private final Collection<AbstractDecorator> decorators;
    private DialogInterface.OnDismissListener dismissListener;
    private DialogRootView rootView;
    private DialogInterface.OnShowListener showListener;
    private int themeResourceId;

    private View inflateLayout() {
        return View.inflate(getContext(), R.layout.material_dialog, null);
    }

    private View.OnTouchListener createCanceledOnTouchListener() {
        return new View.OnTouchListener() { // from class: de.mrapp.android.dialog.AbstractMaterialDialogFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return AbstractMaterialDialogFragment.this.isCanceledOnTouchOutside() && !AbstractMaterialDialogFragment.this.isFullscreen() && AbstractMaterialDialogFragment.this.onCanceledOnTouchOutside();
            }
        };
    }

    private Map<DialogRootView.ViewType, View> applyDecorators(Window window, DialogRootView dialogRootView, View view, FragmentManager fragmentManager) {
        HashMap map = new HashMap();
        for (AbstractDecorator abstractDecorator : this.decorators) {
            if (abstractDecorator instanceof AbstractDialogDecorator) {
                map.putAll(((AbstractDialogDecorator) abstractDecorator).attach(window, view, map, null));
            } else {
                map.putAll(((AbstractDialogFragmentDecorator) abstractDecorator).attach(window, view, map, fragmentManager));
            }
            abstractDecorator.addAreaListener(dialogRootView);
        }
        return map;
    }

    private void detachDecorators(DialogRootView dialogRootView) {
        for (AbstractDecorator abstractDecorator : this.decorators) {
            abstractDecorator.detach();
            abstractDecorator.removeAreaListener(dialogRootView);
        }
    }

    public AbstractMaterialDialogFragment() {
        MaterialDialogDecorator materialDialogDecorator = new MaterialDialogDecorator(this);
        this.decorator = materialDialogDecorator;
        this.decorators = new LinkedList();
        addDecorator(materialDialogDecorator);
        setCanceledOnTouchOutside(true);
    }

    protected final void setThemeResourceId(int i) {
        this.themeResourceId = i;
    }

    protected final void setContext(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.context = context;
    }

    protected void addDecorator(AbstractDecorator abstractDecorator) {
        this.decorators.add(abstractDecorator);
    }

    protected boolean onCanceledOnTouchOutside() {
        cancel();
        return true;
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        this.decorator.onRestoreInstanceState(bundle);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialog
    public final void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.showListener = onShowListener;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialog
    public final void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.cancelListener = onCancelListener;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.dismissListener = onDismissListener;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialog
    public final ScrollView getScrollView() {
        DialogRootView dialogRootView = this.rootView;
        if (dialogRootView != null) {
            return dialogRootView.getScrollView();
        }
        return null;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCanceledOnTouchOutside() {
        return this.decorator.isCanceledOnTouchOutside();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCanceledOnTouchOutside(boolean z) {
        this.decorator.setCanceledOnTouchOutside(z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getWindowBackground() {
        return this.decorator.getWindowBackground();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWindowBackground(int i) {
        this.decorator.setWindowBackground(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWindowBackground(Bitmap bitmap) {
        this.decorator.setWindowBackground(bitmap);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetLeft() {
        return this.decorator.getWindowInsetLeft();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetTop() {
        return this.decorator.getWindowInsetTop();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetRight() {
        return this.decorator.getWindowInsetRight();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetBottom() {
        return this.decorator.getWindowInsetBottom();
    }

    @Override // androidx.fragment.app.DialogFragment, de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCancelable() {
        return this.decorator.isCancelable();
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        this.decorator.setCancelable(z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFullscreen() {
        return this.decorator.isFullscreen();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFullscreen(boolean z) {
        this.decorator.setFullscreen(z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getGravity() {
        return this.decorator.getGravity();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setGravity(int i) {
        this.decorator.setGravity(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWidth() {
        return this.decorator.getWidth();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWidth(int i) {
        this.decorator.setWidth(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getHeight() {
        return this.decorator.getHeight();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setHeight(int i) {
        this.decorator.setHeight(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMaxWidth() {
        return this.decorator.getMaxWidth();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMaxWidth(int i) {
        this.decorator.setMaxWidth(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMaxHeight() {
        return this.decorator.getMaxHeight();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMaxHeight(int i) {
        this.decorator.setMaxHeight(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getLeftMargin() {
        return this.decorator.getLeftMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getTopMargin() {
        return this.decorator.getTopMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getRightMargin() {
        return this.decorator.getRightMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getBottomMargin() {
        return this.decorator.getBottomMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMargin(int i, int i2, int i3, int i4) {
        this.decorator.setMargin(i, i2, i3, i4);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingLeft() {
        return this.decorator.getPaddingLeft();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingTop() {
        return this.decorator.getPaddingTop();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingRight() {
        return this.decorator.getPaddingRight();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingBottom() {
        return this.decorator.getPaddingBottom();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.decorator.setPadding(i, i2, i3, i4);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsLeft() {
        return this.decorator.isFitsSystemWindowsLeft();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsTop() {
        return this.decorator.isFitsSystemWindowsTop();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsRight() {
        return this.decorator.isFitsSystemWindowsRight();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsBottom() {
        return this.decorator.isFitsSystemWindowsBottom();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFitsSystemWindows(boolean z) {
        this.decorator.setFitsSystemWindows(z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFitsSystemWindows(boolean z, boolean z2, boolean z3, boolean z4) {
        this.decorator.setFitsSystemWindows(z, z2, z3, z4);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final ScrollableArea getScrollableArea() {
        return this.decorator.getScrollableArea();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public void setScrollableArea(ScrollableArea.Area area) {
        this.decorator.setScrollableArea(area);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public void setScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2) {
        this.decorator.setScrollableArea(area, area2);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean areDividersShownOnScroll() {
        return this.decorator.areDividersShownOnScroll();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void showDividersOnScroll(boolean z) {
        this.decorator.showDividersOnScroll(z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getDividerColor() {
        return this.decorator.getDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setDividerColor(int i) {
        this.decorator.setDividerColor(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getDividerMargin() {
        return this.decorator.getDividerMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setDividerMargin(int i) {
        this.decorator.setDividerMargin(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getIcon() {
        return this.decorator.getIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIcon(Bitmap bitmap) {
        this.decorator.setIcon(bitmap);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIcon(int i) {
        this.decorator.setIcon(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconAttribute(int i) {
        this.decorator.setIconAttribute(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final ColorStateList getIconTintList() {
        return this.decorator.getIconTintList();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTint(int i) {
        this.decorator.setIconTint(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTintList(ColorStateList colorStateList) {
        this.decorator.setIconTintList(colorStateList);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final PorterDuff.Mode getIconTintMode() {
        return this.decorator.getIconTintMode();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTintMode(PorterDuff.Mode mode) {
        this.decorator.setIconTintMode(mode);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getTitleColor() {
        return this.decorator.getTitleColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitleColor(int i) {
        this.decorator.setTitleColor(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Typeface getTitleTypeface() {
        return this.decorator.getTitleTypeface();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitleTypeface(Typeface typeface) {
        this.decorator.setTitleTypeface(typeface);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMessageColor() {
        return this.decorator.getMessageColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessageColor(int i) {
        this.decorator.setMessageColor(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Typeface getMessageTypeface() {
        return this.decorator.getMessageTypeface();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessageTypeface(Typeface typeface) {
        this.decorator.setMessageTypeface(typeface);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getBackground() {
        return this.decorator.getBackground();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(Bitmap bitmap) {
        this.decorator.setBackground(bitmap);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation) {
        this.decorator.setBackground(bitmap, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(int i) {
        this.decorator.setBackground(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(int i, BackgroundAnimation backgroundAnimation) {
        this.decorator.setBackground(i, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackgroundColor(int i) {
        this.decorator.setBackgroundColor(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackgroundColor(int i, BackgroundAnimation backgroundAnimation) {
        this.decorator.setBackgroundColor(i, backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomTitleUsed() {
        return this.decorator.isCustomTitleUsed();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomTitle(View view) {
        this.decorator.setCustomTitle(view);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomTitle(int i) {
        this.decorator.setCustomTitle(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomMessageUsed() {
        return this.decorator.isCustomMessageUsed();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomMessage(View view) {
        this.decorator.setCustomMessage(view);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomMessage(int i) {
        this.decorator.setCustomMessage(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomViewUsed() {
        return this.decorator.isCustomViewUsed();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setView(View view) {
        this.decorator.setView(view);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setView(int i) {
        this.decorator.setView(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final CharSequence getMessage() {
        return this.decorator.getMessage();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessage(CharSequence charSequence) {
        this.decorator.setMessage(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessage(int i) {
        this.decorator.setMessage(i);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final CharSequence getTitle() {
        return this.decorator.getTitle();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitle(CharSequence charSequence) {
        this.decorator.setTitle(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitle(int i) {
        this.decorator.setTitle(i);
    }

    @Override // android.content.DialogInterface
    public final void cancel() {
        if (getDialog() != null) {
            getDialog().cancel();
        }
    }

    @Override // androidx.fragment.app.Fragment, de.mrapp.android.dialog.model.Dialog
    public final Context getContext() {
        Context context = super.getContext();
        if (context != null) {
            return context;
        }
        Condition.INSTANCE.ensureNotNull(this.context, "No context has been set", IllegalStateException.class);
        return this.context;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(getContext(), this.themeResourceId);
        dialog.requestWindowFeature(1);
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflateLayout = inflateLayout();
        viewInflateLayout.setOnTouchListener(createCanceledOnTouchListener());
        if (bundle != null) {
            onRestoreInstanceState(bundle);
        }
        Window window = getDialog().getWindow();
        DialogRootView dialogRootView = (DialogRootView) viewInflateLayout.findViewById(R.id.dialog_root_view);
        this.rootView = dialogRootView;
        this.rootView.addAreas(applyDecorators(window, dialogRootView, viewInflateLayout, getChildFragmentManager()));
        return viewInflateLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        getDialog().getWindow().setLayout(-1, -1);
        DialogInterface.OnShowListener onShowListener = this.showListener;
        if (onShowListener != null) {
            onShowListener.onShow(getDialog());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        detachDecorators(this.rootView);
        this.rootView = null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener onDismissListener = this.dismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        DialogInterface.OnCancelListener onCancelListener = this.cancelListener;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.decorator.onSaveInstanceState(bundle);
    }
}
