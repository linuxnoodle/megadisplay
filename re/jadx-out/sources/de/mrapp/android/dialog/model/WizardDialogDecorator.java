package de.mrapp.android.dialog.model;

import android.os.Bundle;
import android.widget.Button;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import de.mrapp.android.dialog.WizardDialog;

/* JADX INFO: loaded from: classes2.dex */
public interface WizardDialogDecorator {
    void addFragment(int i, Class<? extends Fragment> cls);

    void addFragment(int i, Class<? extends Fragment> cls, Bundle bundle);

    void addFragment(CharSequence charSequence, Class<? extends Fragment> cls);

    void addFragment(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle);

    void addFragment(Class<? extends Fragment> cls);

    void addFragment(Class<? extends Fragment> cls, Bundle bundle);

    void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener);

    void addWizardListener(WizardDialog.WizardListener wizardListener);

    void clearFragments();

    void enableSwipe(boolean z);

    void enableTabLayout(boolean z);

    Button getBackButton();

    CharSequence getBackButtonText();

    int getButtonBarDividerColor();

    int getButtonBarDividerMargin();

    int getButtonTextColor();

    Button getFinishButton();

    CharSequence getFinishButtonText();

    int getFragmentCount();

    Button getNextButton();

    CharSequence getNextButtonText();

    int getTabIndicatorColor();

    int getTabIndicatorHeight();

    TabLayout getTabLayout();

    WizardDialog.TabPosition getTabPosition();

    int getTabSelectedTextColor();

    int getTabTextColor();

    ViewPager getViewPager();

    int indexOfFragment(Class<? extends Fragment> cls);

    boolean isButtonBarDividerShown();

    boolean isButtonBarShown();

    boolean isSwipeEnabled();

    boolean isTabLayoutEnabled();

    boolean isTabLayoutShown();

    void removeFragment(int i);

    void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener);

    void removeWizardListener(WizardDialog.WizardListener wizardListener);

    void setBackButtonText(int i);

    void setBackButtonText(CharSequence charSequence);

    void setButtonBarDividerColor(int i);

    void setButtonBarDividerMargin(int i);

    void setButtonTextColor(int i);

    void setFinishButtonText(int i);

    void setFinishButtonText(CharSequence charSequence);

    void setNextButtonText(int i);

    void setNextButtonText(CharSequence charSequence);

    void setTabIndicatorColor(int i);

    void setTabIndicatorHeight(int i);

    void setTabPosition(WizardDialog.TabPosition tabPosition);

    void setTabSelectedTextColor(int i);

    void setTabTextColor(int i);

    void showButtonBar(boolean z);

    void showButtonBarDivider(boolean z);

    void showTabLayout(boolean z);
}
