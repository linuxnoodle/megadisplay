package de.mrapp.android.dialog.decorator;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.WizardDialog;
import de.mrapp.android.dialog.adapter.ViewPagerAdapter;
import de.mrapp.android.dialog.datastructure.ViewPagerItem;
import de.mrapp.android.dialog.model.MaterialDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class WizardDialogDecorator extends AbstractDialogFragmentDecorator<WizardDialog> implements de.mrapp.android.dialog.model.WizardDialogDecorator, ViewPager.OnPageChangeListener {
    private static final String BACK_BUTTON_TEXT_EXTRA = "WizardDialogDecorator::backButtonText";
    private static final String BUTTON_BAR_DIVIDER_COLOR_EXTRA = "WizardDialogDecorator::buttonBarDividerColor";
    private static final String BUTTON_BAR_DIVIDER_MARGIN_EXTRA = "WizardDialogDecorator::buttonBarDividerMargin";
    private static final String BUTTON_BAR_SHOWN_EXTRA = "WizardDialogDecorator::buttonBarShown";
    private static final String BUTTON_TEXT_COLOR_EXTRA = "WizardDialogDecorator::buttonTextColor";
    private static final String FINISH_BUTTON_TEXT_EXTRA = "WizardDialogDecorator::finishButtonText";
    private static final String NEXT_BUTTON_TEXT_EXTRA = "WizardDialogDecorator::nextButtonText";
    private static final String SHOW_BUTTON_BAR_DIVIDER_EXTRA = "WizardDialogDecorator::showButtonBarDivider";
    private static final String SWIPE_ENABLED_EXTRA = "WizardDialogDecorator::swipeEnabled";
    private static final String TAB_INDICATOR_COLOR_EXTRA = "WizardDialogDecorator::tabIndicatorColor";
    private static final String TAB_INDICATOR_HEIGHT_EXTRA = "WizardDialogDecorator::tabIndicatorHeight";
    private static final String TAB_LAYOUT_ENABLED_EXTRA = "WizardDialogDecorator::tabLayoutEnabled";
    private static final String TAB_LAYOUT_SHOWN_EXTRA = "WizardDialogDecorator::tabLayoutShown";
    private static final String TAB_POSITION_EXTRA = "WizardDialogDecorator::tabPosition";
    private static final String TAB_SELECTED_TEXT_COLOR_EXTRA = "WizardDialogDecorator::tabSelectedTextColor";
    private static final String TAB_TEXT_COLOR_EXTRA = "WizardDialogDecorator::tabTextColor";
    private static final String VIEW_PAGER_ITEMS_EXTRA = "WizardDialogDecorator::viewPagerItems";
    private Button backButton;
    private CharSequence backButtonText;
    private ViewGroup buttonBarContainer;
    private View buttonBarDivider;
    private int buttonBarDividerColor;
    private int buttonBarDividerMargin;
    private boolean buttonBarShown;
    private int buttonTextColor;
    private Button finishButton;
    private CharSequence finishButtonText;
    private Button nextButton;
    private CharSequence nextButtonText;
    private final ListenerList<ViewPager.OnPageChangeListener> onPageChangeListeners;
    private boolean showButtonBarDivider;
    private boolean swipeEnabled;
    private int tabIndicatorColor;
    private int tabIndicatorHeight;
    private TabLayout tabLayout;
    private boolean tabLayoutEnabled;
    private boolean tabLayoutShown;
    private WizardDialog.TabPosition tabPosition;
    private int tabSelectedTextColor;
    private int tabTextColor;
    private de.mrapp.android.dialog.view.ViewPager viewPager;
    private ViewPagerAdapter viewPagerAdapter;
    private final ArrayList<ViewPagerItem> viewPagerItems;
    private final ListenerList<WizardDialog.WizardListener> wizardListeners;

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, FragmentManager fragmentManager) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, fragmentManager);
    }

    private void reInflateTabLayout() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            View viewFindViewById = rootView.findViewById(R.id.header_content_container);
            View viewFindViewById2 = rootView.findViewById(R.id.content_container);
            if (viewFindViewById == null || viewFindViewById2 == null) {
                return;
            }
            inflateTabLayout(viewFindViewById, viewFindViewById2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void inflateTabLayout(View view, View view2) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.header_content_container);
        ViewGroup viewGroup2 = (ViewGroup) view2.findViewById(R.id.content_container);
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            viewGroup.removeViewInLayout(tabLayout);
            viewGroup2.removeView(this.tabLayout);
            this.tabLayout = null;
        }
        if (((WizardDialog) getDialog()).isHeaderShown() && getTabPosition() != WizardDialog.TabPosition.NO_HEADER && ((TextUtils.isEmpty(((WizardDialog) getDialog()).getTitle()) && TextUtils.isEmpty(((WizardDialog) getDialog()).getMessage())) || getTabPosition() == WizardDialog.TabPosition.PREFER_HEADER)) {
            this.tabLayout = (TabLayout) layoutInflaterFrom.inflate(R.layout.wizard_dialog_tab_layout, viewGroup, false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            viewGroup.addView(this.tabLayout, layoutParams);
        } else {
            TabLayout tabLayout2 = (TabLayout) layoutInflaterFrom.inflate(R.layout.wizard_dialog_tab_layout, viewGroup2, false);
            this.tabLayout = tabLayout2;
            viewGroup2.addView(tabLayout2, 0);
        }
        this.tabLayout.setupWithViewPager(this.viewPager);
    }

    private View inflateButtonBar() {
        DialogRootView rootView = getRootView();
        if (rootView == null) {
            return null;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.button_bar_container, (ViewGroup) rootView, false);
        this.buttonBarContainer = viewGroup;
        this.buttonBarDivider = viewGroup.findViewById(R.id.button_bar_divider);
        rootView.addView(this.buttonBarContainer);
        View viewInflate = layoutInflaterFrom.inflate(R.layout.horizontal_button_bar, this.buttonBarContainer, false);
        this.buttonBarContainer.addView(viewInflate);
        this.nextButton = (Button) viewInflate.findViewById(android.R.id.button1);
        this.finishButton = (Button) viewInflate.findViewById(android.R.id.button2);
        this.backButton = (Button) viewInflate.findViewById(android.R.id.button3);
        return this.buttonBarContainer;
    }

    private void adaptTabLayout() {
        adaptTabLayoutEnableState();
        adaptTabLayoutVisibility();
        adaptTabIndicatorHeight();
        adaptTabIndicatorColor();
        adaptTabTextColor();
    }

    private void adaptTabLayoutEnableState() {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            LinearLayout linearLayout = (LinearLayout) tabLayout.getChildAt(0);
            linearLayout.setEnabled(this.tabLayoutEnabled);
            for (int i = 0; i < linearLayout.getChildCount(); i++) {
                linearLayout.getChildAt(i).setEnabled(this.tabLayoutEnabled);
            }
        }
    }

    private void adaptTabLayoutVisibility() {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            tabLayout.setVisibility(this.tabLayoutShown ? 0 : 8);
        }
    }

    private void adaptTabIndicatorHeight() {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            tabLayout.setSelectedTabIndicatorHeight(this.tabIndicatorHeight);
        }
    }

    private void adaptTabIndicatorColor() {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            tabLayout.setSelectedTabIndicatorColor(this.tabIndicatorColor);
        }
    }

    private void adaptTabTextColor() {
        TabLayout tabLayout = this.tabLayout;
        if (tabLayout != null) {
            tabLayout.setTabTextColors(this.tabTextColor, this.tabSelectedTextColor);
        }
    }

    private void adaptViewPager() {
        de.mrapp.android.dialog.view.ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.enableSwipe(this.swipeEnabled);
        }
    }

    private void adaptButtonTextColor() {
        Button button = this.backButton;
        if (button != null) {
            button.setTextColor(this.buttonTextColor);
        }
        Button button2 = this.nextButton;
        if (button2 != null) {
            button2.setTextColor(this.buttonTextColor);
        }
        Button button3 = this.finishButton;
        if (button3 != null) {
            button3.setTextColor(this.buttonTextColor);
        }
    }

    private void adaptBackButton() {
        Button button = this.backButton;
        if (button != null) {
            button.setText(this.backButtonText.toString().toUpperCase(Locale.getDefault()));
            this.backButton.setOnClickListener(createBackButtonListener());
        }
    }

    private View.OnClickListener createBackButtonListener() {
        return new View.OnClickListener() { // from class: de.mrapp.android.dialog.decorator.WizardDialogDecorator.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int currentItem = WizardDialogDecorator.this.viewPager.getCurrentItem();
                if (WizardDialogDecorator.this.notifyOnPrevious(currentItem)) {
                    WizardDialogDecorator.this.viewPager.setCurrentItem(currentItem - 1);
                }
            }
        };
    }

    private void adaptNextButton() {
        Button button = this.nextButton;
        if (button != null) {
            button.setText(this.nextButtonText.toString().toUpperCase(Locale.getDefault()));
            this.nextButton.setOnClickListener(createNextButtonListener());
        }
    }

    private View.OnClickListener createNextButtonListener() {
        return new View.OnClickListener() { // from class: de.mrapp.android.dialog.decorator.WizardDialogDecorator.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int currentItem = WizardDialogDecorator.this.viewPager.getCurrentItem();
                if (WizardDialogDecorator.this.notifyOnNext(currentItem)) {
                    WizardDialogDecorator.this.viewPager.setCurrentItem(currentItem + 1);
                }
            }
        };
    }

    private void adaptFinishButton() {
        Button button = this.finishButton;
        if (button != null) {
            button.setText(this.finishButtonText.toString().toUpperCase(Locale.getDefault()));
            this.finishButton.setOnClickListener(createFinishButtonListener());
        }
    }

    private View.OnClickListener createFinishButtonListener() {
        return new View.OnClickListener() { // from class: de.mrapp.android.dialog.decorator.WizardDialogDecorator.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WizardDialogDecorator.this.notifyOnFinish(WizardDialogDecorator.this.viewPager.getCurrentItem())) {
                    ((WizardDialog) WizardDialogDecorator.this.getDialog()).dismiss();
                }
            }
        };
    }

    private void adaptButtonBarVisibility() {
        ViewGroup viewGroup = this.buttonBarContainer;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.buttonBarShown ? 0 : 8);
        }
    }

    private void adaptButtonBarDividerVisibility() {
        View view = this.buttonBarDivider;
        if (view != null) {
            view.setVisibility(this.showButtonBarDivider ? 0 : 8);
        }
    }

    private void adaptButtonBarDividerColor() {
        View view = this.buttonBarDivider;
        if (view != null) {
            view.setBackgroundColor(this.buttonBarDividerColor);
        }
    }

    private void adaptButtonBarDividerMargin() {
        View view = this.buttonBarDivider;
        if (view != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.leftMargin = this.buttonBarDividerMargin;
            layoutParams.rightMargin = this.buttonBarDividerMargin;
            this.buttonBarDivider.setLayoutParams(layoutParams);
        }
    }

    private void adaptButtonVisibility() {
        de.mrapp.android.dialog.view.ViewPager viewPager = this.viewPager;
        if (viewPager == null || this.viewPagerAdapter == null || this.backButton == null || this.nextButton == null || this.finishButton == null) {
            return;
        }
        int currentItem = viewPager.getCurrentItem();
        this.backButton.setVisibility(currentItem > 0 ? 0 : 8);
        this.nextButton.setVisibility(currentItem < this.viewPagerAdapter.getCount() + (-1) ? 0 : 8);
        this.finishButton.setVisibility(currentItem != this.viewPagerAdapter.getCount() + (-1) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnNext(int i) {
        Iterator<WizardDialog.WizardListener> it = this.wizardListeners.iterator();
        boolean zOnNext = true;
        while (it.hasNext()) {
            zOnNext &= it.next().onNext(i, this.viewPagerAdapter.getItem(i));
        }
        return zOnNext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnPrevious(int i) {
        Iterator<WizardDialog.WizardListener> it = this.wizardListeners.iterator();
        boolean zOnPrevious = true;
        while (it.hasNext()) {
            zOnPrevious &= it.next().onPrevious(i, this.viewPagerAdapter.getItem(i));
        }
        return zOnPrevious;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyOnFinish(int i) {
        Iterator<WizardDialog.WizardListener> it = this.wizardListeners.iterator();
        boolean zOnFinish = true;
        while (it.hasNext()) {
            zOnFinish &= it.next().onFinish(i, this.viewPagerAdapter.getItem(i));
        }
        return zOnFinish;
    }

    public WizardDialogDecorator(WizardDialog wizardDialog) {
        super(wizardDialog);
        this.viewPagerItems = new ArrayList<>();
        this.wizardListeners = new ListenerList<>();
        this.onPageChangeListeners = new ListenerList<>();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final de.mrapp.android.dialog.view.ViewPager getViewPager() {
        return this.viewPager;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final TabLayout getTabLayout() {
        return this.tabLayout;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getBackButton() {
        return this.backButton;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getNextButton() {
        return this.nextButton;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final Button getFinishButton() {
        return this.finishButton;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(Class<? extends Fragment> cls) {
        addFragment(cls, (Bundle) null);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(Class<? extends Fragment> cls, Bundle bundle) {
        addFragment((CharSequence) null, cls, bundle);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(int i, Class<? extends Fragment> cls) {
        addFragment(i, cls, (Bundle) null);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(int i, Class<? extends Fragment> cls, Bundle bundle) {
        addFragment(getContext().getText(i), cls, bundle);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(CharSequence charSequence, Class<? extends Fragment> cls) {
        addFragment(charSequence, cls, (Bundle) null);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addFragment(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        Condition.INSTANCE.ensureNotNull(cls, "The fragment class may not be null");
        this.viewPagerItems.add(new ViewPagerItem(charSequence, cls, bundle));
        ViewPagerAdapter viewPagerAdapter = this.viewPagerAdapter;
        if (viewPagerAdapter != null) {
            viewPagerAdapter.addItem(charSequence, cls, bundle);
        }
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeFragment(int i) {
        this.viewPagerItems.remove(i);
        ViewPagerAdapter viewPagerAdapter = this.viewPagerAdapter;
        if (viewPagerAdapter != null) {
            viewPagerAdapter.removeItem(i);
        }
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void clearFragments() {
        this.viewPagerItems.clear();
        ViewPagerAdapter viewPagerAdapter = this.viewPagerAdapter;
        if (viewPagerAdapter != null) {
            viewPagerAdapter.clear();
        }
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int indexOfFragment(Class<? extends Fragment> cls) {
        Condition.INSTANCE.ensureNotNull(cls, "The fragment class may not be null");
        for (int i = 0; i < this.viewPagerItems.size(); i++) {
            if (this.viewPagerItems.get(i).getFragmentClass().equals(cls)) {
                return i;
            }
        }
        return -1;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getFragmentCount() {
        return this.viewPagerItems.size();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final WizardDialog.TabPosition getTabPosition() {
        return this.tabPosition;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabPosition(WizardDialog.TabPosition tabPosition) {
        Condition.INSTANCE.ensureNotNull(tabPosition, "The tab position may not be null");
        this.tabPosition = tabPosition;
        reInflateTabLayout();
        adaptTabLayout();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isTabLayoutEnabled() {
        return this.tabLayoutEnabled;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void enableTabLayout(boolean z) {
        this.tabLayoutEnabled = z;
        adaptTabLayoutEnableState();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isTabLayoutShown() {
        return this.tabLayoutShown;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showTabLayout(boolean z) {
        this.tabLayoutShown = z;
        adaptTabLayoutVisibility();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabIndicatorHeight() {
        return this.tabIndicatorHeight;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabIndicatorHeight(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The height must be at least 1");
        this.tabIndicatorHeight = i;
        adaptTabIndicatorHeight();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabIndicatorColor() {
        return this.tabIndicatorColor;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabIndicatorColor(int i) {
        this.tabIndicatorColor = i;
        adaptTabIndicatorColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabTextColor() {
        return this.tabTextColor;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabTextColor(int i) {
        this.tabTextColor = i;
        adaptTabTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getTabSelectedTextColor() {
        return this.tabSelectedTextColor;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setTabSelectedTextColor(int i) {
        this.tabSelectedTextColor = i;
        adaptTabTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isSwipeEnabled() {
        return this.swipeEnabled;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void enableSwipe(boolean z) {
        this.swipeEnabled = z;
        adaptViewPager();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isButtonBarShown() {
        return this.buttonBarShown;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showButtonBar(boolean z) {
        this.buttonBarShown = z;
        adaptButtonBarVisibility();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonTextColor() {
        return this.buttonTextColor;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonTextColor(int i) {
        this.buttonTextColor = i;
        adaptButtonTextColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final boolean isButtonBarDividerShown() {
        return this.showButtonBarDivider;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void showButtonBarDivider(boolean z) {
        this.showButtonBarDivider = z;
        adaptButtonBarDividerVisibility();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonBarDividerColor() {
        return this.buttonBarDividerColor;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonBarDividerColor(int i) {
        this.buttonBarDividerColor = i;
        adaptButtonBarDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final int getButtonBarDividerMargin() {
        return this.buttonBarDividerMargin;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setButtonBarDividerMargin(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The margin must be at least 0");
        this.buttonBarDividerMargin = i;
        adaptButtonBarDividerMargin();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getBackButtonText() {
        return this.backButtonText;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setBackButtonText(int i) {
        setBackButtonText(getContext().getText(i));
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setBackButtonText(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The text may not be empty");
        this.backButtonText = charSequence;
        adaptBackButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getNextButtonText() {
        return this.nextButtonText;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setNextButtonText(int i) {
        setNextButtonText(getContext().getText(i));
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setNextButtonText(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The text may not be empty");
        this.nextButtonText = charSequence;
        adaptNextButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final CharSequence getFinishButtonText() {
        return this.finishButtonText;
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setFinishButtonText(int i) {
        setFinishButtonText(getContext().getText(i));
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void setFinishButtonText(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The text may not be empty");
        this.finishButtonText = charSequence;
        adaptFinishButton();
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addWizardListener(WizardDialog.WizardListener wizardListener) {
        Condition.INSTANCE.ensureNotNull(wizardListener, "The listener may not be null");
        this.wizardListeners.add(wizardListener);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeWizardListener(WizardDialog.WizardListener wizardListener) {
        Condition.INSTANCE.ensureNotNull(wizardListener, "The listener may not be null");
        this.wizardListeners.remove(wizardListener);
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        Condition.INSTANCE.ensureNotNull(onPageChangeListener, "The listener may not be null");
        this.onPageChangeListeners.add(onPageChangeListener);
        de.mrapp.android.dialog.view.ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(onPageChangeListener);
        }
    }

    @Override // de.mrapp.android.dialog.model.WizardDialogDecorator
    public final void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        Condition.INSTANCE.ensureNotNull(onPageChangeListener, "The listener may not be null");
        this.onPageChangeListeners.remove(onPageChangeListener);
        de.mrapp.android.dialog.view.ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.removeOnPageChangeListener(onPageChangeListener);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        adaptButtonVisibility();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(TAB_POSITION_EXTRA, getTabPosition().getValue());
        bundle.putBoolean(TAB_LAYOUT_ENABLED_EXTRA, isTabLayoutEnabled());
        bundle.putBoolean(TAB_LAYOUT_SHOWN_EXTRA, isTabLayoutShown());
        bundle.putInt(TAB_INDICATOR_HEIGHT_EXTRA, getTabIndicatorHeight());
        bundle.putInt(TAB_INDICATOR_COLOR_EXTRA, getTabIndicatorColor());
        bundle.putInt(TAB_TEXT_COLOR_EXTRA, getTabTextColor());
        bundle.putInt(TAB_SELECTED_TEXT_COLOR_EXTRA, getTabSelectedTextColor());
        bundle.putBoolean(SWIPE_ENABLED_EXTRA, isSwipeEnabled());
        bundle.putBoolean(BUTTON_BAR_SHOWN_EXTRA, isButtonBarShown());
        bundle.putInt(BUTTON_TEXT_COLOR_EXTRA, getButtonTextColor());
        bundle.putBoolean(SHOW_BUTTON_BAR_DIVIDER_EXTRA, isButtonBarDividerShown());
        bundle.putInt(BUTTON_BAR_DIVIDER_COLOR_EXTRA, getButtonBarDividerColor());
        bundle.putInt(BUTTON_BAR_DIVIDER_MARGIN_EXTRA, getButtonBarDividerMargin());
        bundle.putCharSequence(BACK_BUTTON_TEXT_EXTRA, getBackButtonText());
        bundle.putCharSequence(NEXT_BUTTON_TEXT_EXTRA, getNextButtonText());
        bundle.putCharSequence(FINISH_BUTTON_TEXT_EXTRA, getFinishButtonText());
        bundle.putParcelableArrayList(VIEW_PAGER_ITEMS_EXTRA, ((WizardDialog) getDialog()).getRetainInstance() ? null : this.viewPagerItems);
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        setTabPosition(WizardDialog.TabPosition.fromValue(bundle.getInt(TAB_POSITION_EXTRA)));
        enableTabLayout(bundle.getBoolean(TAB_LAYOUT_ENABLED_EXTRA));
        showTabLayout(bundle.getBoolean(TAB_LAYOUT_SHOWN_EXTRA));
        setTabIndicatorHeight(bundle.getInt(TAB_INDICATOR_HEIGHT_EXTRA));
        setTabIndicatorColor(bundle.getInt(TAB_INDICATOR_COLOR_EXTRA));
        setTabTextColor(bundle.getInt(TAB_TEXT_COLOR_EXTRA));
        setTabSelectedTextColor(bundle.getInt(TAB_SELECTED_TEXT_COLOR_EXTRA));
        enableSwipe(bundle.getBoolean(SWIPE_ENABLED_EXTRA));
        showButtonBar(bundle.getBoolean(BUTTON_BAR_SHOWN_EXTRA));
        setButtonTextColor(bundle.getInt(BUTTON_TEXT_COLOR_EXTRA));
        showButtonBarDivider(bundle.getBoolean(SHOW_BUTTON_BAR_DIVIDER_EXTRA));
        setButtonBarDividerColor(bundle.getInt(BUTTON_BAR_DIVIDER_COLOR_EXTRA));
        setButtonBarDividerMargin(bundle.getInt(BUTTON_BAR_DIVIDER_MARGIN_EXTRA));
        CharSequence charSequence = bundle.getCharSequence(BACK_BUTTON_TEXT_EXTRA);
        CharSequence charSequence2 = bundle.getCharSequence(NEXT_BUTTON_TEXT_EXTRA);
        CharSequence charSequence3 = bundle.getCharSequence(FINISH_BUTTON_TEXT_EXTRA);
        if (!TextUtils.isEmpty(charSequence)) {
            setBackButtonText(charSequence);
        }
        if (!TextUtils.isEmpty(charSequence2)) {
            setNextButtonText(charSequence2);
        }
        if (!TextUtils.isEmpty(charSequence3)) {
            setFinishButtonText(charSequence3);
        }
        ArrayList<ViewPagerItem> parcelableArrayList = bundle.getParcelableArrayList(VIEW_PAGER_ITEMS_EXTRA);
        if (parcelableArrayList != null) {
            for (ViewPagerItem viewPagerItem : parcelableArrayList) {
                addFragment(viewPagerItem.getTitle(), viewPagerItem.getFragmentClass(), viewPagerItem.getArguments());
            }
        }
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, FragmentManager fragmentManager) {
        View viewInflateButtonBar;
        View view2 = map.get(new DialogRootView.AreaViewType(ScrollableArea.Area.HEADER));
        View view3 = map.get(new DialogRootView.AreaViewType(ScrollableArea.Area.CONTENT));
        if (view2 != null && view3 != null) {
            View viewFindViewById = view3.findViewById(R.id.view_pager);
            if ((viewFindViewById instanceof de.mrapp.android.dialog.view.ViewPager) && (viewInflateButtonBar = inflateButtonBar()) != null) {
                de.mrapp.android.dialog.view.ViewPager viewPager = (de.mrapp.android.dialog.view.ViewPager) viewFindViewById;
                this.viewPager = viewPager;
                viewPager.setDialog((MaterialDialog) getDialog());
                this.viewPager.addOnPageChangeListener(this);
                this.viewPagerAdapter = new ViewPagerAdapter(getContext(), fragmentManager, this.viewPagerItems);
                Iterator<ViewPager.OnPageChangeListener> it = this.onPageChangeListeners.iterator();
                while (it.hasNext()) {
                    this.viewPager.addOnPageChangeListener(it.next());
                }
                this.viewPager.setAdapter(this.viewPagerAdapter);
                inflateTabLayout(view2, view3);
                adaptTabLayout();
                adaptViewPager();
                adaptButtonTextColor();
                adaptBackButton();
                adaptNextButton();
                adaptFinishButton();
                adaptButtonBarVisibility();
                adaptButtonBarDividerVisibility();
                adaptButtonBarDividerColor();
                adaptButtonBarDividerMargin();
                adaptButtonVisibility();
                HashMap map2 = new HashMap();
                map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.BUTTON_BAR), viewInflateButtonBar);
                return map2;
            }
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
        this.tabLayout = null;
        this.viewPager = null;
        this.viewPagerAdapter = null;
        this.backButton = null;
        this.nextButton = null;
        this.finishButton = null;
        this.buttonBarDivider = null;
    }
}
