package de.mrapp.android.dialog;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder;
import de.mrapp.android.dialog.model.WizardDialogDecorator;
import de.mrapp.android.util.ThemeUtil;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class WizardDialog extends AbstractHeaderDialogFragment implements WizardDialogDecorator {
    private final de.mrapp.android.dialog.decorator.WizardDialogDecorator decorator;

    public interface WizardListener {
        boolean onFinish(int i, Fragment fragment);

        boolean onNext(int i, Fragment fragment);

        boolean onPrevious(int i, Fragment fragment);
    }

    public enum TabPosition {
        USE_HEADER(0),
        PREFER_HEADER(1),
        NO_HEADER(2);

        private int value;

        TabPosition(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static TabPosition fromValue(int i) {
            for (TabPosition tabPosition : values()) {
                if (tabPosition.getValue() == i) {
                    return tabPosition;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    public static class Builder extends AbstractHeaderDialogBuilder<WizardDialog, Builder> {
        private void obtainTabPosition(int i) {
            setTabPosition(TabPosition.fromValue(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTabPosition}).getInt(0, TabPosition.PREFER_HEADER.getValue())));
        }

        private void obtainEnableTabLayout(int i) {
            enableTabLayout(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogEnableTabLayout}).getBoolean(0, true));
        }

        private void obtainShowTabLayout(int i) {
            showTabLayout(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowTabLayout}).getBoolean(0, true));
        }

        private void obtainTabIndicatorHeight(int i) {
            setTabIndicatorHeight(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTabIndicatorHeight}).getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_tab_indicator_height)));
        }

        private void obtainTabIndicatorColor(int i) {
            setTabIndicatorColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTabIndicatorColor}).getColor(0, ThemeUtil.getColor(getContext(), i, R.attr.colorAccent)));
        }

        private void obtainTabTextColor(int i) {
            setTabTextColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTabTextColor}).getColor(0, ThemeUtil.getColor(getContext(), i, android.R.attr.textColorSecondary)));
        }

        private void obtainTabSelectedTextColor(int i) {
            setTabSelectedTextColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogTabSelectedTextColor}).getColor(0, ThemeUtil.getColor(getContext(), i, android.R.attr.textColorSecondary)));
        }

        private void obtainEnableSwipe(int i) {
            enableSwipe(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogEnableSwipe}).getBoolean(0, true));
        }

        private void obtainShowButtonBar(int i) {
            showButtonBar(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowButtonBar}).getBoolean(0, true));
        }

        private void obtainButtonTextColor(int i) {
            setButtonTextColor(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogButtonTextColor}).getColor(0, ThemeUtil.getColor(getContext(), i, R.attr.colorAccent)));
        }

        private void obtainBackButtonText(int i) {
            TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogBackButtonText});
            CharSequence text = getContext().getText(R.string.back_button_text);
            CharSequence text2 = typedArrayObtainStyledAttributes.getText(0);
            if (!TextUtils.isEmpty(text2)) {
                text = text2;
            }
            setBackButtonText(text);
        }

        private void obtainNextButtonText(int i) {
            TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogNextButtonText});
            CharSequence text = getContext().getText(R.string.next_button_text);
            CharSequence text2 = typedArrayObtainStyledAttributes.getText(0);
            if (!TextUtils.isEmpty(text2)) {
                text = text2;
            }
            setNextButtonText(text);
        }

        private void obtainFinishButtonText(int i) {
            TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogFinishButtonText});
            CharSequence text = getContext().getText(R.string.finish_button_text);
            CharSequence text2 = typedArrayObtainStyledAttributes.getText(0);
            if (!TextUtils.isEmpty(text2)) {
                text = text2;
            }
            setFinishButtonText(text);
        }

        private void obtainShowButtonBarDivider(int i) {
            showButtonBarDivider(getContext().getTheme().obtainStyledAttributes(i, new int[]{R.attr.materialDialogShowButtonBarDivider}).getBoolean(0, false));
        }

        public Builder(Context context) {
            super(context);
        }

        public Builder(Context context, int i) {
            super(context, i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(Class<? extends Fragment> cls) {
            ((WizardDialog) getProduct()).addFragment(cls);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(Class<? extends Fragment> cls, Bundle bundle) {
            ((WizardDialog) getProduct()).addFragment(cls, bundle);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(int i, Class<? extends Fragment> cls) {
            ((WizardDialog) getProduct()).addFragment(i, cls);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(int i, Class<? extends Fragment> cls, Bundle bundle) {
            ((WizardDialog) getProduct()).addFragment(i, cls, bundle);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(CharSequence charSequence, Class<? extends Fragment> cls) {
            ((WizardDialog) getProduct()).addFragment(charSequence, cls);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addFragment(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
            ((WizardDialog) getProduct()).addFragment(charSequence, cls, bundle);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setTabPosition(TabPosition tabPosition) {
            ((WizardDialog) getProduct()).setTabPosition(tabPosition);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder enableTabLayout(boolean z) {
            ((WizardDialog) getProduct()).enableTabLayout(z);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder showTabLayout(boolean z) {
            ((WizardDialog) getProduct()).showTabLayout(z);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setTabIndicatorHeight(int i) {
            ((WizardDialog) getProduct()).setTabIndicatorHeight(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setTabIndicatorColor(int i) {
            ((WizardDialog) getProduct()).setTabIndicatorColor(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setTabTextColor(int i) {
            ((WizardDialog) getProduct()).setTabTextColor(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setTabSelectedTextColor(int i) {
            ((WizardDialog) getProduct()).setTabSelectedTextColor(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder enableSwipe(boolean z) {
            ((WizardDialog) getProduct()).enableSwipe(z);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder showButtonBar(boolean z) {
            ((WizardDialog) getProduct()).showButtonBar(z);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setButtonTextColor(int i) {
            ((WizardDialog) getProduct()).setButtonTextColor(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder showButtonBarDivider(boolean z) {
            ((WizardDialog) getProduct()).showButtonBarDivider(z);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setBackButtonText(int i) {
            ((WizardDialog) getProduct()).setBackButtonText(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setBackButtonText(CharSequence charSequence) {
            ((WizardDialog) getProduct()).setBackButtonText(charSequence);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setNextButtonText(int i) {
            ((WizardDialog) getProduct()).setNextButtonText(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setNextButtonText(CharSequence charSequence) {
            ((WizardDialog) getProduct()).setNextButtonText(charSequence);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setFinishButtonText(int i) {
            ((WizardDialog) getProduct()).setFinishButtonText(i);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder setFinishButtonText(CharSequence charSequence) {
            ((WizardDialog) getProduct()).setFinishButtonText(charSequence);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addWizardListener(WizardListener wizardListener) {
            ((WizardDialog) getProduct()).addWizardListener(wizardListener);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
            ((WizardDialog) getProduct()).addOnPageChangeListener(onPageChangeListener);
            return (Builder) self();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final WizardDialog show(FragmentManager fragmentManager, String str) {
            Condition.INSTANCE.ensureNotNull(fragmentManager, "The fragment manager may not be null");
            WizardDialog wizardDialog = (WizardDialog) create();
            wizardDialog.show(fragmentManager, str);
            return wizardDialog;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final WizardDialog show(FragmentTransaction fragmentTransaction, String str) {
            Condition.INSTANCE.ensureNotNull(fragmentTransaction, "The fragment transaction may not be null");
            WizardDialog wizardDialog = (WizardDialog) create();
            wizardDialog.show(fragmentTransaction, str);
            return wizardDialog;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // de.mrapp.android.dialog.builder.AbstractBuilder
        public final WizardDialog onCreateProduct() {
            WizardDialog wizardDialog = new WizardDialog();
            wizardDialog.setThemeResourceId(getThemeResourceId());
            wizardDialog.setContext(getContext());
            return wizardDialog;
        }

        @Override // de.mrapp.android.dialog.builder.AbstractHeaderDialogBuilder, de.mrapp.android.dialog.builder.AbstractMaterialDialogBuilder
        protected final void obtainStyledAttributes(int i) {
            super.obtainStyledAttributes(i);
            obtainTabPosition(i);
            obtainEnableTabLayout(i);
            obtainShowTabLayout(i);
            obtainTabIndicatorHeight(i);
            obtainTabIndicatorColor(i);
            obtainTabTextColor(i);
            obtainTabSelectedTextColor(i);
            obtainEnableSwipe(i);
            obtainShowButtonBar(i);
            obtainButtonTextColor(i);
            obtainBackButtonText(i);
            obtainNextButtonText(i);
            obtainFinishButtonText(i);
            obtainShowButtonBarDivider(i);
        }
    }

    public WizardDialog() {
        de.mrapp.android.dialog.decorator.WizardDialogDecorator wizardDialogDecorator = new de.mrapp.android.dialog.decorator.WizardDialogDecorator(this);
        this.decorator = wizardDialogDecorator;
        addDecorator(wizardDialogDecorator);
        setCancelable(false);
        setView(R.layout.wizard_dialog_view_pager);
    }

    @Override // de.mrapp.android.dialog.AbstractMaterialDialogFragment, de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setScrollableArea(ScrollableArea.Area area) {
        if (area == ScrollableArea.Area.CONTENT) {
            super.setScrollableArea(null);
        } else {
            super.setScrollableArea(area);
        }
    }

    @Override // de.mrapp.android.dialog.AbstractMaterialDialogFragment, de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2) {
        if (area == ScrollableArea.Area.CONTENT && area2 == ScrollableArea.Area.CONTENT) {
            super.setScrollableArea(null, null);
        } else {
            super.setScrollableArea(area, area2);
        }
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final ViewPager getViewPager() {
        return this.decorator.getViewPager();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final TabLayout getTabLayout() {
        return this.decorator.getTabLayout();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getBackButton() {
        return this.decorator.getBackButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getNextButton() {
        return this.decorator.getNextButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getFinishButton() {
        return this.decorator.getFinishButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(Class<? extends Fragment> cls) {
        this.decorator.addFragment(cls);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(Class<? extends Fragment> cls, Bundle bundle) {
        this.decorator.addFragment(cls, bundle);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(int i, Class<? extends Fragment> cls) {
        this.decorator.addFragment(i, cls);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(int i, Class<? extends Fragment> cls, Bundle bundle) {
        this.decorator.addFragment(i, cls, bundle);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(CharSequence charSequence, Class<? extends Fragment> cls) {
        this.decorator.addFragment(charSequence, cls);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        this.decorator.addFragment(charSequence, cls, bundle);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeFragment(int i) {
        this.decorator.removeFragment(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void clearFragments() {
        this.decorator.clearFragments();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int indexOfFragment(Class<? extends Fragment> cls) {
        return this.decorator.indexOfFragment(cls);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getFragmentCount() {
        return this.decorator.getFragmentCount();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final TabPosition getTabPosition() {
        return this.decorator.getTabPosition();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public void setTabPosition(TabPosition tabPosition) {
        this.decorator.setTabPosition(tabPosition);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isTabLayoutEnabled() {
        return this.decorator.isTabLayoutEnabled();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void enableTabLayout(boolean z) {
        this.decorator.enableTabLayout(z);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isTabLayoutShown() {
        return this.decorator.isTabLayoutShown();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showTabLayout(boolean z) {
        this.decorator.showTabLayout(z);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabIndicatorHeight() {
        return this.decorator.getTabIndicatorHeight();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabIndicatorHeight(int i) {
        this.decorator.setTabIndicatorHeight(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabIndicatorColor() {
        return this.decorator.getTabIndicatorColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabIndicatorColor(int i) {
        this.decorator.setTabIndicatorColor(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabTextColor() {
        return this.decorator.getTabTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabTextColor(int i) {
        this.decorator.setTabTextColor(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabSelectedTextColor() {
        return this.decorator.getTabSelectedTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabSelectedTextColor(int i) {
        this.decorator.setTabSelectedTextColor(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isSwipeEnabled() {
        return this.decorator.isSwipeEnabled();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void enableSwipe(boolean z) {
        this.decorator.enableSwipe(z);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isButtonBarShown() {
        return this.decorator.isButtonBarShown();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showButtonBar(boolean z) {
        this.decorator.showButtonBar(z);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonTextColor() {
        return this.decorator.getButtonTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonTextColor(int i) {
        this.decorator.setButtonTextColor(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isButtonBarDividerShown() {
        return this.decorator.isButtonBarDividerShown();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showButtonBarDivider(boolean z) {
        this.decorator.showButtonBarDivider(z);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonBarDividerColor() {
        return this.decorator.getButtonBarDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonBarDividerColor(int i) {
        this.decorator.setButtonBarDividerColor(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonBarDividerMargin() {
        return this.decorator.getButtonBarDividerMargin();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonBarDividerMargin(int i) {
        this.decorator.setButtonBarDividerMargin(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getBackButtonText() {
        return this.decorator.getBackButtonText();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setBackButtonText(int i) {
        this.decorator.setBackButtonText(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setBackButtonText(CharSequence charSequence) {
        this.decorator.setBackButtonText(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getNextButtonText() {
        return this.decorator.getNextButtonText();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setNextButtonText(int i) {
        this.decorator.setNextButtonText(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setNextButtonText(CharSequence charSequence) {
        this.decorator.setNextButtonText(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getFinishButtonText() {
        return this.decorator.getFinishButtonText();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setFinishButtonText(int i) {
        this.decorator.setFinishButtonText(i);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setFinishButtonText(CharSequence charSequence) {
        this.decorator.setFinishButtonText(charSequence);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addWizardListener(WizardListener wizardListener) {
        this.decorator.addWizardListener(wizardListener);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeWizardListener(WizardListener wizardListener) {
        this.decorator.addWizardListener(wizardListener);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.decorator.addOnPageChangeListener(onPageChangeListener);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.decorator.removeOnPageChangeListener(onPageChangeListener);
    }

    @Override // de.mrapp.android.dialog.AbstractHeaderDialogFragment, de.mrapp.android.dialog.AbstractMaterialDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.decorator.onSaveInstanceState(bundle);
    }

    @Override // de.mrapp.android.dialog.AbstractHeaderDialogFragment, de.mrapp.android.dialog.AbstractMaterialDialogFragment
    protected final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.decorator.onRestoreInstanceState(bundle);
    }
}
